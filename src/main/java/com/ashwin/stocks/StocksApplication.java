package com.ashwin.stocks;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;

@SpringBootApplication
public class StocksApplication extends ServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(StocksApplication.class);
	}
	
	public static void main(String[] args) {
		SpringApplication.run(StocksApplication.class, args);
	}
}
