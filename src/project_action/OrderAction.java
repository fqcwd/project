package project_action;

import org.apache.struts2.ServletActionContext;

import project_entity.OrderPageBean;
import project_service.OrderService;

public class OrderAction {

	private OrderService orderService;
	public void setOrderService(OrderService orderService) {
		this.orderService = orderService;
	}
	
	private Integer currentPage = 1;
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	//添加订单
	public String Add() throws Exception
	{
		String name = ServletActionContext.getRequest().getParameter("Name");
		String rid = ServletActionContext.getRequest().getParameter("RoomId");
		String idCard = ServletActionContext.getRequest().getParameter("IDCard");
		String tel = ServletActionContext.getRequest().getParameter("Phone");
		String sDate = ServletActionContext.getRequest().getParameter("SDate");
		String eDate = ServletActionContext.getRequest().getParameter("EDate");
		String price = ServletActionContext.getRequest().getParameter("Price");
		
		String check = orderService.OrderAdd(name, rid, idCard, tel, sDate, eDate, price);
		
		if(check.equals("true"))
		{
			return "add";
		}else if(check.equals("false"))
		{
			return "tip2";
		}else
		{
			return "error";
		}
		
	}
	
	//删除订单
	public String Delete() throws Exception
	{
		String oid = ServletActionContext.getRequest().getParameter("oid");
		
		String check = orderService.OrderDelete(oid);
		
		
		if(check.equals("OK"))
		{
			return "delete";
		}else
		{
			return "error";
		}
		
	}
	
	//分页显示订单
	public String Page() throws Exception
	{
		OrderPageBean pageBean = orderService.listpage(currentPage);
		//放到域对象里面
		ServletActionContext.getRequest().setAttribute("orderPageBean", pageBean);
		
		return "result";
	}
}
