package com.kien.controller.admin;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.*;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kien.dao.CategoryDAO;
import com.kien.dao.ProductDAO;
import com.kien.model.Category;
import com.kien.model.Product;

@Controller
@RequestMapping("/admin")
public class ProductController {
	@Autowired
	ProductDAO dao;
	
	@Autowired
	CategoryDAO cateDAO;
	
	@RequestMapping("/product/sort")
	public String sortProducts(Model model, @RequestParam("field") Optional<String> field) {
		String sortBy = field.orElse("price");
		Sort sort = Sort.by(Direction.DESC, sortBy);
		List<Product> products = dao.findAll(sort);
		
		model.addAttribute("field", sortBy.toUpperCase());
		model.addAttribute("items", products);
		
		return "/admin/product/sort";
	}
	
	@GetMapping("/product/index")
    public String index(Model model) {
        Product item = new Product();
        model.addAttribute("item", item);
        
        List<Product> items = dao.findAll();
        model.addAttribute("items", items);
        
        List<Category> categories = cateDAO.findAll();
        model.addAttribute("categories", categories);
        return "/admin/product/index";
    }
	
	@PostMapping("/product/create")
    public String create(@ModelAttribute("item") Product item) {
        dao.save(item);
        return "redirect:/admin/product/index";
    }

    @GetMapping("/product/edit/{id}")
    public String edit(@PathVariable("id") Integer id, Model model) {
        Product item = dao.findById(id).orElse(null);
        model.addAttribute("item", item);
        List<Product> items = dao.findAll();
        model.addAttribute("items", items);
        List<Category> categories = cateDAO.findAll();
        model.addAttribute("categories", categories);
        
        return "/admin/product/index";
    }

    @PostMapping("/product/update")
    public String update(@ModelAttribute("item") Product item) {
        dao.save(item);
        return "redirect:/admin/product/index";
    }

    @GetMapping("/product/delete/{id}")
    public String delete(@PathVariable("id") Integer id) {
        dao.deleteById(id);
        return "redirect:/admin/product/index";
    }
	
	@RequestMapping("/product/page")
	public String paginate(Model model, @RequestParam("p") Optional<Integer> p) {
	    int pageNumber;
	    try {
	        pageNumber = p.orElseThrow();
	        if (pageNumber < 0) {
	            throw new IllegalArgumentException("Page number cannot be negative");
	        }
	    } catch (IllegalArgumentException | NoSuchElementException e) {
	        pageNumber = 0; // Giá trị mặc định khi có lỗi
	    }

	    int pageSize = 5; // Kích thước trang

	    Pageable pageable = PageRequest.of(pageNumber, pageSize);
	    Page<Product> page = dao.findAll(pageable);

	    model.addAttribute("page", page);

	    return "/admin/product/page";
	}
}
