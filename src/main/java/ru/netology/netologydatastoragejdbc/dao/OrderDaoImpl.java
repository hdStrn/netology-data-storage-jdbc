package ru.netology.netologydatastoragejdbc.dao;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class OrderDaoImpl implements OrderDao {

    @PersistenceContext
    private final EntityManager entityManager;

    @Override
    public List<String> getProductNameByCustomerName(String name) {
        return entityManager
                .createQuery("select o.productName from Order o where o.customer.name = :name",
                        String.class)
                .setParameter("name", name)
                .getResultList();
    }
}
