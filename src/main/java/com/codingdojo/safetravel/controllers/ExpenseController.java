package com.codingdojo.safetravel.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.codingdojo.safetravel.models.Expense;
import com.codingdojo.safetravel.services.ExpenseServices;

import jakarta.validation.Valid;

@Controller
public class ExpenseController {
	
	@Autowired
	private ExpenseServices services;
	
	@GetMapping("/")
	public String rView(Model model) {
		List<Expense> expenses = services.allItems();
		model.addAttribute("expenses", expenses);
		return "TravelView.jsp";
	}
	
	@GetMapping("/detail/{id}")
	public String rDetails(@PathVariable("id") Long id, Model model) {
		model.addAttribute("expense", services.findExpenseById(id));
		return "TravelDetails.jsp";
	}
	
	
	@GetMapping("/create")
	public String rCreate(@ModelAttribute("expenseObject") Expense expense) {
	    return "TravelAdd.jsp";
	}
	
	@PostMapping("/createExpense")
	public String pCreate(@Valid @ModelAttribute("expenseObject") Expense expense, BindingResult result) {
		if (result.hasErrors()) {
			return "TravelAdd.jsp";
		}
		else {
			services.createOrUpdate(expense);
			return "redirect:/";
		}
	}
	
	
	@GetMapping("/update/{id}")
	public String editPage(@PathVariable("id") Long id, Model model) {
		model.addAttribute("expenseObject", services.findExpenseById(id));
		return "TravelEdit.jsp";
	}
	
	@PutMapping("/updateExpense/{id}")
	public String updateItem(@Valid @ModelAttribute("expenseObject") Expense expense, BindingResult result) {
		if(result.hasErrors()) {
			return "TravelEdit.jsp";
		} else {
			services.createOrUpdate(expense);
			return "redirect:/";
		}
	}
	
	@DeleteMapping("/delete/{id}")
	public String delete(@PathVariable("id") Long id) {
		services.deleteItem(id);
		return "redirect:/";
	}
	
	
	
}
