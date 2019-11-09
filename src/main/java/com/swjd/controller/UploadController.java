package com.swjd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.Map;

@Controller
@RequestMapping("/")
public class UploadController {


    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public void upload(HttpServletRequest request, HttpServletResponse response) throws IOException {

        MultipartHttpServletRequest Murequest = (MultipartHttpServletRequest)request;
        Map<String, MultipartFile> files = Murequest.getFileMap();//得到文件map对象

        System.out.println("没有上传图片！");
        // 工程地址
        String url = request.getSession().getServletContext().getRealPath("/")+"img/";

        File dir = new File(url);
        if(!dir.exists())//目录不存在则创建
            dir.mkdirs();

        HttpSession session = request.getSession();
        session.removeAttribute("fileName");
        for(MultipartFile file :files.values()){
            String fileName = file.getOriginalFilename();
            System.out.println("进入upload"+fileName);
            session.setAttribute("fileName",fileName);
            File  tagetFile = new File(url+fileName);//创建文件对象
            if(!tagetFile.exists()){//文件名不存在 则新建文件，并将文件复制到新建文件中
                try {
                    tagetFile.createNewFile();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                try {
                    file.transferTo(tagetFile);
                } catch (IllegalStateException e) {
                    e.printStackTrace();
                } catch (IOException e) {
                    e.printStackTrace();
                }

            }
        }

        System.out.println("接收完毕");

//        String originalFilename = file.getOriginalFilename();
//
//        String fileName = excelPath + File.separator + "test"+ File.separator +  originalFilename;
//
//        File desFile = new File(fileName);
//        if (!desFile.exists()) {
//            desFile.getParentFile().mkdirs();
//        }
//        logger.info("上传文件："+originalFilename);
//        boolean createFileFlag = createFile(file,desFile);
//        if (createFileFlag) {
//            return "{\"state\":\"succ\",\"msg\":\"succ\"}";
//        }else {
//            return "{\"state\":\"fail\",\"msg\":\"fail\"}";
//        }

    }


}
