package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.XuefeijiaonaEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.XuefeijiaonaVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.XuefeijiaonaView;


/**
 * 学费缴纳
 *
 * @author 
 * @email 
 * @date 2023-03-29 11:06:23
 */
public interface XuefeijiaonaService extends IService<XuefeijiaonaEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<XuefeijiaonaVO> selectListVO(Wrapper<XuefeijiaonaEntity> wrapper);
   	
   	XuefeijiaonaVO selectVO(@Param("ew") Wrapper<XuefeijiaonaEntity> wrapper);
   	
   	List<XuefeijiaonaView> selectListView(Wrapper<XuefeijiaonaEntity> wrapper);
   	
   	XuefeijiaonaView selectView(@Param("ew") Wrapper<XuefeijiaonaEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<XuefeijiaonaEntity> wrapper);
   	

}

