var slider={
	LIWIDTH:0,//li宽度
	IMGWIDTH:window.screen.availWidth,//轮播图片宽度即浏览器屏幕可用宽度
	$parent:null,//轮播父元素
	$imgs:null,//轮播的ul imgs
	$indexs:null,//轮播的ul indexs（小圆点）
	DURATION:1000,//每次轮播总时间
	WAIT:4000,//每次轮播间时间间隔
	timer:null,//自动轮播定时器序号
	canAuto:true,//是否可自动轮播
	init:function($parent){
		this.$parent=$parent;
		this.$parent.addClass('slider');
		// todo:此处可优化（用document.fra）
		this.$imgs=$("<ul class='imgs'></ul>");
		this.$indexs=$("<ul class='indexs'></ul>");
		this.$parent.append(this.$imgs);
		this.$parent.append(this.$indexs);
		this.LIWIDTH=parseFloat(this.IMGWIDTH);
		this.$imgs.css('width',imgs.length*this.LIWIDTH);
		this.updateView();
		this.$indexs.on("mouseover","li:not(.hover)",function(e){
			$target=$(e.target);
			this.move($target.index()-$target.siblings(".hover").index());
			$target.addClass("hover").siblings(".hover").removeClass("hover");

		}.bind(this));
		this.myBind();
		this.autoMove();
	},
	myBind:function(){
		this.$indexs.on('mouseover','li',this,
			function(e){
				var $this=$(this);
				//console.log($this);
				if(!$this.hasClass('hover')){
					e.data.move($this.i-$this.siblings('.hover').html());
				}
			}
		);
		this.$parent.hover(
			function(){
				clearTimeout(this.timer);
				this.timer=null;
				this.canAuto=false;
			}.bind(this),
			function(){
				this.canAuto=true;
				this.autoMove();
			}.bind(this)
		)
	},
	autoMove:function(){
		this.timer=setTimeout(this.move.bind(this,1),this.WAIT);
	},
	move:function(n){
		this.$imgs.stop(true);//停止$imgs上所有动画
		if(n>0){//左移
			this.$imgs.animate({left:-n*this.LIWIDTH},this.DURATION,this.changeImgs.bind(this,n));
		}else{
			this.changeImgs(n);
			this.$imgs.animate({left:0},this.DURATION);
		}
	},
	changeImgs:function(n){
		if(n>0){
			imgs=imgs.concat(imgs.splice(0,n));
			this.updateView();
			this.$imgs.css('left',0);
		}else{
			n*=-1;
			imgs=imgs.splice(imgs.length-(n),n).concat(imgs);
			this.updateView();
			var left=parseFloat(this.$imgs.css("left"))-n*this.LIWIDTH;
			this.$imgs.css("left",left);
		}
		if(this.canAuto)
			this.autoMove();
	},
	updateView:function(){
        for(var i=0,liImgs='',liIdxs='';i<imgs.length;i++){
            liImgs+="<li style='background:url("+imgs[i].img+") 50% 0 no-repeat;'></li>";//需改进
            liIdxs+="<li></li>";
		}
		this.$imgs.html(liImgs);
		this.$indexs.html(liIdxs);
		this.$indexs.children("li:eq("+imgs[0].i+")").addClass('hover').siblings(".hover").removeClass("hover");
		this.$imgs.find('li').css('width',this.LIWIDTH);
	}
}
//向jquery对象的原型中添加slider插件函数
$.fn.slider=function(){slider.init(this);}
