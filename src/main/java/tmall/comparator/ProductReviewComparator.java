package tmall.comparator;

import com.how2java.tmall.pojo.Product;

import java.util.Comparator;

public class ProductReviewComparator implements Comparator<Product>{
    @Override
    public int compare(Product p1, Product p2) {

        return p1.getReviewCount()-p2.getReviewCount();
    }
}
