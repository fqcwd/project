package project_dao;

import java.util.Date;
import java.util.List;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.HibernateTemplate;

import project_entity.Admin;
import project_entity.User;

public class UserDao {

	private HibernateTemplate hibernateTemplate;
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	public boolean Add(String VIPName,String VIPSex,String password,String IdCard,String VIPphone,Integer VIPCredit,Integer VIPLevel,Date rDate)
	{
		String hql = "from User where idCard = ?";
		List<User> list = (List<User>) hibernateTemplate.find(hql, IdCard);
		
		if(list.size() != 0)
		{
			return false;
		}else
		{
			User user = new User();
			user.setName(VIPName);
			user.setUsex(VIPSex);
			user.setIdCard(IdCard);
			user.setPhone(VIPphone);
			user.setCredit(VIPCredit);
			user.setLogin("" + (Integer.parseInt(IdCard.substring(2, 5))+234) + (Integer.parseInt(IdCard.substring(0,2)+123)));
			user.setVIPLevel(VIPLevel);
			user.setrDate(rDate);
			user.setPassword(password);
			
			hibernateTemplate.save(user);
			
			return true;
		}
	
	}
	
	//登录验证顾客
	public boolean CheckUser(String login,String password)
	{
		User u=new  User();      
		u.setLogin(login);
	  	u.setPassword(password);

		List<User> list = (List<User>) hibernateTemplate.findByExample(u);
		
		if(list.size() == 0)
		{
			return false;
		}else
		{
			return true;
		}
	}
	
	//登录验证管理员
	public boolean CheckAdmin(String login,String password)
	{
		Admin a = new Admin();     
		a.setLogin(login);
	  	a.setPassword(password);

		List<Admin> list = (List<Admin>) hibernateTemplate.findByExample(a);
		
		if(list.size() == 0)
		{
			return false;
		}else
		{
			return true;
		}
	}
	
	//通过身份证获取账号
	public String getLogin(String idCard)
	{
		String hql = "from User where idCard = ?";
		User user = (User) hibernateTemplate.find(hql, idCard).get(0);
		
		return user.getLogin();
	}
	
	public void Update(String VIPName,String password,String IdCard,String VIPphone,Integer VIPCredit,Integer VIPLevel)
	{
		String hql = "from User where idCard = ?";
		User user = (User) hibernateTemplate.find(hql, IdCard).get(0);
		
		user.setName(VIPName);
		user.setPhone(VIPphone);
		user.setCredit(VIPCredit);
		user.setVIPLevel(VIPLevel);
		user.setPassword(password);
		
		hibernateTemplate.update(user);
		
	}
	
	public String Delete(String login)
	{
		String hql = "from User where login = ?";
		try {
			User user = (User) hibernateTemplate.find(hql, login).get(0);
			hibernateTemplate.delete(user);
			
			return "OK";
		}catch (Exception e)
		{
			return "error";
		}
		
	}
	
	public List<User> selectAll()
	{
		String hql = "from user";
		List<User> list = (List<User>) hibernateTemplate.find(hql);
		
		return list;
	}
	//查询记录数
	@SuppressWarnings("all")
	public int findCount() {
		//调用hibernateTemplate里面的find方法实现
		List<Object> list = (List<Object>) hibernateTemplate.find("select count(*) from User");
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
	public  List<User> findPage(int begin, int pageSize)
	{
		DetachedCriteria criteria = DetachedCriteria.forClass(User.class);
		
		List<User> list = 
				(List<User>) hibernateTemplate.findByCriteria(criteria, begin, pageSize);
		
		return list;
	}
	
	
	//通过user身份证查询到用户
	public User Select(String idCard)
	{
		String sql = "from User where idCard = ?";
		
		User user = (User) hibernateTemplate.find(sql, idCard).get(0);
		
		return user;
	}
	
	//通过user身份证查询到用户
	public User Select2(String login)
	{
		String sql = "from User where login = ?";

		User user = (User) hibernateTemplate.find(sql, login).get(0);

		return user;
	}
	
	//充值服务
	public void Invest(String login,Double money)
	{
		String hql = "from User where login = ?";
		
		User user = (User) hibernateTemplate.find(hql, login).get(0);
		
		user.setCredit(user.getCredit()+(int)(money/100));
		user.setVIPLevel(user.getVIPLevel()+(int)(money/1000));
		
		hibernateTemplate.update(user);
	}
}
