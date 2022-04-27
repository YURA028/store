package com.spring.website.controllers;

import com.spring.website.models.ImageProduct;
import com.spring.website.repositories.ImageProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.io.ByteArrayInputStream;

@RestController
@RequiredArgsConstructor
public class ImageController {

    private final ImageProductRepository imageProductRepository;

    @GetMapping("/images/{id}")
    private ResponseEntity<?> getImageById(@PathVariable Long id){
        ImageProduct imageProduct = imageProductRepository.findById(id).orElse(null);

        return ResponseEntity.ok()
                .header("fileName", imageProduct.getOriginalFileName())
                .contentType(MediaType.valueOf(imageProduct.getContentType()))
                .contentLength(imageProduct.getSize())
                .body(new InputStreamResource(new ByteArrayInputStream(imageProduct.getBytes())));
    }
}
