package ru.netology.netologydatastoragejdbc.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import ru.netology.netologydatastoragejdbc.dao.OrderDao;

import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class OrderServiceImpl implements OrderService {

    private final OrderDao orderDao;

    @Override
    public String getProductNameByCustomerName(String name) {
        return orderDao.getProductNameByCustomerName(name).stream()
                .collect(Collectors.joining(", "));
    }
}
