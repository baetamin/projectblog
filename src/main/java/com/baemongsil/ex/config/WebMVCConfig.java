package com.baemongsil.ex.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.baemongsil.ex.common.FilemanagerService;

@Configuration
public class WebMVCConfig implements WebMvcConfigurer{

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		
		// /images/~~
		
		registry.addResourceHandler("/images/**")
		.addResourceLocations("file:///" + FilemanagerService.FILE_UPLOAD_PATH);
	}
	
	
}
