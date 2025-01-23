package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.XuefeijiaonaEntity;
import com.entity.view.XuefeijiaonaView;

import com.service.XuefeijiaonaService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;

/**
 * 学费缴纳
 * 后端接口
 * @author 
 * @email 
 * @date 2023-03-29 11:06:23
 */
@RestController
@RequestMapping("/xuefeijiaona")
public class XuefeijiaonaController {
    @Autowired
    private XuefeijiaonaService xuefeijiaonaService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,XuefeijiaonaEntity xuefeijiaona, 
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("xuesheng")) {
			xuefeijiaona.setXueshengxuehao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<XuefeijiaonaEntity> ew = new EntityWrapper<XuefeijiaonaEntity>();

    	PageUtils page = xuefeijiaonaService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xuefeijiaona), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,XuefeijiaonaEntity xuefeijiaona, 
		HttpServletRequest request){
        EntityWrapper<XuefeijiaonaEntity> ew = new EntityWrapper<XuefeijiaonaEntity>();

    	PageUtils page = xuefeijiaonaService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xuefeijiaona), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( XuefeijiaonaEntity xuefeijiaona){
       	EntityWrapper<XuefeijiaonaEntity> ew = new EntityWrapper<XuefeijiaonaEntity>();
      	ew.allEq(MPUtil.allEQMapPre( xuefeijiaona, "xuefeijiaona")); 
        return R.ok().put("data", xuefeijiaonaService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(XuefeijiaonaEntity xuefeijiaona){
        EntityWrapper< XuefeijiaonaEntity> ew = new EntityWrapper< XuefeijiaonaEntity>();
 		ew.allEq(MPUtil.allEQMapPre( xuefeijiaona, "xuefeijiaona")); 
		XuefeijiaonaView xuefeijiaonaView =  xuefeijiaonaService.selectView(ew);
		return R.ok("查询学费缴纳成功").put("data", xuefeijiaonaView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        XuefeijiaonaEntity xuefeijiaona = xuefeijiaonaService.selectById(id);
        return R.ok().put("data", xuefeijiaona);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        XuefeijiaonaEntity xuefeijiaona = xuefeijiaonaService.selectById(id);
        return R.ok().put("data", xuefeijiaona);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody XuefeijiaonaEntity xuefeijiaona, HttpServletRequest request){
    	xuefeijiaona.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xuefeijiaona);

        xuefeijiaonaService.insert(xuefeijiaona);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody XuefeijiaonaEntity xuefeijiaona, HttpServletRequest request){
    	xuefeijiaona.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xuefeijiaona);

        xuefeijiaonaService.insert(xuefeijiaona);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody XuefeijiaonaEntity xuefeijiaona, HttpServletRequest request){
        //ValidatorUtils.validateEntity(xuefeijiaona);
        xuefeijiaonaService.updateById(xuefeijiaona);//全部更新
        return R.ok();
    }

    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        xuefeijiaonaService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<XuefeijiaonaEntity> wrapper = new EntityWrapper<XuefeijiaonaEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("xuesheng")) {
			wrapper.eq("xueshengxuehao", (String)request.getSession().getAttribute("username"));
		}

		int count = xuefeijiaonaService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	








}
