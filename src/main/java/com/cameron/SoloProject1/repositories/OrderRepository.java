package com.cameron.SoloProject1.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cameron.SoloProject1.models.Order;
@Repository
public interface OrderRepository extends CrudRepository<Order, Long>{
	List<Order> findAll();
}
