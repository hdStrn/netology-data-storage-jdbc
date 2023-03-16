package ru.netology.netologydatastoragejdbc.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import ru.netology.netologydatastoragejdbc.service.OrderService;

@Controller
@RequestMapping("/products")
@RequiredArgsConstructor
public class OrderController {

    private final OrderService orderService;

    @GetMapping("/fetch-product")
    @ResponseBody
    public String getProductNameByCustomerName(@RequestParam String name) {
        return orderService.getProductNameByCustomerName(name);
    }

}
