package Action;

import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;
import Service.UserService;

public class RegisterAction extends ActionSupport {

	private UserService userService;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	public String Register() throws Exception
	{
		String login = ServletActionContext.getRequest().getParameter("login");
		String sex = ServletActionContext.getRequest().getParameter("sex");
		String password = ServletActionContext.getRequest().getParameter("password");
		String idCard = ServletActionContext.getRequest().getParameter("idCard");
		String phone = ServletActionContext.getRequest().getParameter("phone");
		
		userService.UserRegister(login, sex, password, idCard, phone);
		
		ServletActionContext.getRequest().setAttribute("ulogin", userService.getLogin(idCard));
		return "register2";
	}
}
