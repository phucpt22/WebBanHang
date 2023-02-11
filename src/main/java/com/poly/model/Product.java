package com.poly.model;

import java.util.List;

import jakarta.persistence.Entity;

import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int MaSP;
	String TenSP;
	boolean TrangThai = true;
	String Anh;
	double Gia;
	int SLTonkho;
	String MoTa;
	boolean TT_XoaSP = false;
	@ManyToOne
	@JoinColumn(name = "MaDM")
	Category MaDM;
	@OneToMany(mappedBy = "SanPham")
	List<DetailOrder> dondatchitiet;
	@OneToMany(mappedBy = "SanPham")
	List<Feedback> danhgia;
}
