package com.how2java.tmall.mapper;

import com.how2java.tmall.util.Page;
import com.how2java.tmall.pojo.Category;
 
import java.util.List;
 
public interface CategoryMapper {
     List<Category> list(Page page);

     int total();

     void add(Category category);
}