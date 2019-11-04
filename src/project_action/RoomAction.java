package project_action;

import org.apache.struts2.ServletActionContext;

import project_entity.RoomPageBean;
import project_service.RoomService;

public class RoomAction {

	private RoomService roomService;
	public void setRoomService(RoomService roomService) {
		this.roomService = roomService;
	}
	
	private Integer currentPage = 1;
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	
	//增加房间
	public String Register() throws Exception
	{
		String name = ServletActionContext.getRequest().getParameter("RoomName");
		String roomId = ServletActionContext.getRequest().getParameter("RoomId");
		String pNumber = ServletActionContext.getRequest().getParameter("PNumber");
		String area = ServletActionContext.getRequest().getParameter("Area");
		String money = ServletActionContext.getRequest().getParameter("Money");
		String type = ServletActionContext.getRequest().getParameter("type");
		String bNumber = ServletActionContext.getRequest().getParameter("BNumber");
		
		boolean check = roomService.RoomAdd(name,roomId,pNumber,type,area,money,bNumber);
		
		if (check == true)
		{
			return "register";
		}else
		{
			return "tip";
		}
		
	}
	
	//删除房间
	public String Cancel() throws Exception
	{
		//获取房间号
		String roomId = ServletActionContext.getRequest().getParameter("roomId");
				
		roomService.RoomDelete(roomId);
		
		return "cancel";
	}
	
	//修改房间信息
	public String Update() throws Exception
	{
		String name = ServletActionContext.getRequest().getParameter("RoomName");
		String roomId = ServletActionContext.getRequest().getParameter("RoomId");
		String pNumber = ServletActionContext.getRequest().getParameter("PNumber");
		String area = ServletActionContext.getRequest().getParameter("Area");
		String money = ServletActionContext.getRequest().getParameter("Money");
		String status = ServletActionContext.getRequest().getParameter("Status");
		String type = ServletActionContext.getRequest().getParameter("type");
		String bNumber = ServletActionContext.getRequest().getParameter("BNumber");
		
		roomService.RoomUpdate(roomId, name, pNumber, type, status, area, money, bNumber);
		
		return "update";
	}
	
	//分页显示房间
	public String Page() throws Exception
	{
		RoomPageBean pageBean = roomService.listpage(currentPage);
		//放到域对象里面
		ServletActionContext.getRequest().setAttribute("roomPageBean", pageBean);
		
		return "result";
	}
}
