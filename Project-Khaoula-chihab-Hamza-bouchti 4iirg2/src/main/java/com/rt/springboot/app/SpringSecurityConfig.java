package com.rt.springboot.app;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.rt.springboot.app.models.service.JpaUserDetailsService;

@EnableGlobalMethodSecurity(securedEnabled = true, prePostEnabled = true)
@Configuration
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private JpaUserDetailsService userDetailsService;

	@Autowired
	private BCryptPasswordEncoder passwordEncoder;

	// Method for http authorization
	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.authorizeRequests().antMatchers("/", "/css/**", "/js/**", "/images/**", "/list", "/locale", "/api/**", "/signup").permitAll()
				.anyRequest().authenticated()
				.and()
				.formLogin().loginPage("/login").permitAll()
				.defaultSuccessUrl("/")
				.and()
				.logout().invalidateHttpSession(true).clearAuthentication(true).logoutSuccessUrl("/login?logout").permitAll()
				.and()
				.exceptionHandling().accessDeniedPage("/error_403")
				.and()
				.rememberMe();

	}

	@Autowired
	public void configuredGlobal(AuthenticationManagerBuilder builder) throws Exception {

		// JPA
		
		builder.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder);

		

		 

	}

}
