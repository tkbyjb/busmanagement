package com.busmanagement.controller;

import com.busmanagement.utils.Result;
import com.busmanagement.utils.ResultState;
import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class BackupController {

    @RequestMapping("/{userId}/{roleId}/{menuId}/backup")
    public @ResponseBody Result backup(HttpServletRequest req) {
        try{
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd_HH-mm-ss");
            String time = sdf.format(new Date());
            String path = req.getSession().getServletContext().getRealPath("")+"backup";
            File file = new File(path);
            if(!file.exists()){
                file.mkdirs();
            }
            path += "\\"+time+".sql";
            String command = "cmd /c mysqldump -h127.0.0.1 -uroot -p12345678  bus_management > "+path;
            Process exec = Runtime.getRuntime().exec(command);
            if(exec.waitFor() == 0) {
                return new Result(ResultState.SUCCESS, null);
            }else {
                return new Result(ResultState.SERVER_ERROR, null);
            }
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/backup/download")
    public @ResponseBody void download(@RequestBody String fileName, HttpServletRequest req, HttpServletResponse resp) {
        try{
            File file = new File(req.getSession().getServletContext().getRealPath("")+"backup/"+fileName);
//            HttpHeaders header = new HttpHeaders();
//            header.setContentDispositionFormData("attachment", fileName);
//            header.setContentType(MediaType.APPLICATION_OCTET_STREAM);
//            return new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), header, HttpStatus.OK);
            resp.setContentType("application/octet-stream;charset=UTF-8");
            resp.setHeader("Content-Disposition", "attachment; filename="+fileName);
            resp.getOutputStream().write(FileUtils.readFileToByteArray(file));
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    @RequestMapping("/{userId}/{roleId}/{menuId}/backup/list")
    public @ResponseBody Result getFileList(HttpServletRequest req) {
        try{
            File backup = new File(req.getSession().getServletContext().getRealPath("")+"backup");
            if(!backup.exists()){
                backup.mkdirs();
            }
            File[] files = backup.listFiles();
            List<String> fileNames = new ArrayList<>();
            for(File file : files) {
                fileNames.add(file.getName());
            }
            return new Result(ResultState.SUCCESS, fileNames);
        }catch(Exception e){
            e.printStackTrace();
            return new Result(ResultState.SERVER_ERROR, null);
        }
    }
}
