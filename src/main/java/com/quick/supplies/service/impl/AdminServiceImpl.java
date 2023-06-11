package com.quick.supplies.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.quick.supplies.domain.Admin;
import com.quick.supplies.domain.repository.AdminRepository;
import com.quick.supplies.service.AdminService;

@Service
public class AdminServiceImpl implements AdminService{

	@Autowired
	 private AdminRepository adminRepository;
	
	@Override
	public void addPriceTrends(Admin admin) {
		adminRepository.addPriceTrends(admin);		
	}

	@Override
	public List<Admin> getAllPriceTrends() {
		return adminRepository.getAllPriceTrends();
	}

	@Override
	public void updatePriceTrends(Admin admin) {
		adminRepository.updatePriceTrends(admin);
	}

	@Override
	public void deletePriceTrends(int priceTrend_id) {
		adminRepository.deletePriceTrends(priceTrend_id);
	}

	@Override
	public Admin findPriceTrendsById(int priceTrend_id) {
		return adminRepository.findPriceTrendsById(priceTrend_id);
	}

	@Override
	public void addOrder(Admin admin) {
		adminRepository.addOrder(admin);
	}

}
