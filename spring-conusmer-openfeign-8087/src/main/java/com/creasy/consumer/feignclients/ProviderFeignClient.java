package com.creasy.consumer.feignclients;

import com.creasy.pojo.Article;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@FeignClient(value = "SPRING-PROVIDER")
@RequestMapping("/article")
public interface ProviderFeignClient {

    @GetMapping("/getArticleById/{id}")
    public Article getArticleById(@PathVariable("id") Integer id );

    @GetMapping("/getArticleByIdWithSleep/{id}")
    public Article getArticleByIdWithSleep( @PathVariable("id") Integer id );

}
