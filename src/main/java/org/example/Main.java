package org.example;

import org.example.config.JDBCTemplateConfig;
import org.example.entity.Product;
import org.example.repository.ProductRepository;
import org.example.repository.impl.ProductRepositoryImpl;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import java.sql.ResultSet;
import java.util.List;

public class Main
{
    private static final ProductRepository productRepository = new ProductRepositoryImpl();

    public static void main( String[] args )
    {
//        DriverManagerDataSource driver = new DriverManagerDataSource("jdbc:postgresql://localhost:5432/postgres", "postgres", "1");
//        driver.setDriverClassName("org.postgresql.Driver");
//        driver.setSchema("public");
//        JdbcTemplate jdbcTemplate = new JdbcTemplate(driver);
        List<Product> products = productRepository.findAll();
        System.out.println(products);
    }

    private static final RowMapper<Product> userRowMapper = (row, rowNumber) -> {
        Long id = row.getLong("id");
        String name = row.getString("name");
        Long price = row.getLong("price");

        return new Product(id, name, price);
    };
}
