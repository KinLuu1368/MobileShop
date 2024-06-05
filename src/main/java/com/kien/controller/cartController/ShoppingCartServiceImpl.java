package com.kien.controller.cartController;

import org.springframework.stereotype.Service;

import com.kien.model.Item;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

@Service
public class ShoppingCartServiceImpl implements ShoppingCartService {
    private Map<Integer, Item> cartItems;

    public ShoppingCartServiceImpl() {
        cartItems = new HashMap<>();
    }

    @Override
    public Item add(Integer id) {
        Item item = cartItems.get(id);
        if (item != null) {
            item.setQty(item.getQty() + 1);
        } else {
            // Thay thế bằng logic lấy thông tin mặt hàng từ nguồn dữ liệu (database, service, vv.)
            item = new Item(id, "Item " + id, 0.0, 1);
            cartItems.put(id, item);
        }
        return item;
    }

    @Override
    public void remove(Integer id) {
        cartItems.remove(id);
    }

    @Override
    public Item update(Integer id, int qty) {
        Item item = cartItems.get(id);
        if (item != null) {
            item.setQty(qty);
        }
        return item;
    }

    @Override
    public void clear() {
        cartItems.clear();
    }

    @Override
    public Collection<Item> getItems() {
        return cartItems.values();
    }

    @Override
    public int getCount() {
        return cartItems.size();
    }

    @Override
    public double getAmount() {
        double totalAmount = 0.0;
        for (Item item : cartItems.values()) {
            totalAmount += item.getPrice() * item.getQty();
        }
        return totalAmount;
    }
}
