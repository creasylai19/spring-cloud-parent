package com.creasy.consumer;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableFeignClients
public class ConsumerApplication8087 {

    public static void main(String[] args) {
        SpringApplication.run(ConsumerApplication8087.class, args);
    }

}
