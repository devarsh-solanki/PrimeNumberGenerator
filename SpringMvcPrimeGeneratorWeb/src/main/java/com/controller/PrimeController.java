package com.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.entities.Prime;
import com.prime.NativePrime1;
import com.prime.NativePrime2;
import com.prime.SieveBooleanPrimeMethod;
import com.prime.SieveOfEratosthenes;
import com.services.PrimeService;

@Controller
public class PrimeController {

	@Autowired
	PrimeService primeService;

	@ModelAttribute
	public void all(Model model) {
		model.addAttribute("title", "PRIME GENERATOR WEB-APP");
	}

	@RequestMapping("/")
	public String home() {
		return "index";
	}

	@RequestMapping("/addPrime")
	public String addPrime() {
		return "add_prime";
	}

	@RequestMapping(path = "/SavePrime", method = RequestMethod.POST)
	public RedirectView savePrime(@ModelAttribute Prime prime, HttpServletRequest request, Model model) {

		String strategy = prime.getPrimeStrategy();
		int lower = prime.getLowerLimit();
		int upper = prime.getUpperLimit();

		try {

			if (strategy.equals("NativePrime1")) {
				long start1 = System.currentTimeMillis();
				String str1 = NativePrime1.nativePrime1(lower, upper);
				long end1 = System.currentTimeMillis();

				prime.setList(str1);
				prime.setExecutionTime(end1 - start1);

			} else if (strategy.equals("NativePrime2")) {
				long start2 = System.currentTimeMillis();
				String str2 = NativePrime2.nativePrime2(lower, upper);
				long end2 = System.currentTimeMillis();

				prime.setList(str2);
				prime.setExecutionTime(end2 - start2);

			} else if (strategy.equals("SieveOfEratosthenes")) {
				long start3 = System.currentTimeMillis();
				String str3 = SieveOfEratosthenes.sieveOfEratosthenes(lower, upper);
				long end3 = System.currentTimeMillis();

				prime.setList(str3);
				prime.setExecutionTime(end3 - start3);

			} else if (strategy.equals("SieveBooleanPrimeMethod")) {
				long start4 = System.currentTimeMillis();
				String str4 = SieveBooleanPrimeMethod.sieveBooleanPrimeMethod(lower, upper);
				long end4 = System.currentTimeMillis();

				prime.setList(str4);
				prime.setExecutionTime(end4 - start4);

			} else {
				System.out.println("Invalid input !!!");
			}

		} catch (Exception e) {
			System.out.println("Exception : " + e.getMessage());
		}

		prime.setTime(new Date());
		System.out.println(prime);
		this.primeService.save(prime);

		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/showPrime");
		return redirectView;
	}

	@RequestMapping("/showPrime")
	public String showPrime(Model model) {
		List<Prime> primes = this.primeService.getAll();
		model.addAttribute("primeList", primes);
		return "show_primes";
	}

	@RequestMapping("/deletePrime/{id}")
	public RedirectView deletePrime(@PathVariable("id") int id, HttpServletRequest request, Model model) {
		this.primeService.delete(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/showPrime");
		return redirectView;
	}

}
