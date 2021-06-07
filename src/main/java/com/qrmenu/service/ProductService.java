package com.qrmenu.service;

import com.qrmenu.domain.Category;
import com.qrmenu.domain.Product;
import com.qrmenu.repository.CategoryRepository;
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
    private final CategoryRepository categoryRepository;

    public ProductService(CategoryRepository categoryRepository, ProductRepository productRepository) {
        this.productRepository = productRepository;
        this.categoryRepository = categoryRepository;

    }

    public Product addProduct(Product products, long idCat){
       Product newProduct = this.productRepository.save(products);
//       Optional<Category> optionalCategory = this.categoryRepository.findById(idCat);
//       if (optionalCategory.isPresent()) {
//           Category category = optionalCategory.get();
//           category.getProducts().add(products);
//           this.categoryRepository.save(category);
//       }
        return newProduct;
    }

    public List<Product> findAllProducts(){
        return this.productRepository.findAll();
    }

    public Product getProduct(Long id){
        return this.productRepository.getOne(id);
    }

    public Product updateProduct(Product products){
        Optional <Product> optionalProduct = this.productRepository.findById(products.getId());
        if (optionalProduct.isPresent()){
            Product product = optionalProduct.get();
            product.setName(products.getName());
            product.setDescription(products.getDescription());
            product.setPrice(products.getPrice());
            product.setImage(products.getImage());
            product.setRating(products.getRating());
            product.setCategory(products.getCategory());
            product.setLevel(products.getLevel());

            return this.productRepository.save(product);
        }else{
            throw new NotFoundObjectException();
        }
    }

    public void deleteProduct (Product products){
        this.productRepository.deleteById(products.getId());
    }
}
