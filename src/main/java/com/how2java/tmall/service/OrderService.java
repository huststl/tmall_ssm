package com.how2java.tmall.service;
 
import java.util.List;

import com.how2java.tmall.pojo.Order;
import com.how2java.tmall.pojo.OrderItem;

public interface OrderService {

    String waitPay = "waitPay";
    String waitDelivery = "waitDelivery";
    String waitConfirm = "waitConfirm";
    String waitReview = "waitReview";
    String finish = "finish";
    String delete = "delete";

    void add(Order c);

    float add(Order c, List<OrderItem> ois);
    void delete(int id);
    void update(Order c);
    Order get(int id);
    List list();
}