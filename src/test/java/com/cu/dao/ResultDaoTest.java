package com.cu.dao;

import com.cu.BaseTest;
import com.cu.model.BalkBasic;
import com.cu.model.Result;
import com.cu.service.ResultService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.ArrayList;
import java.util.List;

/**
 * ${DESCRIPTION}
 *
 * @authur Zyq
 * @create 2017/10/26.
 */
public class ResultDaoTest extends BaseTest {
    @Autowired
    private BalkBasicDao balkBasicDao;
    @Autowired
    private  ResultDao resultDao;
    @Autowired
    private ResultService resultService;
    @Test
    public void insertResult() throws Exception {
        List<BalkBasic> balkBasicList=balkBasicDao.queryByTime(2017,7);
        List<Result> resultList=resultService.setResult(balkBasicList,2017,7);
        resultDao.insertResult(resultList);
    }

    @Test
    public void queryByContentKey() throws Exception {
        List<Result> resultList=resultDao.queryByContentKey("影响");
        System.out.println(resultList.size());
    }

    @Test
    public void updateContentKeyAndProblem() throws Exception {
        List<String> s=new ArrayList<>();
        s.add("201701339202");
        resultDao.updateContentKeyAndProblem("testc","testp",s);
    }

    @Test
    public void queryByProblem() throws Exception {
        String[] problems={"故障现象A","故障现象B","故障现象C"};
        List<Result> resultList=resultDao.queryByProblem(problems);
        System.out.println("success");
    }
}