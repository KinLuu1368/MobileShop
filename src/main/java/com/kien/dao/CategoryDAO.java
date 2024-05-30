package com.kien.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.kien.model.Category;

public interface CategoryDAO extends JpaRepository<Category, String> {
	@Query("SELECT c.name FROM Category c WHERE c.id LIKE ?1")
    String findNameByCategoryId(String id);
}
