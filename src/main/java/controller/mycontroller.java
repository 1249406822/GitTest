package controller;

import beans.Dept;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import service.DeptService;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("dept")
public class mycontroller {
    @Autowired
    private DeptService service;

    @RequestMapping("jump.do")
    public String jump(String target){
        return target;
    }
    @RequestMapping("add")
    public ModelAndView addDept(Dept dept){
        ModelAndView mv = new ModelAndView();
        int num = service.addDept(dept);
        if (num > 0){
            mv.addObject("msg", "注册成功");
            mv.setViewName("result");
        }else {
            mv.addObject("msg", "注册失败");
            mv.setViewName("result");
        }
        return mv;
    }
    @ResponseBody
    @RequestMapping("query")
    public List<Dept> queryAll(){
        List<Dept> depts = service.queryAll();
        if (depts == null) {
            depts = new ArrayList<>();
        }
        return depts;
    }
}
