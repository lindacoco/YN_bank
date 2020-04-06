package com.yi.dao;

import java.sql.SQLException;
import java.util.List;

import com.yi.dto.Card;
import com.yi.dto.CardInfo;
import com.yi.dto.Customer;

public interface CardDao {
	public abstract List<Card> showCards() throws SQLException;
	public abstract List<Card> showCardsByBusiness() throws SQLException;
	public abstract Card showCardByCardNumAndCustName(Card card) throws SQLException;
	public abstract List<Card> showCardByCustName(Card card) throws SQLException;
	public abstract List<Card> showCardByPlanName(Card card) throws SQLException;
	public abstract List<Card> showCardByCheckCard(Customer customer) throws SQLException;
	public abstract List<Card> showCardByCreditCard(Customer customer) throws SQLException;
	public abstract Card showCardByAccountNum(Card card) throws SQLException;
	public Card showCardByCheckAccountNum(Card card) throws SQLException;
	public abstract int insertCardCheck(Card card) throws SQLException;
	public abstract int insertCardCredit(Card card) throws SQLException;
	public abstract int updateCard(Card card) throws SQLException;
	public abstract int deleteCard(Card card) throws SQLException;
	public abstract List<CardInfo> showCardInfoDaily() throws SQLException;
	public abstract List<CardInfo> showCardInfoWeekly() throws SQLException;
	public abstract List<CardInfo> showCardInfoMonthly() throws SQLException;
	public abstract List<CardInfo> showCardInfoYearly() throws SQLException;
	public abstract List<CardInfo> showCardInfo() throws SQLException;
	public abstract int updateAccountBalance(Card card) throws SQLException;
}
