package com.creasy.consumer.feignclients;

import com.creasy.pojo.Article;
import org.springframework.stereotype.Component;

@Component
public class ProviderFeignClientFallback implements ProviderFeignClient{
    @Override
    public Article getArticleById(Integer id) {
        return new Article(-1, "getArticleById");
    }

    @Override
    public Article getArticleByIdWithSleep(Integer id) {
        return new Article(-1, "getArticleByIdWithSleep");
    }
}
