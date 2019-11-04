package project_action;

import org.apache.struts2.ServletActionContext;

import project_entity.LivePageBean;
import project_entity.PayPageBean;
import project_service.LiveService;

public class LiveAction {

	private LiveService liveService;
	public void setliveService(LiveService liveService) {
		this.liveService = liveService;
	}
	
	//入住信息起始页
	private Integer currentPage = 1;
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	
	//消费记录起始页
	private Integer currentPage2 = 1;
	public Integer getCurrentPage2() {
		return currentPage2;
	}
	public void setCurrentPage2(Integer currentPage2) {
		this.currentPage2 = currentPage2;
	}
	
	public String Add() throws Exception {
		
		String name = ServletActionContext.getRequest().getParameter("VIPName");
		String rid = ServletActionContext.getRequest().getParameter("RoomId");
		String idCard = ServletActionContext.getRequest().getParameter("VIPIDCard");
		String tel = ServletActionContext.getRequest().getParameter("VIPPhone");
		String sDate = ServletActionContext.getRequest().getParameter("SDate");
		String eDate = ServletActionContext.getRequest().getParameter("EDate");
		String price = ServletActionContext.getRequest().getParameter("Price");
		
		String check = liveService.LiveAdd(name, rid, idCard, tel, sDate, eDate, price);
		
		if (check.equals("true"))
		{
			return "success";
			
		}else if(check.equals("false"))
		{
			return "tip2";
			
		}else if(check.equals("noexist"))
		{
			return "invalid";
		}else
		{
			return "error";
		}
		
	}
	
	public String Delete() throws Exception {
		
		String lid = ServletActionContext.getRequest().getParameter("lid");
		
		liveService.LiveDelete(lid);
		
		return "success";
	}
	
	public String Page() throws Exception
	{
		LivePageBean pageBean = liveService.listpage(currentPage);
		//放到域对象里面
		ServletActionContext.getRequest().setAttribute("livePageBean", pageBean);
		
		return "result";
	}
	
	public String Record() throws Exception
	{
		PayPageBean pageBean = liveService.listpage2(currentPage2);
		
		ServletActionContext.getRequest().setAttribute("payPageBean", pageBean);
		
		return "record";
	}
	
	//根据房间号退房
	public String Cancel() throws Exception
	{
		String rid = ServletActionContext.getRequest().getParameter("roomId");
		
		String check = liveService.Cancel(rid);
		
		if(check.equals("OK"))
		{
			return "cancel";
		}else
		{
			return "error";
		}
		
	}
}
