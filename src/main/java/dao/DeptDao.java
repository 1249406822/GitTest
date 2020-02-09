package dao;

import beans.Dept;

import java.util.List;

public interface DeptDao {
    int addDept(Dept dept);
    List<Dept> queryAll();
}
