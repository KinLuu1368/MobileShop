package com.kien.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kien.model.OrderDetail;

public interface OrderDetailDAO extends JpaRepository<OrderDetail, Integer> {

}
