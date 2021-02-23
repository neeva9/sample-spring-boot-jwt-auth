package com.demo.shoppingcart.repository;

import com.demo.shoppingcart.entity.Cart;
import com.demo.shoppingcart.entity.OrderInfo;
import com.demo.shoppingcart.entity.Orders;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CartRepository extends CrudRepository<Cart, Integer> {

    @Query(value = "select * from dbo.CART where PROFILE_ID= ?1 and PRDT_ID= ?2", nativeQuery = true)
    Cart findByProfileIdAndPrdtId(String profileId, String productId);
}