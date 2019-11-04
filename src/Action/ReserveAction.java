package Action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import Service.UserService;
import project_entity.Order;
import project_entity.User;
import project_service.OrderService;

public class ReserveAction extends ActionSupport{
	
	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	private String idCard;
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String Reserve() throws Exception{
		
		String name = ServletActionContext.getRequest().getParameter("name");
		String rid = ServletActionContext.getRequest().getParameter("rid");
		String IDCard = ServletActionContext.getRequest().getParameter("IDCard");
		String Tel = ServletActionContext.getRequest().getParameter("Tel");
		String StartDate = ServletActionContext.getRequest().getParameter("StartDate");
		String EndDate = ServletActionContext.getRequest().getParameter("EndDate");
		String money = ServletActionContext.getRequest().getParameter("money");
		
		setIdCard(IDCard);
		userService.AddReserve(name, rid, IDCard, Tel, StartDate, EndDate, money);
		return "reserve";		
	}
	
	public String Find() throws Exception
	{
		String idCard = ServletActionContext.getRequest().getParameter("idCard");
		
		System.out.println("身份证"+idCard);
		Order order = userService.find(idCard);
		
		ServletActionContext.getRequest().getSession().setAttribute("order", order);
		
		
		return "find";
	}
	
	public String Cancel()	throws Exception
	{
		String id = ServletActionContext.getRequest().getParameter("oid");
		
		userService.Cancel(id);
		
		ServletActionContext.getRequest().getSession().removeAttribute("order");
		
		return "delete";
	}
}
