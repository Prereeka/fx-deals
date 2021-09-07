package com.cis.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cis.model.Deal;
import com.cis.service.DealService;

@Controller
public class DealController {

	@Autowired
	private DealService dealService;

	@GetMapping("/")
	public ModelAndView mainPage() {
		ModelAndView mv = new ModelAndView("index");
		mv.addObject("isoCurrencyCodes", dealService.getIsoCurrencyCodes());
		return mv;
	}

	@PostMapping("/save-deal")
	public String saveDeal(@Valid @ModelAttribute("dealDetails") Deal dealDetails, BindingResult bindingResult) {
		System.out.println("deal detail" + dealDetails);
		if (bindingResult.hasErrors()) {
			return "Please enter value to all fields.";
		}

		dealService.saveDeal(dealDetails);
		return "Successfully saved!";
	}

}
