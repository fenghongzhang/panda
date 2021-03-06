package com.fhz.panda;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class PandaConsumer80_App {
	
	public static void main(String[] args) {
		SpringApplication.run(PandaConsumer80_App.class, args);
	}
}
