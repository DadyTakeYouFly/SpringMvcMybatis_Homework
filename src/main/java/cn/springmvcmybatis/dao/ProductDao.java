package cn.springmvcmybatis.dao;

import cn.springmvcmybatis.model.Product;

import java.util.List;

public interface ProductDao {

    //boolean当成功时true，失败时false，void无返回值，成功就结束。

    //列表查询
    List<Product> findAll();
    //根据id查询
    Product getById(Integer id);
    //根据id删除
    boolean deleteById(Integer id);
    //添加商品
    void insert(Product product);
    //根据修改商品
    boolean update(Product product);

}
