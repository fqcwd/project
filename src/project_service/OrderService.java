package project_service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;
import project_dao.OrderDao;
import project_entity.Order;
import project_entity.OrderPageBean;
import project_entity.User;


@Transactional
public class OrderService {

	private OrderDao orderDao;
	public void setOrderDao(OrderDao orderDao) {
		this.orderDao = orderDao;
	}
	
	//添加订单
	public String OrderAdd(String name,String rid,String idCard,String tel,String sDate,String eDate,String sum)
	{
		Double sumMoney = Double.parseDouble(""+sum);
		Integer roomId = Integer.parseInt(rid);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date SDate = null;
		Date EDate = null;
		
		try {
			SDate = sdf.parse(sDate);
			EDate = sdf.parse(eDate);
		} catch (ParseException e) {
			System.out.println("日期格式错误");
		}
		
		return orderDao.Add(name,roomId, idCard, tel, SDate, EDate, sumMoney);
		
	}
	
	//取消订单
	public String OrderDelete(String oid)
	{
		Integer id = Integer.parseInt(oid);
		
		return orderDao.Delete(id);
	}
	
	//查询用户
	public List<Order> SelectAll()
	{
		return orderDao.selectAll();
	}
		
	//分页查询
	//封装分页数据到pagebean对象里面
	public OrderPageBean listpage(Integer currentPage) {
		//创建PageBean对象
		OrderPageBean pageBean = new OrderPageBean();
		//当前页
		pageBean.setCurrentPage(currentPage);
		//总记录数
		int totalCount = orderDao.findCount();
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
		List<Order> list = orderDao.findPage(begin,pageSize);
		pageBean.setList(list);		
				
		return pageBean;
	}
	
}
