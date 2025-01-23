package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.XuefeijiaonaDao;
import com.entity.XuefeijiaonaEntity;
import com.service.XuefeijiaonaService;
import com.entity.vo.XuefeijiaonaVO;
import com.entity.view.XuefeijiaonaView;

@Service("xuefeijiaonaService")
public class XuefeijiaonaServiceImpl extends ServiceImpl<XuefeijiaonaDao, XuefeijiaonaEntity> implements XuefeijiaonaService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<XuefeijiaonaEntity> page = this.selectPage(
                new Query<XuefeijiaonaEntity>(params).getPage(),
                new EntityWrapper<XuefeijiaonaEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<XuefeijiaonaEntity> wrapper) {
		  Page<XuefeijiaonaView> page =new Query<XuefeijiaonaView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<XuefeijiaonaVO> selectListVO(Wrapper<XuefeijiaonaEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public XuefeijiaonaVO selectVO(Wrapper<XuefeijiaonaEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<XuefeijiaonaView> selectListView(Wrapper<XuefeijiaonaEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public XuefeijiaonaView selectView(Wrapper<XuefeijiaonaEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
