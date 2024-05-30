package com.kien.model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "Categories")
public class Category implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	private String id;
	private String name;
	
	@OneToMany(mappedBy = "category")
	private List<Product> products;
}
