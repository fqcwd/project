package project_service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;
import project_dao.UserDao;
import project_entity.User;
import project_entity.UserPageBean;

@Transactional
public class UserService {

	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	//注册用户
	public boolean UserRegister(String VIPName,String VIPSex,String Password,String IdCard,String VIPphone,String VIPCredit,String VIPLevel,String rDate)
	{
		Integer VipCredit = Integer.parseInt(VIPCredit);
		Integer VipLevel = Integer.parseInt(VIPLevel);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			date = sdf.parse(rDate);
		} catch (ParseException e) {
			System.out.println("日期格式错误！");
		}
		return userDao.Add(VIPName, VIPSex, Password, IdCard, VIPphone, VipCredit, VipLevel, date);
		
	}
	
	//修改用户信息
	public void UserUpdate(String VIPName,String password,String IdCard,String VIPphone,String VIPCredit,String VIPLevel)
	{
		Integer credit = Integer.parseInt(VIPCredit);
		Integer level = Integer.parseInt(VIPLevel);
		
		userDao.Update(VIPName, password, IdCard, VIPphone, credit, level);
	}
	
	//删除用户
	public String UserDelete(String login)
	{
		return userDao.Delete(login);
	}
	
	//查询所有用户
	public List<User> SelectAll()
	{
		return userDao.selectAll();
	}
	
	//分页查询
	//封装分页数据到pagebean对象里面
	public UserPageBean listpage(Integer currentPage) {
		//创建PageBean对象
		UserPageBean pageBean = new UserPageBean();
		//当前页
		pageBean.setCurrentPage(currentPage);
		//总记录数
		int totalCount = userDao.findCount();
		pageBean.setTotalCount(totalCount);

		//每页显示记录数
		int pageSize = 10;

		//总页数
		//总记录数 除以 每页显示记录数
		//能够整除
		int totalPage = 0;
		if(totalCount%pageSize==0) {//整除
			totalPage = totalCount/pageSize;
		} else {
			totalPage = totalCount/pageSize+1;
		}
		pageBean.setTotalPage(totalPage);

		//开始位置
		int begin = (currentPage-1)*pageSize;
		
		//每页记录数
		if (currentPage == totalPage)
		{
			pageBean.setPageSize(totalCount-begin);
		}else
		{
			pageBean.setPageSize(pageSize);
		}

		//每页记录的list集合
		List<User> list = userDao.findPage(begin,pageSize);
		pageBean.setList(list);		

		return pageBean;
	}
}
