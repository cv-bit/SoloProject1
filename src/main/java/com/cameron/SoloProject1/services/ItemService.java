package com.cameron.SoloProject1.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cameron.SoloProject1.models.Item;
import com.cameron.SoloProject1.repositories.ItemRepository;

@Service
public class ItemService {
	@Autowired
	private ItemRepository iRepo;
	
	public ItemService(ItemRepository repo) {
		this.iRepo = repo;
	}
	
	public List<Item> getItems() {
		return (List<Item>) this.iRepo.findAll();
	}
	
	public Item getById(Long id) {
		return this.iRepo.findById(id).orElse(null);
	}
}
