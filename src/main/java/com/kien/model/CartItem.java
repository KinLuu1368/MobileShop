package com.kien.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class CartItem {
	private Integer id;
	private int quantity;
	private Double price;
	private String name;
}
