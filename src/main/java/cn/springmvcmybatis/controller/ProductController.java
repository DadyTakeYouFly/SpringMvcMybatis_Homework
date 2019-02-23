package cn.springmvcmybatis.controller;

import cn.springmvcmybatis.model.Product;
import cn.springmvcmybatis.service.ProductService;
import cn.springmvcmybatis.util.ResultMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    ProductService service;

    //列表
    @GetMapping("/list")
    @ResponseBody
    public ResultMap findAll(){
        List<Product> list = service.findAll();
        return ResultMap.okData(list);
    }

    //根据id查询
    @RequestMapping(value = "/get/{productId}",method = RequestMethod.GET)
    @ResponseBody
    public ResultMap get(@PathVariable Integer productId){
        Product product = service.getByID(productId);
        return ResultMap.okData(product);
    }

    //添加商品
    //页面点击到controller的add，再跳转到add，jsp的添加商品页面
    //添加完提交再进入controller的insert
    @GetMapping("/add")
    @ResponseBody
    public String add(){
        System.out.println("跳转到添加商品页面");
        return "/add";
    }

    @PostMapping("/insert")
    @ResponseBody
    public ResultMap insert(@RequestBody Product product){
        service.insert(product);
        System.out.println("添加的商品内容：" + product);
        return ResultMap.ok();
    }

    //删除商品
    @RequestMapping(value = "/delete/{productId}" ,method = RequestMethod.GET)
    @ResponseBody
    public ResultMap delete(@PathVariable Integer productId){
        boolean flag = service.deleteById(productId);
        if(flag){
            System.out.println("成功删除" + productId + "号商品");
            return ResultMap.ok();
        }else{
            System.out.println("删除失败");
            return ResultMap.fail();
        }
    }

    //修改商品
    //跟添加商品同理,return的链接是update.jsp，而PostMapping的是业务逻辑层的update
    @GetMapping("/updatebyid")
    @ResponseBody
    public String updatebyid(){
        System.out.println("跳转到获取id相关的商品修改界面");
        return "/update";
    }

    @PostMapping("/update")
    @ResponseBody
    public ResultMap update(@RequestBody Product product){
        boolean flag = service.update(product);
        if(flag){
            System.out.println("修改的商品内容为" + product);
            return ResultMap.ok();
        }else{
            System.out.println("修改失败");
            return ResultMap.fail();
        }
    }

}
