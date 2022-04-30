package com.testsystem.article.service;

import java.util.List;

import com.testsystem.article.vo.BlogSetting;

public interface BlogSettingService {

	public void  SaveBlogSetting(BlogSetting blogSetting);
	public  List<BlogSetting> GetBlogSettingByUserId(int userid);
	
	public void  EditBlogSetting(BlogSetting blogSetting);
	
	
	
}
