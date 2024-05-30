package com.kien.model;

import java.io.Serializable;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "Orderdetails")
public class OrderDetail implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Double price;
    private Integer quantity;

    @ManyToOne
    @JoinColumn(name = "Productid")
    private Product product;

    @ManyToOne
    @JoinColumn(name = "Orderid")
    private Order order;
}