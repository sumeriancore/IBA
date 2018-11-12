package com.example.sweater.config;

import com.example.sweater.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;

/*Класс, который при старте приложения конфигурирует Web Security*/
@Configuration
@EnableWebSecurity(debug = true)
@EnableGlobalMethodSecurity(prePostEnabled = true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private UserService userService;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
                .authorizeRequests()//авторизация
                    .antMatchers("/", "/registration").permitAll()//юзер, который заходит на главную страницу имеет там полный доступ
                    .anyRequest().authenticated()//для всех остальных запросов требуется авторизация
                .and()
                    .formLogin()//форм логин
                    .loginPage("/login")//логин находится вот на таком мэппинге
                    .permitAll()//разрешаем этим пользоваться всем
                .and()
                    .logout()//логаут
                    .permitAll();//разрешаем пользоваться всем
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userService)
                .passwordEncoder(NoOpPasswordEncoder.getInstance());//шифрует пароли, чтобы они не хранились в явном виде
    }
}
