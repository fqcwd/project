package project_dao;

import java.util.Date;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate5.HibernateTemplate;

import project_entity.Live;
import project_entity.Pay;
import project_entity.Room;
import project_entity.User;

public class LiveDao {
	
	private HibernateTemplate hibernateTemplate;
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	//添加入住信息
	public String Add(String name,Integer rid,String idCard,String tel,Date sDate,Date eDate,Double sum)
	{
		String hql3 = "from Room where roomID = ?";
		Room room3 = null;
		
		try {
			room3 = (Room) hibernateTemplate.find(hql3, rid).get(0);
		}catch (Exception e)
		{
			return "error";
		}
		
		if (room3.getStatus() != 0)
		{
			return "false";
		}else
		{
			//添加入住信息
			Live live = new Live();
			
			live.setUname(name);
			live.setRid(rid);
			live.setIdCard(idCard);
			live.setTel(tel);
			live.setsDate(sDate);
			live.seteDate(eDate);
			live.setSumMoney(sum);
			
			
			//添加消费记录
			Pay pay = new Pay();
			
			pay.setUname(name);
			pay.setRid(rid);
			pay.setIdCard(idCard);
			pay.setTel(tel);
			pay.setsDate(sDate);
			pay.seteDate(eDate);
			pay.setSumMoney(sum);
		
			hibernateTemplate.save(live);
			hibernateTemplate.save(pay);
			
			//设置房间状态为1
			String hql = "from Room where roomID = ?";
			Room room = (Room) hibernateTemplate.find(hql, rid).get(0);
			room.setStatus(1);
			System.out.println("room"+room.getRname());
			
			hibernateTemplate.update(room);
			
			//设置用户积分和VIP等级
			String hql2 = "from User where idCard = ?";
			User user = null;
			try {
				
				user = (User) hibernateTemplate.find(hql2, idCard).get(0);
			}catch (Exception e)
			{
				return "noexist";
			}
			
			if (user.getVIPLevel() != 0)	
			{
				user.setCredit(user.getCredit()+(int)(sum/100));
				user.setVIPLevel(user.getVIPLevel()+(int)(sum/1000));
			}
			hibernateTemplate.update(user);
		
			return "true";
		}
		
	}
	
	//修改入住信息
	public void Update(Integer rid,String idCard,String tel,Date eDate,Double sum)
	{
		String hql = "from Live where idCard = ?";
		Live live = (Live) hibernateTemplate.find(hql, idCard);
		
		live.setRid(rid);
		live.setTel(tel);
		live.seteDate(eDate);
		live.setSumMoney(sum);
		
		hibernateTemplate.update(live);
	}
	
	//删除入住信息
	public void Delete(Integer lid)
	{
		Live live = hibernateTemplate.get(Live.class, lid);
		
		String hql = "from Room where roomID = ?";
		
		Room room = (Room) hibernateTemplate.find(hql, live.getRid()).get(0);
		room.setStatus(0);
		
		hibernateTemplate.update(room);
		hibernateTemplate.delete(live);
	}
	
	public String Cancel(Integer rid)
	{
		
		try {
			String hql2 = "from Room where roomID = ?";
			Room room = (Room) hibernateTemplate.find(hql2, rid).get(0);
			room.setStatus(0);
			hibernateTemplate.update(room);
		} catch (Exception e1) {

			return "error";
		}
				
		String hql = "from Live where rid = ?";
		
		try {
			
			Live live = (Live) hibernateTemplate.find(hql, rid).get(0);
			hibernateTemplate.delete(live);
		}catch (Exception e)
		{
			return "error";
		}
		
		return "OK";
	}
	
	//查询所有
	public List<Live> selectAll()
	{
		String hql = "from user";
		List<Live> list = (List<Live>) hibernateTemplate.find(hql);
		
		return list;
	}
	
	//查询入住信息记录数
	@SuppressWarnings("all")
	public int findCount() {
		//调用hibernateTemplate里面的find方法实现
		List<Object> list = (List<Object>) hibernateTemplate.find("select count(*) from Live");
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
	
	//查询消费记录数
	@SuppressWarnings("all")
	public int findCount2() {
		//调用hibernateTemplate里面的find方法实现
		List<Object> list = (List<Object>) hibernateTemplate.find("select count(*) from Pay");
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
	
	//分页查询入住信息
	public  List<Live> findPage(int begin, int pageSize)
	{
		DetachedCriteria criteria = DetachedCriteria.forClass(Live.class);
		
		List<Live> list = 
				(List<Live>) hibernateTemplate.findByCriteria(criteria, begin, pageSize);
		
		return list;
	}
	
	//分页查询消费记录
	public  List<Pay> findPage2(int begin, int pageSize)
	{
		DetachedCriteria criteria = DetachedCriteria.forClass(Pay.class);

		List<Pay> list = 
				(List<Pay>) hibernateTemplate.findByCriteria(criteria, begin, pageSize);

		return list;
	}
}
