package com.baizhi.pai.time;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

public class MyDate implements Converter<String,Date> {
	//把可能接受的时间格式放到一个集合当中
	private final String[] patterns=new String[]{"yyyy-MM-dd","yyyy/MM/dd","yyyy.MM.dd","yyyy年MM月dd日"};
	@Override
	public Date convert(String  arg0) {
		for(int i=0;i<patterns.length;i++){
			
			SimpleDateFormat sdf=new SimpleDateFormat(patterns[i]);
			try {
				//转化成集合中的时间格式
				Date date=sdf.parse(arg0);
				return date;
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}
	
}
