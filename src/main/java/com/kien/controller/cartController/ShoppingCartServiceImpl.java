package com.kien.controller.cartController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kien.dao.ProductDAO;
import com.kien.model.CartItem;
import com.kien.model.Product;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {
	@Autowired
	ProductDAO ProDao;
	
    private Map<Integer, CartItem> cartItems;

    public ShoppingCartServiceImpl() {
        cartItems = new HashMap<>();
    }

    @Override
    public CartItem add(Integer id) {
        CartItem item = cartItems.get(id);
        if (item != null) {
            item.setQuantity(item.getQuantity() + 1);
        } else {
        	String idPro = String.valueOf(id);
        	Product pro = ProDao.findByID(idPro);
            item = new CartItem(pro.getId(),1,pro.getPrice(), pro.getName());
            cartItems.put(id, item);
            System.out.println(idPro);
            System.out.println(cartItems);
        }
        return item;
    }

    @Override
    public void remove(Integer id) {
        cartItems.remove(id);
    }

    @Override
    public CartItem update(Integer id, int qty) {
        CartItem item = cartItems.get(id);
        if (item != null) {
            item.setQuantity(qty);
        }
        return item;
    }

    @Override
    public void clear() {
        cartItems.clear();
    }

    @Override
    public Collection<CartItem> getItems() {
        return cartItems.values();
    }

    @Override
    public int getCount() {
        return cartItems.size();
    }

    @Override
    public double getAmount() {
        double totalAmount = 0.0;
        for (CartItem item : cartItems.values()) {
            totalAmount += item.getPrice() * item.getQuantity();
        }
        return totalAmount;
    }
}
