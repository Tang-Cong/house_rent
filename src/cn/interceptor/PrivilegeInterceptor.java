package cn.interceptor;

import java.util.Map;

import org.apache.struts2.ServletActionContext;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class PrivilegeInterceptor extends MethodFilterInterceptor{

	@Override
	protected String doIntercept(ActionInvocation actionInvocation) throws Exception {
        //判断session中是否保存了后台用户的信息  
		ActionContext ctx = actionInvocation.getInvocationContext();
		Map<String,Object> session = ctx.getSession();
		Object object = session.get("existUsers");
		if(object == null){  
            //没有登录就进行访问了  
            ActionSupport actionSupport = (ActionSupport) actionInvocation.getAction();  
            actionSupport.addActionError("亲，您还没有登录，没有权限访问！");  
            return "input";  
        }else{  
            //已经登录过了  
        	//System.out.println("已经登录过了PrivilegeInterceptor");
            return actionInvocation.invoke();  
        }  
    }

}
