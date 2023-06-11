package com.quick.supplies.service;

import java.util.List;

import com.quick.supplies.domain.Admin;

public interface AdminService {

	void addPriceTrends(Admin admin);
		
	void addOrder(Admin admin);
	
	List <Admin> getAllPriceTrends();
	
    public void updatePriceTrends(Admin admin);
	
	public void deletePriceTrends(int priceTrend_id);
	 
	public Admin findPriceTrendsById(int priceTrend_id);
}
