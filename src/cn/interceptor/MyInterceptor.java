package cn.interceptor;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class MyInterceptor extends AbstractInterceptor{

	@Override
	public String intercept(ActionInvocation arg0) throws Exception {
			
		String result=arg0.invoke();
		ActionContext ctx = arg0.getInvocationContext();
		Map<String,Object> session = ctx.getSession();
		Object object = session.get("existEmployee");
		if(object == null){  
            //没有登录就进行访问了  
            ActionSupport actionSupport = (ActionSupport) arg0.getAction();  
            actionSupport.addActionError("亲，您还没有登录，没有权限访问！");  
            return "input";  
        }else{  
            //已经登录过了  
        	System.out.println("已经登录过了MyInterceptor"+result);
            return result;  
        }
	}

}
