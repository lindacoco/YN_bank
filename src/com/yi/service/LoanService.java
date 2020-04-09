package com.yi.service;

import java.sql.SQLException;
import java.util.List;

import com.yi.dao.CustomerDao;
import com.yi.dao.LoanDao;
import com.yi.dao.PlanDao;
import com.yi.dao.impl.CustomerDaoImpl;
import com.yi.dao.impl.LoanDaoImpl;
import com.yi.dao.impl.PlanDaoImpl;
import com.yi.dto.Customer;
import com.yi.dto.Loan;
import com.yi.dto.LoanInfo;
import com.yi.dto.Plan;

public class LoanService {
	private LoanDao loanDao;
	private CustomerDao custDao;
	private PlanDao planDao;
	public LoanService() {
		loanDao = LoanDaoImpl.getInstance();
		custDao = CustomerDaoImpl.getInstance();
		planDao = PlanDaoImpl.getInstance();
	}
	public List<Loan> showLoans() throws SQLException {
		return loanDao.showLoans();
	}
	public List<Loan> showLoansByNormal() throws SQLException {
		return loanDao.showLoansNormal();
	}
	public List<Loan> showLoansByBusiness() throws SQLException {
		return loanDao.showLoansBuisness();
	}
	public List<Loan> showLoanByCustName(Loan loan) throws SQLException {
		return loanDao.showLoanByCustName(loan);
	}
	public int insertLoan(Loan loan) throws SQLException {
		return loanDao.insertLoan(loan);
	}
	public int updateLoan(Loan loan) throws SQLException {
		return loanDao.updateLoan(loan);
	}
	public int deleteLoan(Loan loan) throws SQLException {
		return loanDao.deleteLoan(loan);
	}
	public List<Customer> showCust() throws SQLException {
		return custDao.selectCustomerAll();
	}
	public List<LoanInfo> showLoanInfo() throws SQLException {
		return loanDao.showLoanInfo();
	}
	public List<Loan> searchLoanAccountNum(Loan loan) throws SQLException {
		return loanDao.searchLoanAccountNums(loan);
	}
	public List<Loan> searchLoanCustName(Loan loan) throws SQLException {
		return loanDao.searchLoanCustNames(loan);
	}
	public List<Loan> searchLoanPlanName(Loan loan) throws SQLException {
		return loanDao.searchLoanPlanNames(loan);
	}
	public Loan showLoanByLoanAccountNumAndCustName(Loan loan) throws SQLException {
		return loanDao.showLoanByLoanAccountNumAndCustName(loan);
	}
	public List<Plan> selectPlanByLoanCustomerNormal() throws SQLException {
		return planDao.selectPlanByLoanCustomerNormal();
	}
	public List<Plan> selectPlanByLoanCustomerVip() throws SQLException {
		return planDao.selectPlanByLoanCustomerVip();
	}
	public List<Plan> selectPlanByLoanBusinessNormal() throws SQLException {
		return planDao.selectPlanByLoanBusinessNormal();
	}
	public List<Plan> selectPlanByLoanBusinessVip() throws SQLException {
		return planDao.selectPlanByLoanBusinessVip();
	}
}
