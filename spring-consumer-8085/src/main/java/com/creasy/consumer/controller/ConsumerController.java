package com.creasy.consumer.controller;

import com.creasy.pojo.Article;
import com.netflix.hystrix.contrib.javanica.annotation.HystrixCommand;
import com.netflix.hystrix.contrib.javanica.annotation.HystrixProperty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@RestController
@RequestMapping("/consumer")
public class ConsumerController {

    @Autowired
    private RestTemplate restTemplate;
    @Autowired
    private DiscoveryClient discoveryClient;

    @HystrixCommand(fallbackMethod = "getArticleByServiceNameFallback",
            commandProperties = {
                    @HystrixProperty(name = "execution.isolation.thread.timeoutInMilliseconds", value = "500")
            }
    )
    @GetMapping("/getArticleFromConsumer/{id}")
    public Article getArticleFromConsumer(@PathVariable Integer id){
        List<ServiceInstance> instances = discoveryClient.getInstances("SPRING-PROVIDER");
        ServiceInstance serviceInstance = instances.get(0);
        String url = "http://"+ serviceInstance.getHost() +":"+ serviceInstance.getPort() +"/article/getArticleByIdWithSleep/" + id;
        Article article = new RestTemplate().getForObject(url, Article.class);
        System.out.println("========================>" + url);
        return article;
    }

    @GetMapping("/getArticleByServiceName/{id}")
    @HystrixCommand(fallbackMethod = "getArticleByServiceNameFallback",
            commandProperties = {
                    @HystrixProperty(name = "execution.isolation.thread.timeoutInMilliseconds", value = "500")
            }
    )
    public Article getArticleByServiceName(@PathVariable Integer id){
        String url = "http://spring-provider/article/getArticleById/" + id;
        return restTemplate.getForObject(url, Article.class);
    }

    public Article getArticleByServiceNameFallback(Integer id){
        return new Article(-1, "fallback");
    }

}
