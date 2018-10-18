package com.ashwin.stocks.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import com.ashwin.stocks.bean.Stock;
 
public interface StockRepository extends MongoRepository<Stock, Integer> {
  
}
