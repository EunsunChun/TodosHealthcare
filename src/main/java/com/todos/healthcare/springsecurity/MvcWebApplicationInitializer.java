package com.todos.healthcare.springsecurity;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class MvcWebApplicationInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {

	@Override
	protected Class<?>[] getRootConfigClasses() {
		// TODO Auto-generated method stub
		//return new Class<?>[]{AppConfig.class, WebSecurityConfig.class};
		return null;
	}

	@Override
	protected Class<?>[] getServletConfigClasses() {
		// TODO Auto-generated method stub
		//return new Class<?>[]{WebServletConfig.class};
		return null;
	}

	@Override
	protected String[] getServletMappings() {
		// TODO Auto-generated method stub
		return null;//new String[]{"/"};
	}

/*	@Override
	protected Filter[] getServletFilters() {
		// TODO Auto-generated method stub
		return new Filter[]{new CharacterEncodingFilter("UTF-8"), new HiddenHttpMethodFilter()};
	}

	@Override
	protected void registerDispatcherServlet(ServletContext servletContext) {
		// TODO Auto-generated method stub
		WebApplicationContext webApplicationContext = createServletApplicationContext();
		DispatcherServlet dispatherServlet = new DispatcherServlet(webApplicationContext);
		ServletRegistration.Dynamic appServlet = servletContext.addServlet("appServlet", dispatherServlet);
		appServlet.setLoadOnStartup(1);
		appServlet.addMapping(getServletMappings());
	}*/
}
