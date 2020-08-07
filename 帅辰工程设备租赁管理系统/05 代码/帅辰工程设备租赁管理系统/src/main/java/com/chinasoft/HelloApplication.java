package com.chinasoft;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication  //表明这是一个主程序类,说明它是一个springboot的应用
public class HelloApplication {

	public static void main(String[] args) {
		
		//Springboot应用程序启动
		SpringApplication.run(HelloApplication.class, args);
	}
}
