package com.baizhi.pai.time;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.core.convert.converter.Converter;

public class MyDate implements Converter<String,Date> {
	//�ѿ��ܽ��ܵ�ʱ���ʽ�ŵ�һ�����ϵ���
	private final String[] patterns=new String[]{"yyyy-MM-dd","yyyy/MM/dd","yyyy.MM.dd","yyyy��MM��dd��"};
	@Override
	public Date convert(String  arg0) {
		for(int i=0;i<patterns.length;i++){
			
			SimpleDateFormat sdf=new SimpleDateFormat(patterns[i]);
			try {
				//ת���ɼ����е�ʱ���ʽ
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
