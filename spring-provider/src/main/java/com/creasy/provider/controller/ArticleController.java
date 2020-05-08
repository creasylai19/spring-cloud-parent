package com.creasy.provider.controller;

import com.creasy.pojo.Article;
import com.creasy.provider.service.IArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/article")
public class ArticleController {

    @Autowired
    private IArticleService iArticleService;

    @GetMapping("/getArticleById/{id}")
    public Article getArticleById( @PathVariable Integer id ){
        return iArticleService.getArticle(id);
    }

}
