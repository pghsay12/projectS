package com.model2.mvc.service.product;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Product;
import com.model2.mvc.service.domain.Purchase;
import com.model2.mvc.service.domain.User;


public interface ProductService {
	
	
	public void addProduct(Product product) throws Exception;
	
	
	public Product getProduct(int prodNo) throws Exception;
	
	
	public Map<String , Object> getProductList(Search search,String menu) throws Exception;
	
	
	public void updateProduct(Product product) throws Exception;
	
	public List<String> productGetName() throws Exception;
	
	public void updateCnt(Purchase purchase) throws Exception;
	
}