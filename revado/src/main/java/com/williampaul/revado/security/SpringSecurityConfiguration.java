package com.williampaul.revado.security;

import java.util.function.Function;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

@Configuration
public class SpringSecurityConfiguration {

	
	@Bean
	public InMemoryUserDetailsManager createDetailsManager() {
		
		UserDetails user1 = createNewUser("phoenix", "password");
		UserDetails user2 = createNewUser("gloria", "password");
		
		return new InMemoryUserDetailsManager(user1, user2);
	}
	
	private UserDetails createNewUser(String username, String password) {
		Function<String, String> passwordEncoder = input -> passwordEncoder().encode(input);
		
		UserDetails userDetails = User.builder()
									.passwordEncoder(passwordEncoder)
									.username(username)
									.password(password)
									.roles("USER", "ADMIN")
									.build();
		return userDetails;
	}
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	
	
//	@Bean
//	public SecurityFilterChain filterChain(HttpSecurity http) throws Exception{
//		
//		http.authorizeHttpRequests(
//				auth -> auth.anyRequest().authenticated());
//		http.formLogin(withDefaults());
//		
//		http.csrf(csrf -> csrf.disable());
//		
//		http.headers(headers -> headers.frameOptions(frameOptionsConfig -> frameOptionsConfig.disable()));
//		
//		return http.build();
//	}
}
