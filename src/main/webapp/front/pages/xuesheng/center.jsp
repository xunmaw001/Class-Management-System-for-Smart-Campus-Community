<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 个人中心 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>个人中心</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		#center-container .right-container .layui-form .layui-form-item .layui-form-select .layui-input {
						padding: 0 30px 0 10px;
						margin: 0;
						color: #333;
						font-size: 14px;
						border-color: #9dcde9;
						line-height: 40px;
						border-radius: 0px;
						outline: none;
						background: none;
						width: 320px;
						border-width: 0 0 2px;
						border-style: dotted;
						height: 40px;
					}
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->

			<div id="breadcrumb">
				<span class="en">USER / CENTER</span>
				<span class="cn">个人中心</span>
			</div>

			<div id="center-container">
				<!-- 个人中心菜单 config.js-->
				<div class="left-container">
					<ul class="layui-nav layui-nav-tree">
						<li v-for="(item,index) in centerMenu" v-bind:key="index" class="layui-nav-item" :class="index==0?'layui-this':''">
							<a :href="'javascript:jump(\''+item.url+'\')'">{{item.name}}</a>
						</li>
					</ul>
				</div>
				<!-- 个人中心菜单 -->
				<!-- 个人中心 -->
				<div :style='{"width":"calc(100% - 208px)","padding":"0px","background":"none"}' class="right-container">
					<form :style='{"padding":"20px 10px","borderColor":"#9dcde9","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","borderWidth":"6px","width":"100%","borderStyle":"dotted","height":"auto"}' class="layui-form" lay-filter="myForm">
						<!-- 主键 -->
						<input type="hidden" name="id" id="id" />
						<div class="layui-form-item"  :style='{"margin":"0 0 10px 0","alignItems":"center","background":"none","display":"flex"}'>
							<label :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="layui-form-label">学生学号</label>
							<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0 0 2px","background":"none","width":"320px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' type="text" readonly="readonly" name="xueshengxuehao" name="xueshengxuehao" id="xueshengxuehao" placeholder="学生学号" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item"  :style='{"margin":"0 0 10px 0","alignItems":"center","background":"none","display":"flex"}'>
							<label :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="layui-form-label">学生姓名</label>
							<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0 0 2px","background":"none","width":"320px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' type="text"  name="xueshengxingming" name="xueshengxingming" id="xueshengxingming" placeholder="学生姓名" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item"  :style='{"margin":"0 0 10px 0","alignItems":"center","background":"none","display":"flex"}'>
							<label :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="layui-form-label">密码</label>
							<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0 0 2px","background":"none","width":"320px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' type="password" name="mima" id="mima" placeholder="密码" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item"  :style='{"margin":"0 0 10px 0","alignItems":"center","background":"none","display":"flex"}'>
							<label :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="layui-form-label">性别</label>
							<select name="xingbie" id="xingbie" >
								<option value="">请选择</option>
								<option v-for="(item,index) in xingbie" v-bind:key="index" :value="item">{{item}}</option>
							</select>
						</div>
						<div class="layui-form-item"  :style='{"margin":"0 0 10px 0","alignItems":"center","background":"none","display":"flex"}'>
							<label :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="layui-form-label">专业</label>
							<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0 0 2px","background":"none","width":"320px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' type="text"  name="zhuanye" name="zhuanye" id="zhuanye" placeholder="专业" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item"  :style='{"margin":"0 0 10px 0","alignItems":"center","background":"none","display":"flex"}'>
							<label :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="layui-form-label">联系电话</label>
							<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0 0 2px","background":"none","width":"320px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' type="text"  name="lianxidianhua" name="lianxidianhua" id="lianxidianhua" placeholder="联系电话" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item"  :style='{"margin":"0 0 10px 0","alignItems":"center","background":"none","display":"flex"}'>
							<label :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="layui-form-label">学院</label>
							<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"0px","borderWidth":"0 0 2px","background":"none","width":"320px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' type="text"  name="xueyuan" name="xueyuan" id="xueyuan" placeholder="学院" autocomplete="off" class="layui-input">
						</div>
						<div class="layui-form-item"  :style='{"margin":"0 0 10px 0","alignItems":"center","background":"none","display":"flex"}'>
							<label :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="layui-form-label">班级</label>
							<select name="banji" id="banji" >
								<option value="">请选择</option>
								<option v-for="(item,index) in banji" v-bind:key="index" :value="item">{{item}}</option>
							</select>
						</div>
						<div :style='{"alignItems":"center","margin":"20px 0 20px 110px","display":"flex"}' class="layui-form-item">
							<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0 10px","color":"#fff","minWidth":"110px","outline":"none","borderRadius":"4px","background":"linear-gradient(320deg, rgba(48,134,185,1) 0%, rgba(197,230,250,1) 80%, rgba(48,134,185,1) 100%),#3086b9","width":"auto","fontSize":"14px","lineHeight":"40px","height":"40px"}' class="layui-btn btn-submit btn-theme" lay-submit lay-filter="*">更新信息</button>
							<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0 10px","color":"#333","minWidth":"110px","outline":"none","borderRadius":"4px","background":"linear-gradient(320deg, rgba(204,204,204,1) 0%, rgba(255,255,255,1) 80%, rgba(204,204,204,1) 100%),#999","width":"auto","fontSize":"14px","lineHeight":"40px","height":"40px"}' @click="logout" class="layui-btn btn-submit">退出登录</button>
						</div>
					</form>
				</div>
				<!-- 个人中心 -->
			</div>

		</div>

		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					xingbie: [],
					banji: [],
					centerMenu: centerMenu
				},
                updated: function() {
					layui.form.render(null, 'myForm');
				},
				methods: {
					jump(url) {
						jump(url)
					},
					logout(){
						localStorage.removeItem('Token');
						localStorage.removeItem('role');
						localStorage.removeItem('sessionTable');
						localStorage.removeItem('adminName');
						localStorage.removeItem('userid');
						localStorage.removeItem('vip');
						localStorage.removeItem('userTable');
						window.parent.location.href = '../login/login.jsp';
					}
				}
			})

			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;

				// 充值
				jquery('#btn-recharge').click(function(e) {
					layer.open({
						type: 2,
						title: '用户充值',
						area: ['900px', '600px'],
						content: '../shop-recharge/recharge.jsp'
					});
				});
				// 会员购买
				jquery('#btn-buyvip').click(function(e) {
					layer.open({
						type: 2,
						title: '会员购买',
						area: ['900px', '600px'],
						content: '../shop-recharge/buyvip.jsp'
					});
				});

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 3
				}, function(res) {
					if (res.data.list.length > 0) {
						let swiperList = [];
						res.data.list.forEach(element => {
											if (element.value != null) {
											  swiperList.push({
												img: http.baseurl+element.value
											  });
											}
						});
						vue.swiperList = swiperList;
						vue.$nextTick(() => {
							carousel.render({
								elem: '#layui-carousel',
								width: '100%',
								height: '400px',
								anim: 'default',
								autoplay: 'true',
								interval: '5000',
								arrow: 'hover',
								indicator: 'inside'
							});
						})
					}
				});

				vue.xingbie = '男,女'.split(',')
				http.request(`option/banji/banji`,'get',{},(res)=>{
					vue.banji = res.data
				});
				
				// 查询用户信息
				let table = localStorage.getItem("userTable");

				if(!table){
					layer.msg('请先登录', {
						time: 2000,
						icon: 5
					}, function() {
						window.parent.location.href = '../login/login.jsp';
					});
				}

				
                setTimeout(()=>{
                    http.request(`${table}/session`, 'get', {}, function(data) {
                        // 表单赋值
                        form.val("myForm", data.data);
                    });
                },100)
				// 提交表单
				form.on('submit(*)', function(data) {
					data = data.field;
				    if(!isMobile(data.lianxidianhua)){
					layer.msg('联系电话应输入手机格式', {
									time: 2000,
									icon: 5
								});
					return false
				    }
					http.requestJson(table + '/update', 'post', data, function(res) {
						layer.msg('修改成功', {
							time: 2000,
							icon: 6
						}, function() {
							window.location.reload();
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
