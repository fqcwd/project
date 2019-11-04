package Action;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import Service.UserService;
import project_entity.User;

public class VIPAction extends ActionSupport{

	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public String Invest() throws Exception
	{
		String login = ServletActionContext.getRequest().getParameter("login");
		String money = ServletActionContext.getRequest().getParameter("price");
		
		userService.Invest(login, money);
		
		User user = userService.Select();
		ServletActionContext.getRequest().getSession().setAttribute("user", user);
		return "invest";
	}
}
