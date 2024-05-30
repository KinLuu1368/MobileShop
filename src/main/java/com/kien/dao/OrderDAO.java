package com.kien.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kien.model.Order;

public interface OrderDAO extends JpaRepository<Order, Integer> {

}
