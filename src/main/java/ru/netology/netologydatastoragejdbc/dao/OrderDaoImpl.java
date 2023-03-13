package ru.netology.netologydatastoragejdbc.dao;

import lombok.RequiredArgsConstructor;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

import static ru.netology.netologydatastoragejdbc.utils.SqlUtils.read;

@Repository
@RequiredArgsConstructor
public class OrderDaoImpl implements OrderDao {

    private final String sqlScript = read("scripts/select_product.sql");
    private final NamedParameterJdbcTemplate template;

    @Override
    public List<String> getProductNameByCustomerName(String name) {
        MapSqlParameterSource param = new MapSqlParameterSource("name", name);

        return template.queryForList(sqlScript, param, String.class);
    }
}
