package Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.struts2.ServletActionContext;
import org.springframework.transaction.annotation.Transactional;

import project_dao.OrderDao;
import project_dao.UserDao;
import project_entity.Order;
import project_entity.User;

@Transactional
public class UserService {

	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	private OrderDao orderDao;
	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}
	
	//注册用户
	public void UserRegister(String name,String sex,String Password,String IdCard,String tel)
	{
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		Date date = new Date();
		
		System.out.println(123);
		System.out.println(sdf.format(date));
		
		userDao.Add(name, sex, Password, IdCard, tel, 0, 0, date);
	}
	
	//检查用户账号密码是否正确
	public boolean CheckUser(String login,String password)
	{
		return userDao.CheckUser(login, password);
	}
	
	//检查管理员密码是否正确
	public boolean CheckAdmin(String login,String password)
	{
		return userDao.CheckAdmin(login, password);
	}
	
	//用户添加订单
	public void AddReserve(String name,String rid,String idCard,String tel,String sDate,String eDate,String sum)
	{
		Integer id = Integer.parseInt(rid);
		Double money = Double.parseDouble(sum);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date sdate = null;
		Date edate = null;
		try {
			sdate = sdf.parse(sDate);
			edate = sdf.parse(eDate);
		} catch (ParseException e) {
			System.out.println(sDate);
			System.out.println("日期格式错误！");
		}
		String str = orderDao.Add(name, id, idCard, tel, sdate, edate, money);	
		System.out.println("123"+str);
	}
	
	//通过身份证号获取账号
	public String getLogin(String idCard)
	{
		return userDao.getLogin(idCard);
	}
	
	//通过身份证号查询订单
	public Order find(String idCard)
	{
		return orderDao.find(idCard);
	}
	
	//通过账号查询到用户
	public User Select()
	{
		String login = (String) ServletActionContext.getRequest().getSession().getAttribute("username");
		return userDao.Select2(login);
	}
	//充值服务
	public void Invest(String login,String money)
	{
		double price = Double.parseDouble(money);
		
		userDao.Invest(login, price);
	}
	//
	//取消订单
	public void Cancel(String oid)
	{
		Integer id = Integer.parseInt(oid);
		
		orderDao.Delete(id);
	}
}
