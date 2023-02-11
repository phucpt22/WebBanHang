package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Category;


public interface CategoryDAO extends JpaRepository<Category, String> {
	// Lệnh query jpql tìm danh mục hoa
	@Query("SELECT c FROM DanhMuc c WHERE c.MaDM >= 1 AND c.id_dm <= 6")
	List<Category> findAllByFlower();
	
	// Lệnh query jpql tìm danh mục cây cảnh
	@Query("SELECT c FROM DanhMuc c WHERE c.id_dm >= 7 AND c.id_dm <= 11")
	List<Category> findAllByTree();
	//lệnh query này tìm danh mục theo tên DM
	@Query("SELECT p FROM DanhMuc p WHERE p.TenDM = ?1")
	List<Category> findAllByDM();
	
	@Query(value = "SELECT * FROM DanhMuc WHERE id_dm = (SELECT ID_DM FROM SanPham WHERE id_sp = ?1)", nativeQuery = true)
	Category findById_SP(int id_sp);
}