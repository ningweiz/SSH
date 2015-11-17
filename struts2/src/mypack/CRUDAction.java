package mypack;
import com.opensymphony.xwork2.ActionSupport;

public class CRUDAction extends ActionSupport {
	public String add(){
		return "success";
	}
	public String del(){
		return "delsuccess";
	}
	public String update(){
		return "upsuccess";
	}
	public String query(){
		return "qusuccess";
	}
}
