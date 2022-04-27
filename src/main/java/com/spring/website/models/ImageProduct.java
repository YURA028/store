package com.spring.website.models;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "image_products")
public class ImageProduct {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "name")
    private String name;
    @Column(name = "original_fileName")
    private String originalFileName;
    @Column(name = "size")
    private Long size;   // размер файла
    @Column(name = "content_type")
    private String contentType;  //расширение файла
    @Column(name = "is_preview_image")
    private boolean isPreviewImage;
    @Lob
//    @Column(columnDefinition = "LONGBLOB")
    private byte[] bytes;

    @ManyToOne(cascade = CascadeType.REFRESH, fetch = FetchType.EAGER)  //каскад как повлияет сущность фотографий на сущность товаров
    private Product product;
}