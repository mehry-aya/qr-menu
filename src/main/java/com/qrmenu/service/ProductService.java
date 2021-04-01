package com.qrmenu.service;

import com.qrmenu.domain.Product;
import com.qrmenu.repository.ProductRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Transactional
@Service
public class ProductService {
    private final Logger log = LoggerFactory.getLogger(ProductService.class);
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public Product addProduct(Product products){
        return this.productRepository.save(products);
    }

    public List<Product> findAllProducts(){
        return this.productRepository.findAll();
    }

    public Product getProduct(Product products){
        return this.productRepository.getOne(products.getId());
    }

    public Product updateProduct(Product products){
        Optional <Product> optionalProduct = this.productRepository.findById(products.getId());
        if (optionalProduct.isPresent()){
            Product product = optionalProduct.get();
            product.setName(products.getName());
            product.setDescription(products.getDescription());
            product.setPrice(products.getPrice());
            product.setImage(products.getImage());
            return this.productRepository.save(product);
        }else{
            throw new NotFoundObjectException();
        }
    }

    public void deleteProduct (Product products){
        this.productRepository.deleteById(products.getId());
    }
}
