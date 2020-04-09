package com.yi.dao;

import java.sql.SQLException;
import java.util.List;

import com.yi.dto.Cust_dw_audit;
import com.yi.dto.Customer;

public interface CustomerDao {
	
	abstract List<Customer> selectCustomerAll() throws SQLException;
	abstract List<Customer> selectCustomerByNormal() throws SQLException;
	abstract List<Customer> selectCustomerByBusiness() throws SQLException;
	abstract List<Customer> selectCustomerBalance() throws SQLException;
	abstract List<Customer> selectCustomerByName(String custName) throws SQLException;
	abstract List<Customer> selectBusinessCust() throws SQLException;
	abstract List<Customer> selectNormalCust() throws SQLException;
	abstract List<Customer>  selectCustomerByCode(String custCode) throws SQLException;
	abstract List<Customer> selectCustomerWhoHasAcc() throws SQLException;
	abstract List<Customer> selectCustomerWHasAccByCode(String custCode) throws SQLException;
	abstract List<Customer> selectCustomerWHasAccByName(String custName) throws SQLException;
	abstract List<Customer> selectCustomerWHasAccByTel(String custTel) throws SQLException;
	abstract Customer selectCustomerByTel(String custTel) throws SQLException;
	abstract List<Customer> selectCustomerBankInfoByName (String custName) throws SQLException;
	abstract List<Customer> selectCustomerBankInfoByAcc (String accountNum) throws SQLException;
	abstract List<Cust_dw_audit> selectCust_dw_audit() throws SQLException;
	abstract List<Cust_dw_audit> selectCust_dw_auditByAcc(String accountNum) throws SQLException;
	abstract List<Cust_dw_audit> selectCust_dw_auditByName(String custName) throws SQLException;
	abstract List<Cust_dw_audit> selectCust_dw_auditByDate(String date) throws SQLException;
	abstract int selectNormalCustNum() throws SQLException; 
	abstract int selectVIPCustNum() throws SQLException;
	abstract int select5CreditCustNum() throws SQLException;
	abstract int select4CreditCustNum() throws SQLException;
	abstract int select3CreditCustNum() throws SQLException;
	abstract int select2CreditCustNum() throws SQLException;
	abstract List<String> selectCustExistChk() throws SQLException;
	abstract void insertCustomer(Customer customer) throws SQLException;
	abstract int updateCustomer (Customer customer) throws SQLException;
	abstract int deleteCustomer (Customer customer) throws SQLException;
}
