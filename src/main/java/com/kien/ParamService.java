package com.kien;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Service
public class ParamService {

    @Autowired
    HttpServletRequest request;

    public String getString(String name, String defaultValue) {
        String value = request.getParameter(name);
        return value != null ? value : defaultValue;
    }

    public int getInt(String name, int defaultValue) {
        String value = request.getParameter(name);
        try {
            return value != null ? Integer.parseInt(value) : defaultValue;
        } catch (NumberFormatException e) {
            return defaultValue;
        }
    }

    public double getDouble(String name, double defaultValue) {
        String value = request.getParameter(name);
        try {
            return value != null ? Double.parseDouble(value) : defaultValue;
        } catch (NumberFormatException e) {
            return defaultValue;
        }
    }

    public boolean getBoolean(String name, boolean defaultValue) {
        String value = request.getParameter(name);
        return value != null ? Boolean.parseBoolean(value) : defaultValue;
    }

    public Date getDate(String name, String pattern) {
        String value = request.getParameter(name);
        try {
            if (value != null) {
                SimpleDateFormat dateFormat = new SimpleDateFormat(pattern);
                return dateFormat.parse(value);
            }
        } catch (ParseException e) {
            throw new RuntimeException("Lỗi sai định dạng", e);
        }
        return null;
    }

    public File save(MultipartFile file, String path) {
        if (file.isEmpty()) {
            return null;
        }
        try {
            String webRootPath = request.getServletContext().getRealPath("/");
            String fullPath = webRootPath + path;
            File directory = new File(fullPath);
            if (!directory.exists()) {
                directory.mkdirs();
            }
            File savedFile = new File(directory, file.getOriginalFilename());
            file.transferTo(savedFile);
            return savedFile;
        } catch (IOException e) {
            throw new RuntimeException("Lỗi lưu file", e);
        }
    }
}