package com.kien.controller.cartController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ShoppingCartController {
    @Autowired
    ShoppingCartService cart;
    
    @RequestMapping("/Assignment/cart")
    public String view(Model model) {
    	System.out.println(cart);
        model.addAttribute("cart", cart);
        return "cart/index";
    }
    
    @RequestMapping("/cart/add/{id}")
    public String add(@PathVariable("id") Integer id) {
        cart.add(id);
        return "redirect:/Assignment/home";
    }
    
    @RequestMapping("/cart/remove/{id}")
    public String remove(@PathVariable("id") Integer id) {
        cart.remove(id);
        return "redirect:/Assignment/cart";
    }
    
    @RequestMapping("/cart/update/{id}")
    public String update(@PathVariable("id") Integer id, @RequestParam("qty") Integer qty) {
        cart.update(id, qty);
        return "redirect:/Assignment/cart";
    }
    
    @RequestMapping("/cart/clear")
    public String clear() {
        cart.clear();
        return "redirect:/Assignment/cart";
    }
}