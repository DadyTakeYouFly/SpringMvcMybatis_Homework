package cn.springmvcmybatis.service;

import cn.springmvcmybatis.model.Product;

import java.util.List;

public interface ProductService {

    //通过ID查询
    Product getByID(Integer id);

    //查找所有
    List<Product> findAll();

    //通过ID删除
    boolean deleteById(Integer id);

    //添加商品
    void insert(Product product);

    //修改商品（先获取ID再进行修改）
    boolean update(Product product);

}
