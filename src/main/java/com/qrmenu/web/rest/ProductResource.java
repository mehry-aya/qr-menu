package com.qrmenu.web.rest;

import com.qrmenu.domain.Product;
import com.qrmenu.domain.UploadedFile;
import com.qrmenu.repository.ProductRepository;
import com.qrmenu.service.ProductService;
import com.qrmenu.service.UploadService;
import liquibase.util.file.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.util.List;
import java.util.Optional;

import static java.nio.file.Files.copy;
import static java.nio.file.Paths.get;
import static java.nio.file.StandardCopyOption.REPLACE_EXISTING;

@RestController
@RequestMapping("api/product")
public class ProductResource  {
    public static final String CONTENT_UPLOADS = "content/products";
    private final Logger log = LoggerFactory.getLogger(ProductResource.class);
    private final ProductService productService;
    private final ProductRepository productRepository;
    private final UploadService uploadService;


    @Autowired
    ServletContext context;

    public ProductResource(ProductService productService, ProductRepository productRepository,
                           UploadService uploadService) {
        this.productService = productService;
        this.productRepository = productRepository;
        this.uploadService = uploadService;

    }

@PostMapping("/add/{id}")
    public ResponseEntity<Product> addProduct(@Valid @RequestBody Product products, @PathVariable("id") long idCat)   {
    UploadedFile uploadedFile = this.uploadService.getById(products.getImage().getId());
    products.setImage(uploadedFile);
    return ResponseEntity.ok(this.productService.addProduct(products,idCat));
}
    @PostMapping("/upload")
    public ResponseEntity<UploadedFile> uploadFiles(@RequestParam("files") MultipartFile multipartFile) throws IOException {
        String filename = StringUtils.cleanPath(multipartFile.getOriginalFilename());

        String DIRECTORY = context.getRealPath(CONTENT_UPLOADS);
        File directory = new File(DIRECTORY);
        if (!directory.exists()) {
            directory.mkdir();
            // If you require it to make the entire directory path including parents,
            // use directory.mkdirs(); here instead.
        }

        Path fileStorage = get(DIRECTORY, filename).toAbsolutePath().normalize();
        copy(multipartFile.getInputStream(), fileStorage, REPLACE_EXISTING);
        UploadedFile uploadedFile = new UploadedFile();
        uploadedFile.setName(filename);
        uploadedFile.setPath(CONTENT_UPLOADS + "/" + filename);
        uploadedFile.setType(FilenameUtils.getExtension(filename).toUpperCase());
        UploadedFile output = this.uploadService.save(uploadedFile);
        return ResponseEntity.ok().body(output);

    }

@GetMapping("/getone/{id}")
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
    @DeleteMapping("/delete/file/{id}")
    public ResponseEntity<HttpStatus> deleteFile(@PathVariable("id") long id) {
        this.uploadService.delete(id);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }
}
