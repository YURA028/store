package com.spring.website.repositories;

import com.spring.website.models.Maker;
import com.spring.website.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;


public interface ProductRepository extends JpaRepository<Product, Long> {

    List<Product> findByName(String name);

    @Query("select a from Product a where " +
            "concat(a.name, ' ', a.description)" +
            "like %?1%")
    List<Product> getFilter(@Param("filter") String filter);

    @Query("select b from Product b where " +
            "b.maker.name =:maker")
    List<Product> getByMaker(@Param("maker")String maker);

    @Query("select b from Product b where " +
            "b.productType.name =:productType")
    List<Product> getByProductType(@Param("productType")String productType);

}
