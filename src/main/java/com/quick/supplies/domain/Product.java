package com.quick.supplies.domain;

import java.io.Serializable;
import java.math.BigDecimal;

import org.springframework.web.multipart.MultipartFile;


public class Product implements Serializable{

	private static final long serialVersionUID = 3678107792576131001L;
	         
	         private int proId;
	         private String productId;
			 private String owner;
			 private BigDecimal unitPrice;
			 private String description;
			 private String product;
			 private String location;
			 private String weight;
			 private String contact;
			 private String quantity;
			 
			 
			 private MultipartFile productImage;
			 
			

			public Product(int proId) {
				super();
				this.proId = proId;
			}

			public Product() {
				super();
				// TODO Auto-generated constructor stub
			}

			public MultipartFile getProductImage() {
				return productImage;
			}

			public void setProductImage(MultipartFile productImage) {
				this.productImage = productImage;
			}
			
			private MultipartFile productManual;

			public Product( String productId, BigDecimal unitPrice) {
				super();
				
				this.productId = productId;
				this.unitPrice = unitPrice;
				
			}

			public String getProductId() {
				return productId;
			}

			public void setProductId(String productId) {
				this.productId = productId;
			}

			public BigDecimal getUnitPrice() {
				return unitPrice;
			}

			public void setUnitPrice(BigDecimal unitPrice) {
				this.unitPrice = unitPrice;
			}

			public String getDescription() {
				return description;
			}

			public void setDescription(String description) {
				this.description = description;
			}
		
			public MultipartFile getProductManual() {
				return productManual;
			}

			public void setProductManual(MultipartFile productManual) {
				this.productManual = productManual;
			}

			

			public String getOwner() {
				return owner;
			}

			public void setOwner(String owner) {
				this.owner = owner;
			}

			public String getProduct() {
				return product;
			}

			public void setProduct(String product) {
				this.product = product;
			}

			public String getLocation() {
				return location;
			}

			public void setLocation(String location) {
				this.location = location;
			}

			public String getWeight() {
				return weight;
			}

			public void setWeight(String weight) {
				this.weight = weight;
			}

			public int getProId() {
				return proId;
			}

			public void setProId(int proId) {
				this.proId = proId;
			}

			public String getContact() {
				return contact;
			}

			public void setContact(String contact) {
				this.contact = contact;
			}

			public String getQuantity() {
				return quantity;
			}

			public void setQuantity(String quantity) {
				this.quantity = quantity;
			}		 
}
