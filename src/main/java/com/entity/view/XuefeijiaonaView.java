package com.entity.view;

import com.entity.XuefeijiaonaEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 学费缴纳
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-29 11:06:23
 */
@TableName("xuefeijiaona")
public class XuefeijiaonaView  extends XuefeijiaonaEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public XuefeijiaonaView(){
	}
 
 	public XuefeijiaonaView(XuefeijiaonaEntity xuefeijiaonaEntity){
 	try {
			BeanUtils.copyProperties(this, xuefeijiaonaEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
