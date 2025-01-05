package org.example.repository;

import org.example.config.JDBCTemplateConfig;
import org.example.entity.Product;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public interface ProductRepository {

    List<Product> findAll();
}
