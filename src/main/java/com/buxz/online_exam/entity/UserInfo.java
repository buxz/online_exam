package com.buxz.online_exam.entity;

/**
 * 
 * @author yuguoliang
 *
 *	1、MySql数据库在很早的时候就已经支持中文字段，
 *	这是一个很不错的福利，但是并没有人愿意使用，大多数人不建议使用，害怕有些不必要的麻烦，但是没人说得清楚麻烦究竟来自哪里？
 *
 *	2、我觉得这样写很舒服，干脆把SQL语句也写进来好了。
 *	
 */
public enum UserInfo {

	TABLENAME("sys_userinfo"),
	
	ID("id"),
	
	username("USERNAME"),
	
	password("PASSWORD"),
	
	name("NAME"),
	
	job("JOB"),

	SELECTBYUSERNAME("select `id`,`用户名`,`密码`,`姓名`,`职务` from `sys_userinfo` where `用户名` = ?"),
	
	INSERT("insert into `sys_userinfo` (`id`,`用户名`,`密码`,`姓名`,`职务`) values (?,?,?,?,?);");
	
	
	private String field;
	
	private UserInfo (String field){
		this.field = field;
	}

	/**
	 * @return the 字段
	 */
	public String getField() {
		return field;
	}

	/**
	 * @param field the 字段 to set
	 */
	public void setField(String field) {
		this.field = field;
	}

	/* (non-Javadoc)
	 * @see java.lang.Enum#toString()
	 */
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.field;
	}
}
