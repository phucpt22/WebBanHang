package com.poly.controller;

import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.dao.CategoryDAO;
import com.poly.dao.ProductDAO;
import com.poly.model.Category;
import com.poly.model.MucGioHang;
import com.poly.model.Product;
import com.poly.service.ParamService;
import com.poly.shopping.CartService;


@Controller
public class ProductsController {
	@Autowired
	CategoryDAO dmDAO;
	@Autowired
	ProductDAO spDAO;
	@Autowired
	CartService cartService;
	@Autowired
	ParamService paramService;
	
	@RequestMapping("/trangchu")
	public String getTrangChu(Model model)
	{
		hienThiGioHang(model);
		return "/views/user/index";
	}
	
	@RequestMapping("/ds-Product")
	public String getDsProduct(Model model)
	{
		hienThiGioHang(model);
		// Hiển thị tất cả sản phẩm trong dữ liệu
		List<Product> dsProduct = getListProduct();
		model.addAttribute("dsProduct", dsProduct);
		return "/views/user/index";
	}
	
	@RequestMapping("/ds-Product/id_dm={id}")
	public String locSPTheoDS(@PathVariable("id") Integer id_dm, Model model)
	{
		hienThiGioHang(model);
		// Hiển thị tất cả sản phẩm theo id danh mục
		List<Product> dsProduct = getListProduct_TheoDM(id_dm);
		model.addAttribute("dsProduct", dsProduct);
		return "/views/user/index";
	}
	
	@RequestMapping("/Product/id_sp={id}")
	public String ProductChiTiet(@PathVariable("id") Integer id_sp, Model model)
	{
		hienThiGioHang(model);
		// Lấy 1 sản phẩm từ danh sách sản phẩm bằng id
		for (int i = 0; i < getListProduct().size(); i++) {
			if (getListProduct().get(i).getMaSP() == id_sp) {
				Product Product = getListProduct().get(i);
				model.addAttribute("spchitiet", Product);
//				if (cart.getCount() != 0) {
//					model.addAttribute("tongGio", cart.getCount());
//				} else {
//					model.addAttribute("tongGio", 0);
//				}
			}
		}
		return "/views/user/detail";
	}
	
	public void hienThiGioHang(Model model) {
		// Hiển thị tất cả sản phẩm đã chọn trong giỏ hàng
		Collection<MucGioHang> cartItems = cartService.getAllItems();
		model.addAttribute("cart", cartItems);
		// Hiển thị số lượng sản phẩm có trong giỏ hàng
		model.addAttribute("total", cartService.getCount());
		// Hiển thị tổng tiền tất cả sản phẩm trong giỏ hàng
		model.addAttribute("totalAmount", cartService.getAmount());
		
		int update_soluong = paramService.getInt("update_soluong", 1);
		System.out.println(update_soluong);
	}
	
	// ------------------------ TÌM THEO TÊN SP ------------------------------
	@PostMapping("/search/keywords={tensp}")
	public String search(@PathVariable("tensp") String keywords, Model model) {
		hienThiGioHang(model);
		
		String search = paramService.getString("tensp", "");
		List<Product> searchsp = spDAO.findProductByName(keywords);
		model.addAttribute("searchsp", search);
		model.addAttribute("dsProduct", searchsp);
		
		return "/views/user/index";
	}
	// ------------------------- END TÌM TÊN SP---------------------------------

	// ------------------------ LỌC THEO GIÁ ----------------------------------
	@PostMapping("/search/price")
	public String searchGia(Model model, @RequestParam("price") double price ) {
		hienThiGioHang(model);
		
		try {
			List<Product> sr_price = null;
			if (price == 1) {
				model.addAttribute("price", price);
				sr_price = spDAO.findByPrice(0, 10000000);
			} else if (price == 2) {
				model.addAttribute("price", price);
				sr_price = spDAO.findByPrice(11000000, 12000000);
			} else if (price == 3) {
				model.addAttribute("price", price);
				sr_price = spDAO.findByPrice(13000000, 14000000);
			} else if (price == 4) {
				model.addAttribute("price", price);
				sr_price = spDAO.findByPrice(15000000, 16000000);
			} else if (price == 5) {
				model.addAttribute("price", price);
				sr_price = spDAO.findByPrice(17000000, 50000000);
			}		

			model.addAttribute("sr_price", sr_price);
			model.addAttribute("dsProduct",sr_price);			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "/views/user/index";
	}
	// ----------------------- END LỌC THEO GIÁ ---------------------------------
	
	// Lấy tất cả dữ liệu trong Category
	//@ModelAttribute("DM_CayCanh")
	@ModelAttribute("DM_SP")
	public List<Category> getListMD()
	{
		return dmDAO.findAllByDM();
	}

	
	// Lấy tất cả dữ liệu trong Product
	public List<Product> getListProduct()
	{
		return spDAO.findAll();
	}
	
	// Lấy tất cả dữ liệu trong Product
	public List<Product> getListProduct_TheoDM(Integer id)
	{
		return spDAO.findAllByIdDM(id);
	}
}
