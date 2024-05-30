package com.kien.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.kien.model.Account;

public interface AccountDAO extends JpaRepository<Account, Integer> {
	@Query("SELECT c FROM Account c WHERE c.username = ?1")
	Account findByUsername(String username);
	
	@Modifying
	@Query("DELETE FROM Account c WHERE c.username = :username")
	void deleteByUsername(@Param("username") String username);
}
