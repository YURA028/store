package com.spring.website.repositories;

import com.spring.website.models.Maker;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MakerRepository extends JpaRepository<Maker, Long> {

}
