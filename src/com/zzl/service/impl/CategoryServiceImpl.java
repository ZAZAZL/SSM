package com.zzl.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zzl.mapper.CategoryMapper;
import com.zzl.pojo.Category;
import com.zzl.service.CategoryService;
import com.zzl.util.Page;

@Service
public class CategoryServiceImpl  implements CategoryService{
	@Autowired
	CategoryMapper categoryMapper;
	
	
	public List<Category> list(){
		return categoryMapper.list();
	}
	
	public int add(Category category){
		try{
			categoryMapper.add(category);
			return 1;
		}
		catch(Exception e){
			return 0;
		}
	}
	public int delete(int id){
		try{
		categoryMapper.delete(id);
		return 1;
		}catch(Exception e){
			return 0;
		}
	}
	public int update(Category category){
		try{
			categoryMapper.update(category);
			return 1;
		}catch(Exception e){
			return 0;
		}
	}
	public  Category get(int id){
		
	return	categoryMapper.get(id);
	}
	
	
	public List<Category> list(Page page) {
        return categoryMapper.list(page);
    }

    public int total() {

        return categoryMapper.total();

    };
}
