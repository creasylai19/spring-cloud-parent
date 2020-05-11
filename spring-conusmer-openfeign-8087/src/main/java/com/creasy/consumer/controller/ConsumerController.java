package com.creasy.consumer.controller;

import com.creasy.consumer.feignclients.ProviderFeignClient;
import com.creasy.pojo.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/consumer")
public class ConsumerController {

    @Autowired
    private ProviderFeignClient providerFeignClient;


    @GetMapping("/getArticleByServiceName/{id}")
    public Article getArticleByServiceName(@PathVariable Integer id){
        return providerFeignClient.getArticleById(id);
    }


}
