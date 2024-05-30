package com.kien.model;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "Accounts")
public class Account implements Serializable {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
    private String username;
    private String password;
    private String fullname;
    private String email;
    private String photo;
    private boolean activated;
    private boolean admin;

    @OneToMany(mappedBy = "account")
    private List<Order> orders;
}
