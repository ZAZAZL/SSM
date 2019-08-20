package com.zzl.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zzl.pojo.Category;
import com.zzl.service.CategoryService;
import com.zzl.util.Page;

@Controller
@RequestMapping("")
public class CategoryController {
	@Autowired
	CategoryService categoryService;

	@RequestMapping("listCategory")
	public ModelAndView listCategory(Page page){
		ModelAndView mav = new ModelAndView();
		int total = categoryService.total();
		page.caculateLast(total);
		if(page.getStart()<=0)
			page.setStart(0);
		if (page.getStart() + page.getCount()>total) {
            page.setStart(page.getLast());
        }
		List<Category> cs= categoryService.list(page);
		
		
		mav.addObject("cs", cs);
		mav.setViewName("listCategory");
		return mav;
	}
	@RequestMapping("addCategory")
	public String addCategory(Model model,Category category){
		int i=categoryService.add(category);
		if(i==1)
		{
			return "redirect:listCategory";
		}
		return "fail";
	}
	@RequestMapping("deleteCategory")
	public String deletecategory(int id,Model model){
	int a=categoryService.delete(id);
	if(a==1)
	
		return "redirect:listCategory";
	
	else
		return "fail";
	}
	@RequestMapping("updateCategory")
	public String updateCategory(Model model,Category category){
	int a=categoryService.update(category);
	if(a==1)
	
		return "redirect:listCategory";
	
	else
		return "fail";
	}
	@RequestMapping("getCategory")
	public ModelAndView getCategory(Category category) {
		Category st = categoryService.get(category.getId());
		ModelAndView mav = new ModelAndView("update");
		mav.addObject("c",st);
		return mav;
	}

	
}
