package com.pofol.main.product.dateThread;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class SafeDateFormat {

    private static final ThreadLocal<SimpleDateFormat> dateFormatThreadLocal = ThreadLocal.withInitial(() -> new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"));

    public static String format(Date date) {
        return dateFormatThreadLocal.get().format(date);
    }

    public static Date parse(String dateString) throws ParseException {
        return dateFormatThreadLocal.get().parse(dateString);
    }
}
