package com.java.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.java.entity.Brand;

@Repository
public interface BrandRepository extends JpaRepository<Brand, Integer>{

}
