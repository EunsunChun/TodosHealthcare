package com.todos.healthcare.springsecurity.config;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.*;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.authentication.logout.LogoutHandler;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter implements WebMvcConfigurer,LogoutHandler,LogoutSuccessHandler{

	@Bean
	public UserDetailsService userDetailsService(){
		InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();
		manager.createUser(User.withDefaultPasswordEncoder().username("user").password("password").roles("USER").build());
		manager.createUser(User.withDefaultPasswordEncoder().username("admin").password("password").roles("USER","ADMIN").build());
		return manager;
	}
	
	protected void configure(HttpSecurity http) throws Exception {
		http
			.authorizeRequests()
				.antMatchers("/resources/**", "/signup", "/about").permitAll()                  
				.antMatchers("/admin/**").hasRole("ADMIN")                                      
				.antMatchers("/db/**").access("hasRole('ADMIN') and hasRole('DBA')")            
				.anyRequest().authenticated()                                                   
				.and()
			.formLogin()
				.loginPage("/login")
				.permitAll()
				.and()
			.logout()                                                                
			.logoutUrl("/logout")                                                 
			//.logoutSuccessUrl("/login?logout")                                           
			//.logoutSuccessHandler(logoutSuccessHandler)                              
			//.invalidateHttpSession(true)                                             
			//.addLogoutHandler(logoutHandler)                                         
			//.deleteCookies(cookieNamesToClear)                                       
			.and()	
			.httpBasic();
	}

	//LogoutHandler는 커스터마이즈
	@Override
	public void onLogoutSuccess(HttpServletRequest arg0, HttpServletResponse arg1, Authentication arg2)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void logout(HttpServletRequest arg0, HttpServletResponse arg1, Authentication arg2) {
		// TODO Auto-generated method stub
		
	}
	
}
