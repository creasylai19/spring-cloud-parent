package com.creasy.provider.dao;

import com.creasy.pojo.Article;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IArticleDao {

    public Article getArticle(Article article);

}
