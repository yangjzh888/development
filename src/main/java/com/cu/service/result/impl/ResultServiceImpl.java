package com.cu.service.result.impl;

import com.cu.dao.ResultDao;
import com.cu.model.BalkBasic;
import com.cu.model.Result;
import com.cu.model.SheetProc;
import com.cu.service.result.ResultService;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

/**
 * 结果表业务逻辑实现类
 *
 * @authur Zyq
 * @create 2017/9/27.
 */
@Service
public class ResultServiceImpl implements ResultService {
    @Autowired
    private ResultDao resultDao;

    @Override
    public List<Result> setResult(List<BalkBasic> balkList, String search_time) {
        List<Result> resultList = new ArrayList<>();
        for (int i = 0; i < balkList.size(); i++) {
            BalkBasic balkBasic = balkList.get(i);
            List<SheetProc> sheetProcList = balkBasic.getSheetProcList();
            for (int j = 0; j < sheetProcList.size(); j++) {
                Result result = new Result();
                //将查询结果存入实例中
                result.setUser_id(0);//todo: 缺少动态获取userid的session方法，待添加
                result.setSearch_time(search_time);//查询时间
                result.setType("受理单");//todo 还未知受理单类型如何查询，待添加
                result.setBalk_no(balkBasic.getBalk_no()); //受理单号
                result.setBalk_content(balkBasic.getBalk_content()); //申告内容
                result.setContent_key(balkBasic.getContent_key()); //申告内容关键字
                result.setProc_key(balkBasic.getProc_key()); //处理过程关键字
                result.setWrite_dept_name("网管中心.交换中心"); //填写部门
                result.setIntro(sheetProcList.get(j).getIntro());
                result.setOperation_type(sheetProcList.get(j).getType_id()); //操作类型
                result.setWrite_user_name(sheetProcList.get(j).getWrite_user_name());//填写人
                result.setWrite_time(sheetProcList.get(j).getWrite_time());//填写时间
                resultList.add(result);
            }
        }
        return resultList;
    }

    @Override
    public void insertResult(List<Result> resultList) {
        resultDao.insertResult(resultList);
    }

    @Override
    public List<String> searchTimeList() {
        return resultDao.searchTimeList();
    }

    @Override
    public List<Result> queryBySearchTime(String search_time) {
        return resultDao.queryBySearchTime(search_time);
    }

    @Override
    public HSSFWorkbook writeResultExcel(List<Result> resultList) {
        String[] header = {"序号", "类型", "受理单号", "申告内容", "填写部门", "操作类型", "填写人", "填写时间", "填写内容", "申告内容关键字", "处理过程关键字"};
        //创建workbook （excel）
        HSSFWorkbook wb = new HSSFWorkbook();
        //首先创建字体样式
        HSSFFont font1 = wb.createFont();//创建header字体样式
        font1.setFontName("微软雅黑");//使用宋体
        font1.setFontHeightInPoints((short) 10);//字体大小
        font1.setBold(true);//加粗
        HSSFFont font2 = wb.createFont();//创建数据行字体样式
        font2.setFontName("宋体");
        font2.setFontHeightInPoints((short) 10);

        //设置header单元格样式
        HSSFCellStyle style1 = wb.createCellStyle();
        style1.setFont(font1);//将字体注入
        //style1.setWrapText(true);// 自动换行
        style1.setAlignment(HorizontalAlignment.CENTER);//居中
        style1.setVerticalAlignment(VerticalAlignment.CENTER);// 水平居中
        style1.setFillForegroundColor(IndexedColors.LIGHT_YELLOW.index);// 设置单元格的背景颜色（亮黄色）
        style1.setFillPattern(FillPatternType.SOLID_FOREGROUND);
        style1.setBorderTop(BorderStyle.THIN);// 边框的大小
        style1.setBorderBottom(BorderStyle.THIN);
        style1.setBorderLeft(BorderStyle.THIN);
        style1.setBorderRight(BorderStyle.THIN);
        //设置数据单元格样式
        HSSFCellStyle style2 = wb.createCellStyle();
        style2.setFont(font2);
        //style2.setWrapText(true);//自动换行
        style2.setAlignment(HorizontalAlignment.LEFT);//居左
        style2.setVerticalAlignment(VerticalAlignment.CENTER);//水平居中
        style2.setFillForegroundColor(IndexedColors.WHITE.index);//背景色（白色）
        style2.setFillPattern(FillPatternType.SOLID_FOREGROUND);
        style2.setBorderTop(BorderStyle.THIN);// 边框的大小
        style2.setBorderBottom(BorderStyle.THIN);
        style2.setBorderLeft(BorderStyle.THIN);
        style2.setBorderRight(BorderStyle.THIN);

        //创建excel的sheet
        HSSFSheet sheet = wb.createSheet();
        //设置列的默认宽度
        //sheet.setDefaultColumnWidth(15);
        for (int i = 0; i < 5; i++) {
            //设置列宽（动态设置）
            //计算列宽的方法（拉格朗日插值）
            BigDecimal w =new BigDecimal(0.0);
            BigDecimal[] a = {BigDecimal.valueOf(-0.0002919), BigDecimal.valueOf(0.016), BigDecimal.valueOf(-0.3761903),
                    BigDecimal.valueOf(4.95658416), BigDecimal.valueOf(-40.125), BigDecimal.valueOf(205.49), BigDecimal.valueOf(-658.901),
                    BigDecimal.valueOf(1256.365), BigDecimal.valueOf(-1265.211), BigDecimal.valueOf(503.886), BigDecimal.valueOf(4.29)};
            BigDecimal[] x=new BigDecimal[10];
            for (int j=0;j<10;j++){
                x[j]=new BigDecimal(Math.pow(i,10-j));
                x[j]=a[j].multiply(x[j]);
            }
            for (int k=0;k<x.length;k++){
                w=w.add(x[k]);
            }
            w=w.add(a[10]);
            sheet.setColumnWidth(i, w.intValue() * 256 + 184);
        }
        for (int i = 5;i<11;i++){
            BigDecimal w =new BigDecimal(0.0);
            BigDecimal[] a = {BigDecimal.valueOf(1.366), BigDecimal.valueOf(-50.034), BigDecimal.valueOf(720.965),
                    BigDecimal.valueOf(-5107.990), BigDecimal.valueOf(17799.943), BigDecimal.valueOf(-24405.39)};
            BigDecimal[] x=new BigDecimal[5];
            for (int j=0;j<5;j++){
                x[j]=new BigDecimal(Math.pow(i,5-j));
                x[j]=a[j].multiply(x[j]);
            }
            for (int k=0;k<x.length;k++){
                w=w.add(x[k]);
            }
            w=w.add(a[5]);
            sheet.setColumnWidth(i, w.intValue() * 256 + 184);
        }
        //设置header内容
        HSSFRow row = sheet.createRow(0);
        for (int i = 0; i < header.length; i++) {
            HSSFCell cell = row.createCell(i);
            cell.setCellStyle(style1);
            HSSFRichTextString text = new HSSFRichTextString(header[i]);
            cell.setCellValue(text);
        }

        //遍历resultList存入excel
        int rownum = 1;//数据行从第二行开始
        for (Result result : resultList) {
            row = sheet.createRow(rownum);
            List<String> rs = new ArrayList<>();
            rs.add(String.valueOf(rownum));//序号
            rs.add(result.getType());//类型
            rs.add(result.getBalk_no());//受理单号
            rs.add(result.getBalk_content());//申告内容
            rs.add(result.getWrite_dept_name());//填写部门
            rs.add(result.getOperation_type());//操作类型
            rs.add(result.getWrite_user_name());//填写人
            rs.add(result.getWrite_time());//填写时间
            rs.add(result.getIntro());//填写内容（处理过程）
            rs.add(result.getContent_key());//申告内容关键字
            rs.add(result.getProc_key());//处理过程关键字
            for (int i = 0; i < rs.size(); i++) {
                HSSFCell cell = row.createCell(i);
                cell.setCellStyle(style2);
                HSSFRichTextString richTextString = new HSSFRichTextString(rs.get(i));
                cell.setCellValue(richTextString);
            }
            rownum++;
        }
        return wb;
    }
}
