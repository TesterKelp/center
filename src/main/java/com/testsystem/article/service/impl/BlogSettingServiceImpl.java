package com.testsystem.article.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.testsystem.article.dao.BlogSettingDao;
import com.testsystem.article.service.BlogSettingService;
import com.testsystem.article.vo.BlogSetting;
@Service
public class BlogSettingServiceImpl implements BlogSettingService {
	@Autowired
	private BlogSettingDao blogSettingDao;
	public void SaveBlogSetting(BlogSetting blogSetting) {
		// TODO Auto-generated method stub
		blogSettingDao.SaveBlogSetting(blogSetting);
	}

	public List<BlogSetting> GetBlogSettingByUserId(int userid) {
		return blogSettingDao.GetBlogSettingByUserId(userid);
	}

	public void EditBlogSetting(BlogSetting blogSetting) {
		// TODO Auto-generated method stub
		blogSettingDao.EditBlogSetting(blogSetting);
	}



}
