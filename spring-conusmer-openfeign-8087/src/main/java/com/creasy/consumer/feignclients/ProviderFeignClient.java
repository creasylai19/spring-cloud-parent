package com.creasy.consumer.feignclients;

import com.creasy.pojo.Article;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.context.annotation.Primary;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Primary
@FeignClient(value = "SPRING-PROVIDER", fallback = ProviderFeignClientFallback.class, path = "/article")
public interface ProviderFeignClient {

    @GetMapping("/getArticleById/{id}")
    public Article getArticleById(@PathVariable("id") Integer id );

    @GetMapping("/getArticleByIdWithSleep/{id}")
    public Article getArticleByIdWithSleep( @PathVariable("id") Integer id );

}


