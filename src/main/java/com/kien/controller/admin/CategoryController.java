package com.kien.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kien.dao.CategoryDAO;
import com.kien.model.Category;

@Controller
@RequestMapping("/admin/category")
public class CategoryController {
    @Autowired
    private CategoryDAO dao;

    @GetMapping("/index")
    public String index(Model model) {
        Category item = new Category();
        model.addAttribute("item", item);
        List<Category> items = dao.findAll();
        model.addAttribute("items", items);
        return "/admin/category/index";
    }

    @PostMapping("/create")
    public String create(@ModelAttribute("item") Category item) {
        dao.save(item);
        return "redirect:/admin/category/index";
    }

    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") String id, Model model) {
        Category item = dao.findById(id).orElse(null);
        model.addAttribute("item", item);
        List<Category> items = dao.findAll();
        model.addAttribute("items", items);
        return "/admin/category/index";
    }

    @PostMapping("/update")
    public String update(@ModelAttribute("item") Category item) {
        dao.save(item);
        return "redirect:/admin/category/index";
    }

    @GetMapping("/delete/{id}")
    public String delete(@PathVariable("id") String id) {
        dao.deleteById(id);
        return "redirect:/admin/category/index";
    }
}
