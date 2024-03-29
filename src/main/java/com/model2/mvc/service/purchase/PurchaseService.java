package com.model2.mvc.service.purchase;

import java.util.HashMap;
import java.util.Map;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Product;
import com.model2.mvc.service.domain.Purchase;


public interface PurchaseService {

	public void addPurchase(Purchase purchase) throws Exception;
	
	public Purchase getPurchase1(int tranNo) throws Exception;
	
	public Purchase getPurchase2(int ProdNo) throws Exception;
	
	public Map<String, Object> getPurchaseList(Search search, String buyerId) throws Exception;
	
	public HashMap<String,Object> getSaleList(Search searchVO) throws Exception;
	
	public void updatePurcahse(Purchase purchase) throws Exception;
	
	public Purchase updateTranCode(Purchase purchase) throws Exception;
	
}