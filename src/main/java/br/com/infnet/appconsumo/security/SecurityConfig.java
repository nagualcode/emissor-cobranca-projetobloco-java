package br.com.infnet.appconsumo.security;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		.csrf() 
		.disable()
		.authorizeRequests()
		    .antMatchers("/**").authenticated()
			.anyRequest().authenticated()
			.and()
			.formLogin();
	}
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth
		.inMemoryAuthentication()
			.withUser("user")
			.password("{noop}user00")
			.roles("USER")
		.and()
			.withUser("admin")
			.password("{noop}admin00")
			.roles("ADMIN");
	}
	
	
}