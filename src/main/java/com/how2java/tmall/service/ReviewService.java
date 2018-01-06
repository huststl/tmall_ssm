package com.how2java.tmall.service;
 
import java.util.List;

import com.how2java.tmall.pojo.Review;

public interface ReviewService {
     

    void add(Review c);

    void delete(int id);
    void update(Review c);
    Review get(int id);
    List list(int pid);

    int getCount(int pid);
}