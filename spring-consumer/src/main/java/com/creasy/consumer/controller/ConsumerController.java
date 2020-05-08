package com.creasy.consumer.controller;

import com.creasy.pojo.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("/consumer")
public class ConsumerController {

    @Autowired
    private RestTemplate restTemplate;

    @GetMapping("/getArticleFromConsumer/{id}")
    public Article getArticleFromConsumer(@PathVariable Integer id){
        Article article = restTemplate.getForObject("http://localhost:8090/article/getArticleById/" + id, Article.class);
        System.out.println("========================>");
        return article;
    }

}
