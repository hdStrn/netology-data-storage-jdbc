package ru.netology.netologydatastoragejdbc.dao;

import java.util.List;

public interface OrderDao {

    List<String> getProductNameByCustomerName(String name);
}
