package org.example.repository.impl;

import org.example.config.JDBCTemplateConfig;
import org.example.entity.Product;
import org.example.repository.ProductRepository;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.util.List;

public class ProductRepositoryImpl implements ProductRepository {

    private final JdbcTemplate jdbcTemplate = JDBCTemplateConfig.jdbcTemplate();

    private static final String FIND_ALL = "select * from products";

    @Override
    public List<Product> findAll() {
        return jdbcTemplate.query(FIND_ALL, productRowMapper);
    }

    private static final RowMapper<Product> productRowMapper = (row, rowNumber) -> {
        Long id = row.getLong("id");
        String name = row.getString("name");
        Long price = row.getLong("price");

        return new Product(id, name, price);
    };
}
