package cn.hehe.sharecar.service.Impl;

import cn.hehe.sharecar.entity.Product;
import cn.hehe.sharecar.service.ProductService;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @program: sharecar
 * @description:
 * @author: Mr.si
 * @create: 2020-11-10 18:57
 **/
@Service
public class ProductServiceImpl implements ProductService {


    @Override
    public List<Product> findAll() {
        List<Product> productList = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            Product product = new Product();
            product.setName("name"+i);
            product.setType("type"+i);
            productList.add(product);
        }
        return productList;
    }
}
