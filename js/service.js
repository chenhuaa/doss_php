//加载公共头尾部
$('div#header').load('php/header.php',function(){
    $('.nav_02 a:contains("服务")').addClass('current');
});
$('div#footer').load('php/footer.php');

$(function () {
    $(".services .ser").mouseover(function () {
        $(".services .ser").find("img").css("opacity", "0.3");
        $(this).find('.ser-img').find("img").css("opacity","1");
    });
    $(".services .ser").mouseout(function () {
        $(".services .ser").find("img").css("opacity", "1");
    });
});

//QA显隐切换
$('.support5_3').click(function(){
    var support=$(this).siblings('.support5_4');
    var arrow=$(this).children('.support5_3_2').find('img');
    if(support.css('display')==='none'){
        support.css('display','block');
        arrow.attr('src','images/faq_s.png');
    }else{
        support.css('display','none');
        arrow.attr('src','images/faq_x.png');
    }
});

//下方栏目显示
//点击上方区域切换
$('.services-box .services').on('click','.ser:not(:last)',function(e){
    e.preventDefault();
    var showId=$(this).find('a').attr('href');
    $('#content .service-box').addClass('current').siblings().removeClass('current');
	$($('.service-box-left').find('a.'+showId.slice(1))).addClass('current').parent().siblings().children('.current').removeClass('current');
    $(showId).addClass('current').siblings('.current').removeClass('current');
});
//点击侧边栏切换
$('.service-box-left').on('click','a',function(e){
    e.preventDefault();
    $(this).addClass('current').parent().siblings().children('.current').removeClass('current');
    $($(this).attr('href')).addClass('current').siblings('.current').removeClass('current');
});