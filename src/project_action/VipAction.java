package project_action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.util.ValueStack;

import project_entity.User;
import project_entity.UserPageBean;
import project_service.UserService;

public class VipAction {

	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	private Integer currentPage = 1;
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}

	public String Register() throws Exception
	{
		String VIPName = ServletActionContext.getRequest().getParameter("VIPName");
		String VIPSex = ServletActionContext.getRequest().getParameter("VIPSex");
		String IdCard = ServletActionContext.getRequest().getParameter("VIPIDCard");
		String VIPphone = ServletActionContext.getRequest().getParameter("VIPPhone");
		String VIPCredit = ServletActionContext.getRequest().getParameter("VIPCredit");
		String VIPLevel = ServletActionContext.getRequest().getParameter("VIPLevel");
		String VIPPassword = ServletActionContext.getRequest().getParameter("VIPPassword");
		String rDate = ServletActionContext.getRequest().getParameter("RDate");
		
		boolean check = userService.UserRegister(VIPName, VIPSex, VIPPassword, IdCard, VIPphone, VIPCredit, VIPLevel, rDate);
		
		if (check == true)
		{
			return "register";
		}else
		{
			return "tip";
		}
		
	}
	
	public String Cancel() throws Exception
	{
		//获取用户账号
		String login = ServletActionContext.getRequest().getParameter("login");

		String check = userService.UserDelete(login);
		
		if(check.equals("OK"))
		{
			return "cancel";
		}else
		{
			return "error";
		}
		
	}
	
	public String Update() throws Exception
	{
		String VIPName = ServletActionContext.getRequest().getParameter("VIPName");
		String IdCard = ServletActionContext.getRequest().getParameter("VIPIDCard");
		String VIPphone = ServletActionContext.getRequest().getParameter("VIPPhone");
		String VIPCredit = ServletActionContext.getRequest().getParameter("VIPCredit");
		String VIPLevel = ServletActionContext.getRequest().getParameter("VIPLevel");
		String VIPPassword = ServletActionContext.getRequest().getParameter("VIPPassword");
		
		userService.UserUpdate(VIPName, VIPPassword, IdCard, VIPphone, VIPCredit, VIPLevel);
		
		return "update";
	}
	
	public String Page() throws Exception 
	{
		UserPageBean pageBean = userService.listpage(currentPage);
		//放到域对象里面
		ServletActionContext.getRequest().setAttribute("userPageBean", pageBean);
		
		return "result";
	}
	//下拉菜单
	public String Page2() throws Exception 
	{
		UserPageBean pageBean = userService.listpage(currentPage);
		//放到域对象里面
		ServletActionContext.getRequest().setAttribute("login", pageBean);
		
		return "cancel";
	}
	
}
