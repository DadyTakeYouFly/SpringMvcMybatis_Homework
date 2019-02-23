package cn.springmvcmybatis.service.impl;

import cn.springmvcmybatis.dao.ProductDao;
import cn.springmvcmybatis.model.Product;
import cn.springmvcmybatis.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

    @Autowired
    ProductDao dao;

    //根据ID查询
    @Override
    public Product getByID(Integer id) {
        Product product = dao.getById(id);
        return product;
    }

    //查找所有
    @Override
    public List<Product> findAll() {
        List<Product> list = dao.findAll();
        return list;
    }

    //根据ID删除
    @Override
    public boolean deleteById(Integer id) {
        return dao.deleteById(id);
    };

    //添加商品
    @Override
    public void insert(Product product) {
        dao.insert(product);
    }

    //修改商品
    @Override
    public boolean update(Product product) {
        return dao.update(product);
    }
}
