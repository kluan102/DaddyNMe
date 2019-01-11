package com.finalproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.finalproject.entity.UserAccount;



@Repository
public interface UserAccountRepository extends JpaRepository <UserAccount, String>{
	
	@Query("Select U from UserAccount U where U.email = ?1 and U.password = ?2")
	UserAccount login(String userEmail, String password);

}
