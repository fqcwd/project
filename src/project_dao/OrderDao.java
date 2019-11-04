package project_dao;

import java.util.Date;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.HibernateTemplate;

import project_entity.Order;
import project_entity.Room;

public class OrderDao {
	
	private HibernateTemplate hibernateTemplate;
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	//增加订单
	public String Add(String name,Integer rid,String idCard,String tel,Date sDate,Date eDate,Double sum)
	{
		String hql2 = "from Room where roomID = ?";
		Room room2 = null;
		
		try {
			room2 = (Room) hibernateTemplate.find(hql2, rid).get(0);
		}catch (Exception e)
		{
			return "error";
		}
		
		if (room2.getStatus() != 0)
		{
			return "false";
		}else
		{
			Order order = new Order();
			
			order.setUname(name);
			order.setRid(rid);
			order.setIdCard(idCard);
			order.setTel(tel);
			order.setsDate(sDate);
			order.seteDate(eDate);
			order.setSumMoney(sum);
		
			hibernateTemplate.save(order);
			
			String hql = "from Room where roomID = ?";
			Room room = (Room) hibernateTemplate.find(hql, rid).get(0);
			room.setStatus(1);
			
			hibernateTemplate.update(room);
			
			return "true";
		}
		
	}
	
	//删除订单
	public String Delete(Integer oid)
	{
		Order order = hibernateTemplate.get(Order.class, oid);
		
		String hql = "from Room where roomID = ?";
		
		try {
			Room room = (Room) hibernateTemplate.find(hql, order.getRid()).get(0);
			room.setStatus(0);
			
			hibernateTemplate.update(room);
			hibernateTemplate.delete(order);
			
			return "OK";
		}catch (Exception e)
		{
			return "error";
		}
		
	}
	
	//通过身份证号进行查询
	public Order find(String idCard)
	{
		String hql = "from Order where idCard = ?";
		Order order = (Order) hibernateTemplate.find(hql, idCard).get(0);
		
		return order;
	}
	
	//查询所有
	public List<Order> selectAll()
	{
		String hql = "from order";
		List<Order> list = (List<Order>) hibernateTemplate.find(hql);
		
		return list;
	}
	
	//查询记录数
	@SuppressWarnings("all")
	public int findCount() {
		//调用hibernateTemplate里面的find方法实现
		List<Object> list = (List<Object>) hibernateTemplate.find("select count(*) from Order");
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
	public List<Order> findPage(int begin, int pageSize)
	{
		DetachedCriteria criteria = DetachedCriteria.forClass(Order.class);
		
		List<Order> list = 
				(List<Order>) hibernateTemplate.findByCriteria(criteria, begin, pageSize);
		
		return list;
	}
}
