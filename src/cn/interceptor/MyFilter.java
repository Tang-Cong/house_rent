package cn.interceptor;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.*;
import javax.servlet.http.*;

import org.springframework.aop.MethodBeforeAdvice;

import com.opensymphony.xwork2.ActionContext;

public class MyFilter extends HttpServlet implements Filter {

    @Override  
   public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {  
    	Object object=ActionContext.getContext().getSession().get("existUsers");
    	String register=(String) ActionContext.getContext().getSession().get("register");
    	HttpServletRequest httpServletRequest = (HttpServletRequest) request;  
       HttpServletResponse httpServletResponse = (HttpServletResponse) response;  
       String url = httpServletRequest.getRequestURI();  
       if(url != null && url.endsWith(".jsp") && object==null && register==null) {  
           httpServletResponse.sendRedirect(httpServletRequest.getContextPath());
           System.out.println("请登录！");
           return;  
       }  
       chain.doFilter(request, response);  
   }  
 
   @Override  
   public void destroy() {  
         
   }  
 
   @Override  
   public void init(FilterConfig arg0) throws ServletException {  
         
   }

}
