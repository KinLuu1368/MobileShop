package com.kien.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.kien.model.Product;
import com.kien.model.Report;

@Repository
public interface ProductDAO extends JpaRepository<Product, Integer> {
//    @Query("SELECT o FROM Product o WHERE o.price BETWEEN ?1 AND ?2")
//    List<Product> findByPrice(double minPrice, double maxPrice);
    
	List<Product> findByPriceBetween(double minPrice, double maxPrice);
	
    @Query("SELECT o FROM Product o WHERE o.name LIKE ?1")
    Page<Product> findByKeywords(String keywords, org.springframework.data.domain.Pageable pageable);
    
    @Query("SELECT o FROM Product o WHERE o.id LIKE ?1")
    Product findByID(String keywords);
    
	Page<Product> findAllByNameLike(String keywords, org.springframework.data.domain.Pageable pageable);
	
    @Query("SELECT new Report(o.category, sum(o.price), count(o)) "
    		+ " FROM Product o "
    		+ " GROUP BY o.category"
    		+ " ORDER BY sum(o.price) DESC")
    		List<Report> getInventoryByCategory();
    
    List<Product> findByCategoryId(String id);
}
