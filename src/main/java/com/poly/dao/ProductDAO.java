package com.poly.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.poly.model.Product;

public interface ProductDAO extends JpaRepository<Product, Integer> {
	// Lệnh query jpql tìm tất cả sản phẩm có danh mục bằng id danh mục
	@Query("SELECT p FROM SanPham p WHERE p.DanhMuc.MaDM = ?1")
	List<Product> findAllByIdDM(Integer id_dm);
	
	@Query("SELECT p FROM SanPham p WHERE p.TenSP = ?1 and p.Gia = ?2")
	Product findByName(String tensp, double gia);
	
	//------------------ TÌM SẢN PHẨM THEO TÊN -------------------
	@Query( "SELECT o FROM SanPham o WHERE o.TenSP LIKE %?1%")
	List<Product> findProductByName(String keywords);
	//------------------ END -------------------------------------
		
	//------------------ LỌC THEO GIÁ ----------------------------
	@Query("SELECT o FROM SanPham o WHERE o.Gia BETWEEN ?1 AND ?2")
	List<Product> findByPrice(double min, double max);	
	//------------------ END -------------------------------------
}
