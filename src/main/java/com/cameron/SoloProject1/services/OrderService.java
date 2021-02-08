package com.cameron.SoloProject1.services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cameron.SoloProject1.models.Item;
import com.cameron.SoloProject1.models.Order;
import com.cameron.SoloProject1.repositories.OrderRepository;

@Service
public class OrderService {
	@Autowired
	private OrderRepository oRepo;
	
	public OrderService(OrderRepository repo) {
		this.oRepo = repo;
	}
	
	public List<Order> getAllOrders(){
		return this.oRepo.findAll();
	}
	
	public Order getSingleOrder(Long id) {
		return this.oRepo.findById(id).orElse(null);
	}
	
	public Order createOrder(Order newOrder) {
		return this.oRepo.save(newOrder);
	}
	
	public void deleteOrder(Long id) {
		this.oRepo.deleteById(id);
	}
	
	public Order updateOrder(Order order) {
		return this.oRepo.save(order);
	}
	
	public void addItem(Order order, Item item) {
		List<Item> buys = order.getBuys();
		buys.add(item);
		order.setBuys(buys);
		this.oRepo.save(order);
	}
	
	public void removeItem(Order order, Item item) {
		List<Item> customer = order.getBuys();
		customer.remove(item);
		this.oRepo.save(order);
	}
}
