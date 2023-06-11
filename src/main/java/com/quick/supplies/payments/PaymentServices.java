package com.quick.supplies.payments;

import java.util.*;

import com.paypal.api.payments.*;
import com.paypal.base.rest.*;

public class PaymentServices {

	private static final String CLIENT_ID = "AX1a9pF7ZfoozSTw9MID7hAbhZWS7yeeBWZTdsR5L-1HZD_xMkAmDCIMZB0uuZvopDXJNVD8XWFseJWH";
    private static final String CLIENT_SECRET = "EDhiiKCRj0_lANObENeiLvN_YKtAs4mw-JdBBpHDaT92qI6HROwPTdSCWcUiKlk2F9htmLKfTBuTxj3b";
    private static final String MODE = "sandbox";
 
    public String authorizePayment(OrderDetail orderDetail)        
            throws PayPalRESTException {       
        
    	Payer payer = getPayerInformation();
    	RedirectUrls redirectUrls = getRedirectURLs();
    	List<Transaction> listTransaction = getTransactionInformation(orderDetail);
    	
    	Payment requestPayment = new Payment();
    	requestPayment.setTransactions(listTransaction)
                      .setRedirectUrls(redirectUrls)
                      .setPayer(payer)
                      .setIntent("authorize");
    	
    	APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);
    	
    	Payment approvedPayment = requestPayment.create(apiContext);
    	
        return getApprovalLink(approvedPayment);
    }
    
    private String getApprovalLink(Payment approvedPayment) {
        List<Links> links = approvedPayment.getLinks();
        String approvalLink = null;
         
        for (Links link : links) {
            if (link.getRel().equalsIgnoreCase("approval_url")) {
                approvalLink = link.getHref();
                break;
            }
        }      
         
        System.out.println(approvedPayment);
        
        return approvalLink;
    }
    
    private List<Transaction> getTransactionInformation(OrderDetail orderDetail) {
		Details details = new Details();
		details.setShipping(orderDetail.getShipping());
		details.setSubtotal(orderDetail.getSubtotal());
	    details.setTax(orderDetail.getTax());
		
	    Amount amount = new Amount();
	    amount.setCurrency("USD");
	    amount.setTotal(orderDetail.getTotal());
	    amount.setDetails(details);
	    
	    Transaction transaction = new Transaction();
	    transaction.setAmount(amount);
	    transaction.setDescription(orderDetail.getProductName());
	    
	    ItemList itemList = new ItemList();
	    List<Item> items = new ArrayList<>();
	    
	    Item item = new Item();
	     item.setCurrency("USD") 
	         .setName(orderDetail.getProductName())
	         .setPrice(orderDetail.getSubtotal())
	         .setTax(orderDetail.getTax())
	         .setQuantity("1");
	     
	     items.add(item);
	     itemList.setItems(items);
	     transaction.setItemList(itemList);
	    
	     List<Transaction> listTransaction = new ArrayList<>();
	     listTransaction.add(transaction); 
	     
    	return listTransaction;
    }

	private RedirectUrls getRedirectURLs() {
		RedirectUrls redirectUrls = new RedirectUrls();
    	redirectUrls.setCancelUrl("http://localhost:8029/PayPalTest/cancel");
    	redirectUrls.setReturnUrl("http://localhost:8029/PayPalTest/review_payment");
	
    	return redirectUrls;
	}
 
	public Payment getPaymentDetails(String paymentId) throws PayPalRESTException {
	    APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);
	    return Payment.get(apiContext, paymentId);
	}
	
	public Payment executePayment(String paymentId, String payerId)
	        throws PayPalRESTException {
	    PaymentExecution paymentExecution = new PaymentExecution();
	    paymentExecution.setPayerId(payerId);
	 
	    Payment payment = new Payment().setId(paymentId);
	 
	    APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);
	 
	    return payment.execute(apiContext, paymentExecution);
	} 
	
	private Payer getPayerInformation() {
		Payer payer = new Payer();
    	payer.setPaymentMethod("paypal");
    	
    	PayerInfo payerInfo = new PayerInfo();
    	payerInfo.setFirstName("nobert")
    	         .setLastName("okoth18")
    	         .setEmail("nobertokoth18@gmail.com");
    	
    	return payer;
	}
     
    
	
}
