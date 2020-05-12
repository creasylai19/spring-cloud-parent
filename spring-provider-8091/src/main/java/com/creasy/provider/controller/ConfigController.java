package com.creasy.provider.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/config")
public class ConfigController {

    @Value("${config.source}")
    private String source;

    @Value("${config.datasource.max-connections}")
    private String maxConnections;

    @GetMapping("/getConfigInfo")
    public String getConfigInfo(){
        return "source=" + source + ".maxConnections=" + maxConnections;
    }

}
