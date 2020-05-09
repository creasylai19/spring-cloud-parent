package com.creasy.provider.service.impl;

import com.creasy.provider.dao.IArticleDao;
import com.creasy.pojo.Article;
import com.creasy.provider.service.IArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ArticleServiceImpl implements IArticleService {

    @Autowired
    private IArticleDao iArticleDao;

    @Override
    public Article getArticle(int id) {
        Article article = new Article();
        article.setId(id);
        return iArticleDao.getArticle(article);
    }
}
