package com.kien.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kien.SessionService;
import com.kien.dao.CategoryDAO;
import com.kien.dao.ProductDAO;
import com.kien.model.Account;
import com.kien.model.Category;
import com.kien.model.Product;

@Controller
@RequestMapping("/Assignment")
public class MainController {
	@Autowired
	ProductDAO dao;
	
	@Autowired
	CategoryDAO caDao;
	
	@Autowired
	SessionService session;
	
	@GetMapping("/home")
    public String index(Model model) {
		List<Product> iPhoneProducts = (List<Product>) dao.findByCategoryId("1");
		model.addAttribute("iPhoneProducts", iPhoneProducts);
		
		List<Product> iPadProducts = (List<Product>) dao.findByCategoryId("2");
		model.addAttribute("iPadProducts", iPadProducts);
		
		List<Product> MacProducts = (List<Product>) dao.findByCategoryId("3");
		model.addAttribute("MacProducts", MacProducts);
		
		Account user = session.getAccount("user");
	    if (user != null) {
	        String username = user.getUsername();
	        model.addAttribute("accountName", username);
	    } else {
	        model.addAttribute("accountName", "Đăng nhập");
	    }
        return "trangchu";
    }
	
	//Show mặt hàng theo category
	@GetMapping("/category/{categoryId}")
	public String categoryShow(@PathVariable("categoryId") String categoryId, Model model) {
		List<Product> products = (List<Product>) dao.findByCategoryId(categoryId);
		model.addAttribute("products", products);
		
		String categoryName = caDao.findNameByCategoryId(categoryId);
		
		model.addAttribute("categoryName", categoryName);
		model.addAttribute("categoryId", categoryId);
		
	    return "listItem";
	}
	
	//Show sản phẩm
	@GetMapping("/detail/{productId}")
	public String productShow(@PathVariable("productId") String productId, Model model) {
		Product product = dao.findByID(productId);
		model.addAttribute("product", product);
		
		// Thêm thông tin đường dẫn
		Category category = product.getCategory();
		model.addAttribute("categoryID", category.getId());
		model.addAttribute("categoryName", category.getName());
		
	    return "detail";
	}
}
