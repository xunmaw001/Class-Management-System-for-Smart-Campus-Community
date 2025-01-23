<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>注册</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		.layui-form.add .layui-form-item .layui-form-select .layui-input {
						padding: 0 30px 0 10px;
						margin: 0;
						color: #333;
						font-size: 14px;
						border-color: #9dcde9;
						line-height: 40px;
						border-radius: 4px;
						outline: none;
						background: linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%);
						width: 360px;
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
		
			<div class="data-add-container" :style='{"width":"100%","padding":"30px 20px 40px","margin":"10px auto","position":"relative","background":"rgba(255,255,255,.3)"}'>
				<form class="layui-form layui-form-pane add" lay-filter="myForm">
					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">课程名称：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 2px","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' v-model="detail.kechengmingcheng" type="text" :readonly="ro.kechengmingcheng" name="kechengmingcheng" id="kechengmingcheng" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">考试类型：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 2px","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' v-model="detail.kaoshileixing" type="text" :readonly="ro.kaoshileixing" name="kaoshileixing" id="kaoshileixing" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">学生学号</div>
						<select name="xueshengxuehao" id="xueshengxuehao" lay-filter="xueshengxuehao"  >
							<option value="">请选择</option>
							<option v-for="(item,index) in xueshengxuehao" v-bind:key="index" :value="item">{{item}}</option>
						</select>
					</div>
					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">学生姓名：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 2px","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' v-model="detail.xueshengxingming" type="text" :readonly="ro.xueshengxingming" name="xueshengxingming" id="xueshengxingming" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">班级：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 2px","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' v-model="detail.banji" type="text" :readonly="ro.banji" name="banji" id="banji" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">学院：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 2px","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' v-model="detail.xueyuan" type="text" :readonly="ro.xueyuan" name="xueyuan" id="xueyuan" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">等级</div>
						<select name="dengji" id="dengji" lay-filter="dengji"  >
							<option value="">请选择</option>
							<option v-for="(item,index) in dengji" v-bind:key="index" :value="item">{{item}}</option>
						</select>
					</div>
					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">成绩：</div>
						<input :style='{"padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 2px","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' v-model="detail.chengji" type="text" :readonly="ro.chengji" name="chengji" id="chengji" autocomplete="off" class="layui-input">
					</div>
					<div :style='{"alignItems":"center","margin":"0 0 10px 0","display":"flex"}' class="layui-form-item">
						<div :style='{"width":"120px","padding":"0 15px","lineHeight":"40px","textAlign":"right"}' class="label">登记时间：</div>
						<input :style='{"border":"1px solid #eee","padding":"0 10px","margin":"0","borderColor":"#9dcde9","color":"#333","outline":"none","borderRadius":"4px","borderWidth":"0 0 2px","background":"linear-gradient(320deg, rgba(204,204,204,.0) 0%, rgba(255,255,255,.9) 80%, rgba(204,204,204,.0) 100%)","width":"360px","fontSize":"14px","lineHeight":"40px","borderStyle":"dotted","height":"40px"}' type="text" name="dengjishijian" id="dengjishijian" autocomplete="off" class="layui-input" >
					</div>


					<div :style='{"alignItems":"center","margin":"0 0 0 110px","display":"flex"}' class="layui-form-item">
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0 10px","color":"#fff","minWidth":"80px","outline":"none","borderRadius":"4px","background":"linear-gradient(320deg, rgba(48,134,185,1) 0%, rgba(197,230,250,1) 80%, rgba(48,134,185,1) 100%),#3086b9","width":"auto","fontSize":"14px","lineHeight":"40px","height":"40px"}'  class="layui-btn btn-submit" lay-submit lay-filter="*">提交</button>
						<button :style='{"cursor":"pointer","border":"0","padding":"0px 15px","margin":"0 10px","color":"#333","minWidth":"80px","outline":"none","borderRadius":"4px","background":"linear-gradient(320deg, rgba(204,204,204,1) 0%, rgba(255,255,255,1) 80%, rgba(204,204,204,1) 100%),#999","width":"auto","fontSize":"14px","lineHeight":"40px","height":"40px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</form>
			</div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>
		<script>
			var jquery = $;
			
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					baseurl: '',
					dataList: [],
					ro:{
                                        kechengmingcheng : false,
                                        kaoshileixing : false,
                                        xueshengxuehao : false,
                                        xueshengxingming : false,
                                        banji : false,
                                        xueyuan : false,
                                        dengji : false,
                                        pingyu : false,
                                        chengji : false,
                                        dengjishijian : false,
					},
                    detail: {
                        kechengmingcheng: '',
                        kaoshileixing: '',
                        xueshengxuehao: '',
                        xueshengxingming: '',
                        banji: '',
                        xueyuan: '',
                        dengji: '',
                        pingyu: '',
                        chengji: '',
                        dengjishijian: '',
                    },
					xueshengxuehao: [],
					dengji: '优秀,良好,及格,不及格'.split(','),
					centerMenu: centerMenu
				},
				updated: function() {
					layui.form.render('select', 'myForm');
				},
                computed: {



                },
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})


			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload', 'laydate','tinymce'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;
				var laydate = layui.laydate;
				var tinymce = layui.tinymce;
				vue.baseurl = http.baseurl;


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
				http.request(`option/xuesheng/xueshengxuehao`,'get',{},(res)=>{
					vue.xueshengxuehao = res.data
				});
				form.on('select(xueshengxuehao)', (data) => {
					console.log(data.value);
					http.request('follow/xuesheng/xueshengxuehao', 'get', {
						columnValue: data.value
					}, function(res) {
						vue.detail.xueshengxuehao=res.data.xueshengxuehao
						vue.detail.xueshengxingming=res.data.xueshengxingming
						vue.detail.banji=res.data.banji
						vue.detail.xueyuan=res.data.xueyuan
					})
				});
                form.on('select(dengji)', function (data) {
                    vue.detail.dengji=data.value;
                });
                                jquery('#dengjishijian').val(getCurDateTime());
				laydate.render({
					elem: '#dengjishijian',
					type: 'datetime'
				});
				
                // session独取
				let table = localStorage.getItem("userTable");
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					//form.val("myForm", data.data);
					data = data.data
					for(var key in data){
					}
				});

                // 跨表计算
                if(http.getParam('corss')){
					var obj = JSON.parse(localStorage.getItem('crossObj'));
					//form.val("myForm", obj);
					for(var o in obj){
                        if(o=='kechengmingcheng'){
                                vue.detail[o] = obj[o];
                                vue.ro.kechengmingcheng = true;
                                continue;
                        }
                        if(o=='kaoshileixing'){
                                vue.detail[o] = obj[o];
                                vue.ro.kaoshileixing = true;
                                continue;
                        }
                        if(o=='xueshengxuehao'){
                                vue.detail[o] = obj[o];
                                vue.ro.xueshengxuehao = true;
                                continue;
                        }
                        if(o=='xueshengxingming'){
                                vue.detail[o] = obj[o];
                                vue.ro.xueshengxingming = true;
                                continue;
                        }
                        if(o=='banji'){
                                vue.detail[o] = obj[o];
                                vue.ro.banji = true;
                                continue;
                        }
                        if(o=='xueyuan'){
                                vue.detail[o] = obj[o];
                                vue.ro.xueyuan = true;
                                continue;
                        }
                        if(o=='dengji'){
                                vue.detail[o] = obj[o];
                                vue.ro.dengji = true;
                                continue;
                        }
                        if(o=='pingyu'){
                                vue.detail[o] = obj[o];
                                vue.ro.pingyu = true;
                                continue;
                        }
                        if(o=='chengji'){
                                vue.detail[o] = obj[o];
                                vue.ro.chengji = true;
                                continue;
                        }
                        if(o=='dengjishijian'){
                                vue.detail[o] = obj[o];
                                vue.ro.dengjishijian = true;
                                jquery('#dengjishijian').val(obj[o]);
                                continue;
                        }
					}
				}
				

				// 提交
				form.on('submit(*)', function(data) {
					data = data.field;
					
                    // 数据校验

					// 跨表计算判断
					
                    // 比较大小

                //更新跨表属性
               var crossuserid;
               var crossrefid;
               var crossoptnum;
                if(http.getParam('corss')){
                        var statusColumnName = localStorage.getItem('statusColumnName');
                        var statusColumnValue = localStorage.getItem('statusColumnValue');
                        if(statusColumnName!='') {
                                var obj = JSON.parse(localStorage.getItem('crossObj'));
				if(!statusColumnName.startsWith("[")) {
					for (var o in obj){
						if(o==statusColumnName){
							obj[o] = statusColumnValue;
						}
					}
					var table = localStorage.getItem('crossTable');
					http.requestJson(`${table}/update`,'post',obj,(res)=>{});
				} else {
                                       crossuserid=Number(localStorage.getItem('userid'));
                                       crossrefid=obj['id'];
                                       crossoptnum=localStorage.getItem('statusColumnName');
                                       crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
				}
                        }
                }
                        if(crossrefid && crossuserid) {
                                data.crossuserid=crossuserid;
                                data.crossrefid=crossrefid;
                                http.request('xueshengchengji/list', 'get', {
                                        page: 1,
                                        limit: 10,
                                        crossuserid:crossuserid,
                                        crossrefid:crossrefid,
                                }, function(res) {
                                        if(res.data.total>=crossoptnum) {
                                                layer.msg(localStorage.getItem('tips'), {
                                                        time: 2000,
                                                        icon: 6
                                                })
                                             return false;
                                        } else {
                                            // 跨表计算



                                            // 提交数据
                                            http.requestJson('xueshengchengji' + '/add', 'post', data, function(res) {
                                                    layer.msg('提交成功', {
                                                            time: 2000,
                                                            icon: 6
                                                    }, function() {
                                                            back();
                                                    });
                                             });
                                        }
                                });
                        } else {
                                // 跨表计算

                                // 提交数据
                                http.requestJson('xueshengchengji' + '/add', 'post', data, function(res) {
                                        layer.msg('提交成功', {
                                                time: 2000,
                                                icon: 6
                                        }, function() {
                                                back();
                                        });
                                 });
                        }
			return false
			});
		});
		</script>
	</body>
</html>
