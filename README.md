# 房屋租赁系统

> 前言：这是一个基于ssh的项目

### 使用工具：

	git(版本控制工具)，myeclipse(集成开发环境），junit(测试)
	
### 技术栈：

	spring,struts2,hibernate(框架)，mysql(数据库)
	bootstrap(页面),html,css,javascript,jquery（前端）

### 数据库设计
	CREATE TABLE `users` (
	  `id` int(11) NOT NULL auto_increment,
	  `uname` varchar(45) character set utf8 NOT NULL,
	  `password` varchar(45) character set utf8 NOT NULL,
	  `number` varchar(45) character set utf8 NOT NULL,
	  `tele` varchar(45) character set utf8 NOT NULL,
	  `level` int(11) NOT NULL default '0',
	  PRIMARY KEY  (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

	CREATE TABLE `rent` (
	  `id` int(11) NOT NULL auto_increment,
	  `rname` varchar(45) NOT NULL,
	  `tele` varchar(45) NOT NULL,
	  `address` varchar(45) NOT NULL,
	  `area` double NOT NULL,
	  `floor` int(11) NOT NULL,
	  `money` varchar(45) NOT NULL,
	  `district` varchar(45) NOT NULL,
	  `type` varchar(45) NOT NULL,
	  `direction` varchar(45) NOT NULL,
	  `surround` varchar(45) NOT NULL,
	  `decoration` varchar(100) NOT NULL,
	  `day` date NOT NULL,
	  PRIMARY KEY  (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='出租表';

	CREATE TABLE `detail` (
	  `id` int(11) NOT NULL auto_increment,
	  `dname` varchar(45) NOT NULL,
	  `content` varchar(45) NOT NULL,
	  `time` datetime NOT NULL,
	  `cno` int(11) default NULL,
	  PRIMARY KEY  (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='详情表';

	CREATE TABLE `comment` (
	  `id` int(11) NOT NULL auto_increment,
	  `cname` varchar(45) NOT NULL,
	  `tele` varchar(45) NOT NULL,
	  `content` varchar(45) NOT NULL,
	  `day` date NOT NULL,
	  PRIMARY KEY  (`id`)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言表';

### 过滤器

当用户未登录直接访问业务jsp时，进行过滤，要求登录
	
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
预览：
![](http://i.imgur.com/zclFnU9.gif)

### 拦截器

当用户输入用户名密码错误时，进行拦截（前端和后端都有验证）

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

### 拦截器与过滤器的区别 ： 

     1. 拦截器是基于java的反射机制的，而过滤器是基于函数回调。
     2. 拦截器不依赖与servlet容器，过滤器依赖与servlet容器。 
     3. 拦截器只能对action请求起作用，而过滤器则可以对几乎所有的请求起作用。
     4. 拦截器可以访问action上下文、值栈里的对象，而过滤器不能访问。 
     5. 在action的生命周期中，拦截器可以多次被调用，而过滤器只能在容器初始化时被调用一次

### 用户模块

dao继承HibernateDaoSupport大大简化了hql语句和使业务逻辑与数据库种类的无关

	public class UsersDaoImpl extends HibernateDaoSupport implements UsersDao {
	
		@Override
		public Users findByUsernameAndPassword(Users users) {
			String hql="from Users where uname=? and password=?";
			List<Users> list=(List<Users>) this.getHibernateTemplate().find(hql,users.getUname(),users.getPassword());
			if(list.size()>0)
				return list.get(0);
			return null;
		}
	
		@Override
		public List<Users> findByPage(int begin, int pageSize) {
			DetachedCriteria criteria=DetachedCriteria.forClass(Users.class);
			List<Users> list=(List<Users>) this.getHibernateTemplate().findByCriteria(criteria, begin, pageSize);
			return list;
		}
	
		@Override
		public Users findById(Integer id) {
			return this.getHibernateTemplate().get(Users.class, id);
		}
	
		@Override
		public void update(Users users) {
			this.getHibernateTemplate().update(users);
			
		}
	
		@Override
		public void delete(Users users) {
			this.getHibernateTemplate().delete(users);
			
		}
	
		@Override
		public void save(Users users) {
			this.getHibernateTemplate().save(users);
			
		}
	
		@Override
		public int findCount() {
			String hql="select count(*) from Users";
			List<Long> list=(List<Long>) this.getHibernateTemplate().find(hql);
			if(list.size()>0)
			{
				return list.get(0).intValue();
			}
			return 0;s
		}
	
	}

### 样式

使用bootstrap提供的样式，登录界面在输入的时候验证是否输入数据，提高用户体验

**项目源码**：[https://github.com/Tang-Cong/house_rent](https://github.com/Tang-Cong/house_rent)


**预览图片**：
![](http://i.imgur.com/vi3grhV.gif)

![](http://i.imgur.com/0crNiW5.gif)

![](http://i.imgur.com/NdLzL1C.gif)