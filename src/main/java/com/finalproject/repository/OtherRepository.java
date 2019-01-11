package com.finalproject.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.finalproject.entity.Other;

@Repository
public interface OtherRepository extends JpaRepository<Other, Integer>{

	@Query ("Select O from Other O where O.otherId = ?1")
	Other getinfo(int otherId);
}
