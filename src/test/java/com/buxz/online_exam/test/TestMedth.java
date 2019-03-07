package com.buxz.online_exam.test;

import com.buxz.online_exam.entity.UserInfo;
import com.buxz.online_exam.service.SystemService;
import com.buxz.online_exam.util.MrksUtils;
import org.junit.Test;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.UUID;

public class TestMedth {

	@Test
	public void test() {
		System.out.println(UserInfo.name);
		System.out.println(UserInfo.SELECTBYUSERNAME.toString());
	}

	@Test
	public void testStstemService(){
		
		SystemService ss = new SystemService();
		
		Map<String, Object> 结果集 = ss.selectUserInfoByUsername("username");
		Map<String, Object> 结果集1 = ss.selectUserInfoByUsername("username");
	
		System.out.println(结果集);
	}
	
	@Test
	public void testTimekeeping (){
		Long timekeep = 1000L*60L*50L;
		Date current = new Date();
		
		Long currentLong = current.getTime();
		
		Long target = currentLong+timekeep;
		
		SimpleDateFormat sdf = new SimpleDateFormat("HH:mm:ss");
		
		String s = sdf.format(new Date(target));
		
		System.out.println(s);
	}
	
	@Test
	public void  testUUIDSp (){
		
		String s = UUID.randomUUID().toString();
		String[] sArr = s.split("-");
		for (int i = 0 ; i < sArr.length ;i++)
		System.out.println(sArr[i]);
		
		
		System.out.println();
		
	}
	
	@Test
	public void testS(){
		
		int result = MrksUtils.statistics(UUID.randomUUID().toString(),UUID.randomUUID().toString(),UUID.randomUUID().toString());
		
		System.out.println(result);
	}
	
	
}
