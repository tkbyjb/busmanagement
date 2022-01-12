package com.busmanagement.utils;

import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class ExcelUtil {

    public static XSSFWorkbook generate(List<Map<String,Object>> data, String[] headers, String[] props) {
        //创建工作簿 类似于创建Excel文件
        XSSFWorkbook workbook=new XSSFWorkbook();
        //创建 sheetname页名
        XSSFSheet sheet = workbook.createSheet("统计数据");
        sheet.setDefaultColumnWidth(40*256);
        //创建一行,下标从0开始
        XSSFRow row = sheet.createRow(0);
        //创建这行中的列,并给该列直接赋值
        //设置表头
        for(int i=0; i<headers.length; i++) {
            row.createCell(i).setCellValue(headers[i]);
        }
        // 设置表里内容
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        for(int i=0; i<data.size(); i++) {
            Map<String,Object> line = data.get(i);
            row = sheet.createRow(i+1);
            for(int j=0; j<props.length; j++) {
                if(props[j].equals("date")){
                    row.createCell(j).setCellValue(sdf.format((Date)line.get("date")));
                    continue;
                }
                row.createCell(j).setCellValue(line.get(props[j])+"");
            }
        }
        return workbook;
    }
}
