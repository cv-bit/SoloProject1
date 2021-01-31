package com.cameron.SoloProject1.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.cameron.SoloProject1.models.Item;

@Repository
public interface ItemRepository extends CrudRepository<Item, Long>{
	List<Item> findAll();
}
