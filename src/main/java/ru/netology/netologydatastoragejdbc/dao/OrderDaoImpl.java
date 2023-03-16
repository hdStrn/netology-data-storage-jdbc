package ru.netology.netologydatastoragejdbc.dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;
import ru.netology.netologydatastoragejdbc.entity.Order;

import java.util.List;
import java.util.stream.Collectors;

@Repository
@RequiredArgsConstructor
public class OrderDaoImpl implements OrderDao {

    @PersistenceContext
    private final EntityManager entityManager;

    @Override
    public List<String> getProductNameByCustomerName(String name) {
        return entityManager
                .createQuery("select o from Order o join Customer c where o.customer.name = :name", Order.class)
                .setParameter("name", name)
                .getResultList().stream()
                .map(Order::getProductName)
                .collect(Collectors.toList());
    }
}
