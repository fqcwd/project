package project_dao;

import java.util.Date;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.HibernateTemplate;
import project_entity.Room;

public class RoomDao {
	
	private HibernateTemplate hibernateTemplate;
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	public boolean Add(String name,Integer roomId,Integer pNum,String type,Double area,Double money,Integer bNum)
	{
		String hql = "from Room where roomID = ?";
		List<Room> list = (List<Room>) hibernateTemplate.find(hql, roomId);
		
		if (list.size() != 0)
		{
			return false;
		}else
		{
			Room room = new Room();
			
			room.setRname(name);
			room.setRoomID(roomId);
			room.setNumber(bNum);
			room.setStatus(0);
			room.setType(type);
			room.setMoney(money);
			room.setArea(area);
			room.setBedNum(bNum);
			
			hibernateTemplate.save(room);
			
			return true;
		}
	}
	
	public void Update(Integer roomId,String name,Integer pNum,String type,Integer status,Double area,Double money,Integer bNum)
	{
		
		String hql = "from Room where roomID = ?";
		Room room = (Room) hibernateTemplate.find(hql, roomId).get(0);
		
		room.setRname(name);
		room.setNumber(pNum);
		room.setStatus(status);
		room.setType(type);
		room.setArea(area);
		room.setMoney(money);
		room.setBedNum(bNum);
		
		hibernateTemplate.saveOrUpdate(room);
	}
	
	public void Delete(Integer roomId)
	{
		String hql = "from Room where roomID = ?";
		Room room = (Room) hibernateTemplate.find(hql, roomId).get(0);
		
		hibernateTemplate.delete(room);
	}
	
	public List<Room> selectAll()
	{
		String hql = "from user";
		List<Room> list = (List<Room>) hibernateTemplate.find(hql);
		
		return list;
	}
	//查询记录数
	@SuppressWarnings("all")
	public int findCount() {
		//调用hibernateTemplate里面的find方法实现
		List<Object> list = (List<Object>) hibernateTemplate.find("select count(*) from Room");
		//从list中把值得到
		if(list != null && list.size()!=0) {
			Object obj = list.get(0);
			//变成int类型
			Long lobj = (Long) obj;
			int count = lobj.intValue();
			return count;
		}
		return 0;
	}
	//分页查询
	public  List<Room> findPage(int begin, int pageSize)
	{
		DetachedCriteria criteria = DetachedCriteria.forClass(Room.class);
		
		List<Room> list = 
				(List<Room>) hibernateTemplate.findByCriteria(criteria, begin, pageSize);
		
		return list;
	}
}
