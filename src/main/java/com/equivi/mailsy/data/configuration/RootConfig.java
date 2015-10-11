package com.equivi.mailsy.data.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;
import org.springframework.core.io.FileSystemResource;

@Configuration
public class RootConfig {

    @Bean(name = "serviceDataPropertyConfigurers")
    public static PropertySourcesPlaceholderConfigurer appProperties(){
        PropertySourcesPlaceholderConfigurer bean = new PropertySourcesPlaceholderConfigurer();

        FileSystemResource[] fileSystemResources = new FileSystemResource[2];
        fileSystemResources[0] = new FileSystemResource(System.getProperty("dbConfigLocation"));
        fileSystemResources[1] = new FileSystemResource(System.getProperty("emailConfigLocation"));

        bean.setLocations(fileSystemResources);
        bean.setOrder(0);

        return bean;
    }
}
