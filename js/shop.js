//加载公共头尾部
$('div#header').load('php/header.php',function(){
    $('.nav_02 a:contains("在线商店")').addClass('current');
});
$('div#footer').load('php/footer.php');