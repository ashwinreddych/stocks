package com.ashwin.stocks.controller;

import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ashwin.stocks.bean.Stock;
import com.ashwin.stocks.repository.StockRepository;

@Controller
public class StocksController {
	
	@Value("${message:test}")
	private String message = "";
	
	@Autowired
	private StockRepository stockRepository;
	
	@RequestMapping(method=RequestMethod.GET, value= "/")
	public String welcome(Map<String, Object> model) {
		model.put("message", this.message);
		model.put("stock", new Stock());
		return "index";
	}

	@RequestMapping(method=RequestMethod.POST, value= "/addTicker")
	public String addTicker(@Valid @ModelAttribute("stock") Stock stock, 
		      BindingResult result, ModelMap model) {
		
		if (result.hasErrors()) {
			model.put("error", "Invalid Parameters");
			model.put("message", this.message);
            return "index";
        }
		
		this.stockRepository.save(stock);
		model.put("message", this.message);
		model.put("ticker", stock.getStockName() + " added Sucessfully. Stock Id is " + stock.getId());
		return "index";
	}
	
	@RequestMapping(method=RequestMethod.GET, value= "/viewTicker")
	public String viewTicker(ModelMap model) {
		
		
		List<Stock> stocksList = this.stockRepository.findAll();
		model.put("message", this.message);
		model.put("stocksList", stocksList);
		return "view";
	}
	
	
	@RequestMapping(method=RequestMethod.POST, value= "/delete")
	public String deleteData(ModelMap model) {
		
		this.stockRepository.deleteAll();
		model.put("message", this.message);
		model.put("stock", new Stock());
		return "index";
	}
}
