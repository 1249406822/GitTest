package service;

import beans.Dept;

import java.util.List;

public interface DeptService {
    int addDept(Dept dept);
    List<Dept> queryAll();
}
