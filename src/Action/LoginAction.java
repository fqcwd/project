package Action;

import Service.UserService;
import project_entity.User;

import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.*;

@SuppressWarnings("serial")
public class LoginAction extends ActionSupport {
	
	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	//用户登录
	public String Login() throws Exception
	{
		String login = ServletActionContext.getRequest().getParameter("login");
		String password = ServletActionContext.getRequest().getParameter("password");
		
		boolean check = userService.CheckUser(login,password);
		
		if(check == true)
		{
			ServletActionContext.getRequest().getSession().setAttribute("username", login);
			
			User user = userService.Select();
			ServletActionContext.getRequest().getSession().setAttribute("user", user);
			return "success";
		}else
		{
			return "error";
		}
		
	}
	
	//注销用户
	public String CustomerLoginOut() throws Exception
	{
		ServletActionContext.getRequest().getSession().removeAttribute("username");
		ServletActionContext.getRequest().getSession().removeAttribute("user");
		
		return "cout";
	}
	
	//管理员登录
	public String AdminLogin() throws Exception
	{
		System.out.println(123);
		String name = ServletActionContext.getRequest().getParameter("name");
		String password = ServletActionContext.getRequest().getParameter("password");
		System.out.println(456);
		boolean check1 = userService.CheckAdmin(name,password);
		System.out.println(789);
		System.out.println(check1);
		if(check1 == true)
		{
			ServletActionContext.getRequest().getSession().setAttribute("name", name);
			
			return "success";
		}else
		{
			return "error";
		}

	}
	
	//注销用户
	public String AdminLoginOut() throws Exception
	{
		ServletActionContext.getRequest().getSession().removeAttribute("name");

		return "aout";
	}

}
