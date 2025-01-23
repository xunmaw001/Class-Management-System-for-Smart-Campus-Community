package com.entity.vo;

import com.entity.KechengxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 课程信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2023-03-29 11:06:23
 */
public class KechengxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 课程名称
	 */
	
	private String kechengmingcheng;
		
	/**
	 * 课程类型
	 */
	
	private String kechengleixing;
		
	/**
	 * 课时
	 */
	
	private String keshi;
		
	/**
	 * 学分
	 */
	
	private String xuefen;
		
	/**
	 * 上课地点
	 */
	
	private String shangkedidian;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 教师讲师
	 */
	
	private String jiaoshijiangshi;
		
	/**
	 * 课程表
	 */
	
	private String kechengbiao;
		
	/**
	 * 课程详情
	 */
	
	private String kechengxiangqing;
				
	
	/**
	 * 设置：课程名称
	 */
	 
	public void setKechengmingcheng(String kechengmingcheng) {
		this.kechengmingcheng = kechengmingcheng;
	}
	
	/**
	 * 获取：课程名称
	 */
	public String getKechengmingcheng() {
		return kechengmingcheng;
	}
				
	
	/**
	 * 设置：课程类型
	 */
	 
	public void setKechengleixing(String kechengleixing) {
		this.kechengleixing = kechengleixing;
	}
	
	/**
	 * 获取：课程类型
	 */
	public String getKechengleixing() {
		return kechengleixing;
	}
				
	
	/**
	 * 设置：课时
	 */
	 
	public void setKeshi(String keshi) {
		this.keshi = keshi;
	}
	
	/**
	 * 获取：课时
	 */
	public String getKeshi() {
		return keshi;
	}
				
	
	/**
	 * 设置：学分
	 */
	 
	public void setXuefen(String xuefen) {
		this.xuefen = xuefen;
	}
	
	/**
	 * 获取：学分
	 */
	public String getXuefen() {
		return xuefen;
	}
				
	
	/**
	 * 设置：上课地点
	 */
	 
	public void setShangkedidian(String shangkedidian) {
		this.shangkedidian = shangkedidian;
	}
	
	/**
	 * 获取：上课地点
	 */
	public String getShangkedidian() {
		return shangkedidian;
	}
				
	
	/**
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
	}
				
	
	/**
	 * 设置：教师讲师
	 */
	 
	public void setJiaoshijiangshi(String jiaoshijiangshi) {
		this.jiaoshijiangshi = jiaoshijiangshi;
	}
	
	/**
	 * 获取：教师讲师
	 */
	public String getJiaoshijiangshi() {
		return jiaoshijiangshi;
	}
				
	
	/**
	 * 设置：课程表
	 */
	 
	public void setKechengbiao(String kechengbiao) {
		this.kechengbiao = kechengbiao;
	}
	
	/**
	 * 获取：课程表
	 */
	public String getKechengbiao() {
		return kechengbiao;
	}
				
	
	/**
	 * 设置：课程详情
	 */
	 
	public void setKechengxiangqing(String kechengxiangqing) {
		this.kechengxiangqing = kechengxiangqing;
	}
	
	/**
	 * 获取：课程详情
	 */
	public String getKechengxiangqing() {
		return kechengxiangqing;
	}
			
}
