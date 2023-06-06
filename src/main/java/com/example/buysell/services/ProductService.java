package com.example.buysell.services;

import com.example.buysell.models.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ProductService {
    private List<Product> products = new ArrayList<>();
    private long ID = 0;

    {
        products.add(new Product(++ID,"PlayStation 5", "Simple description",400000 , "Almaty", "Ilyas"));
        products.add(new Product(++ID,"Iphone 10", "Simple description", 500000, "Astana", "Maksat"));
    }

    public List<Product> listProducts() {
        return products;
    }

    public void saveProduct(Product product){
        product.setId(++ID);
        products.add(product);
    }

    public void deleteProduct(Long id){
        products.removeIf(product -> product.getId().equals(id));
    }

    public Product getProductById(Long id){
        for(Product product : products){
            if(product.getId().equals(id)) return product;
        }
        return null;
    }
}
