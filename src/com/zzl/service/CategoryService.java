package com.zzl.service;

import java.util.List;

import com.zzl.pojo.Category;
import com.zzl.util.Page;

public interface CategoryService {

	List<Category> list();
	int add(Category category);
    int delete(int id); 
    int update(Category category);
    Category get(int id);
    int total();
    List<Category> list(Page page);
}
