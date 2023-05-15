package com.codingdojo.safetravel.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.safetravel.models.Expense;
import com.codingdojo.safetravel.repositories.ExpenseRepo;

@Service
public class ExpenseServices {
	
	@Autowired
	private ExpenseRepo expenseRepo;
	
	public List<Expense> allItems(){
		return expenseRepo.findAll();
	}
	
	public Expense createOrUpdate(Expense expense) {
		return expenseRepo.save(expense);
	}
	
	public Expense findExpenseById(long id) {
		return expenseRepo.findById(id).orElse(null);
	}
	
	public void deleteItem(Long id) {
		expenseRepo.deleteById(id);
	}
}
