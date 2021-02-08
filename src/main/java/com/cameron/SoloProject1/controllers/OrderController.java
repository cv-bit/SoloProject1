package com.cameron.SoloProject1.controllers;

import java.util.List;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import com.cameron.SoloProject1.models.Item;
import com.cameron.SoloProject1.models.Order;
import com.cameron.SoloProject1.services.ItemService;
import com.cameron.SoloProject1.services.OrderService;

@Controller
public class OrderController {
	@Autowired
	private OrderService oService;
	@Autowired
	private ItemService iService;
	
	@GetMapping("/")
	public String root() {
		return "home.jsp";
	}
	
	@GetMapping("/cart/{id}")
	public String updateCart(@PathVariable("id") Long id, Model viewModel, HttpSession session) {		
		session.setAttribute("order", id);
		viewModel.addAttribute("order", oService.getSingleOrder(id));
		return "/cart.jsp";
	}
	
	@GetMapping("/newOrder")
	public String newOrder(Model model) {
		model.addAttribute("order", new Order());
		return "newOrder.jsp";
	}
	
	@GetMapping("/order/{id}")
	public String addItems(@PathVariable("id") Long id,Model viewModel, @ModelAttribute("Item") Item item, HttpSession session) {
		session.setAttribute("order", id);
		List<Item> allItem = this.iService.getItems();
		viewModel.addAttribute("allItem", allItem);
		return "order.jsp";
	}
	
	@PostMapping("/newOrder")
	public String newOrder(@Valid @ModelAttribute("order") Order order, BindingResult result, HttpSession session) {
		if(result.hasErrors()) {
			return "newOrder.jsp";
		}
		this.oService.createOrder(order);
		Long id = order.getId();
		return "redirect:/cart/" + id;
	}

	@GetMapping("delete/{id}")
	public String deleteOrder(@PathVariable("id")Long id) {
		this.oService.deleteOrder(id);
		return "redirect:/";
	}
	
	@GetMapping("/buy/{id}")
	public String addItem(@PathVariable("id") Long id, HttpSession session, Model viewModel) {
		Long OrderId = (Long)session.getAttribute("order");
		Long ItemId = id;
		Order customer = this.oService.getSingleOrder(OrderId);
		Item buys = this.iService.getById(ItemId);
		this.oService.addItem(customer, buys);
		return "redirect:/order/" + OrderId;
	}
	
	@GetMapping("/unBuy/{id}")
	public String unlike(@PathVariable("id") Long id, HttpSession session) {
		Long OrderId = (Long)session.getAttribute("order");
		Long ItemId = id;
		Order order = this.oService.getSingleOrder(OrderId);
		Item buys = this.iService.getById(ItemId);
		this.oService.removeItem(order, buys);
		return "redirect:/cart/${id}";
	}
}

