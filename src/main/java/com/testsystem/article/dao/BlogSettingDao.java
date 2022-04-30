package com.testsystem.article.dao;

import java.util.List;

import com.testsystem.article.vo.BlogSetting;

public interface BlogSettingDao {
	public void  SaveBlogSetting(BlogSetting blogSetting);
	public  List<BlogSetting> GetBlogSettingByUserId(int userid);
	public void  EditBlogSetting(BlogSetting blogSetting);
}
