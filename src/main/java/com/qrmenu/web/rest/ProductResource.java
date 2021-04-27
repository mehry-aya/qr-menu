package com.qrmenu.web.rest;

import com.qrmenu.domain.Product;
import com.qrmenu.repository.ProductRepository;
import com.qrmenu.service.ProductService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("api/product")
public class ProductResource  {
    private final Logger log = LoggerFactory.getLogger(ProductResource.class);
    private final ProductService productService;
    private final ProductRepository productRepository;


    public ProductResource(ProductService productService, ProductRepository productRepository) {
        this.productService = productService;
        this.productRepository = productRepository;
    }

@PostMapping("/add")
    public ResponseEntity<Product> addProduct(@Valid @RequestBody Product products)   {
        return ResponseEntity.ok(this.productService.addProduct(products));
}
@GetMapping("/{id}")
    public ResponseEntity<Product> getProduct(@PathVariable("id") long id){
    return ResponseEntity.ok(this.productService.getProduct(id));
}
@GetMapping("/all")
    public ResponseEntity<List<Product>> findAllProducts(){
       return ResponseEntity.ok(this.productService.findAllProducts());
}
@PutMapping("/update")
public ResponseEntity <Product> updateProduct(@RequestBody Product products){
        return ResponseEntity.ok(this.productService.updateProduct(products));
}
@DeleteMapping("/delete/{id}")
    public ResponseEntity<HttpStatus> deleteProduct(@PathVariable("id") long id){
          this.productRepository.deleteById(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
}
}
