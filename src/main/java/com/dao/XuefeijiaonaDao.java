package com.dao;

import com.entity.XuefeijiaonaEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.XuefeijiaonaVO;
import com.entity.view.XuefeijiaonaView;


/**
 * 学费缴纳
 * 
 * @author 
 * @email 
 * @date 2023-03-29 11:06:23
 */
public interface XuefeijiaonaDao extends BaseMapper<XuefeijiaonaEntity> {
	
	List<XuefeijiaonaVO> selectListVO(@Param("ew") Wrapper<XuefeijiaonaEntity> wrapper);
	
	XuefeijiaonaVO selectVO(@Param("ew") Wrapper<XuefeijiaonaEntity> wrapper);
	
	List<XuefeijiaonaView> selectListView(@Param("ew") Wrapper<XuefeijiaonaEntity> wrapper);

	List<XuefeijiaonaView> selectListView(Pagination page,@Param("ew") Wrapper<XuefeijiaonaEntity> wrapper);
	
	XuefeijiaonaView selectView(@Param("ew") Wrapper<XuefeijiaonaEntity> wrapper);
	

}
