package com.springmvc.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {

    public static String getSimpleDateFormat(){
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:ss:mm");
        return sdf.format(date);
    }
}
