//加载公共头尾部
$('div#header').load('php/header.php',function(){
    $('.nav_02 a:contains("产品")').addClass('current');
});
$('div#footer').load('php/footer.php');

$(function () {
    /**回到顶部***/
    function browser_width() {
        var w = window.screen.availWidth;
        return w;
    }
    $("#scrolltop").css("left", browser_width() * 0.94);

    /**标题栏随着滚动条上下滚动***/
    var h = $('#title-top').offset().top;
    $(window).scroll(function () {
        if ($(window).scrollTop() > h) {
            $('#title-top').addClass('J_fixNavbar');
            $("#scrolltop").fadeIn(500);
        } else {
            $('#title-top').removeClass('J_fixNavbar');
            $("#scrolltop").fadeOut(500);
        }
    });

    /**加载相应产品信息**/
    var pid = location.search.substring( location.search.indexOf('=')+1 );
    $.ajax({
        data:{pid:pid},
        url:'php/product_detail.php',
        success:function(list){
            //console.log(list);
            $('#title-top .title h2').html(list.pname);
            var html='';
            $.each(list.img,function(i,pImg){
                html+=`<img src="${pImg.img}">`;
            });
            $('#gs').html(html);
            /*var cs=list.cs;
            html=`
                <tr>
                    <td>型号</td>
                    <td>${cs.model}</td>
                </tr>
                <tr>
                    <td>输出功率</td>
                    <td>${cs.outputPower}</td>
                </tr>
                <tr>
                    <td>蓝牙版本</td>
                    <td>${cs.BTHVersion}</td>
                </tr>
                <tr>
                    <td>音响电池</td>
                    <td>${cs.battery}</td>
                </tr>
                <tr>
                    <td>充电输入</td>
                    <td>${cs.charge}</td>
                </tr>
                <tr>
                    <td>产品尺寸</td>
                    <td>${cs.psize}</td>
                </tr>
            `;
            $('#cs tbody').html(html);*/
        }
    });

    /**切换内容**/
    $('.nav-switch').on('click','a',function(e){
        e.preventDefault();
        $(this).addClass('tab-active').siblings('.tab-active').removeClass('tab-active');
        $($(this).attr('href')).addClass('active').siblings('.active').removeClass('active');
    });
});