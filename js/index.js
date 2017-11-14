//加载公共头尾部
$('div#header').load('php/header.php');
$('div#footer').load('php/footer.php');

//加载轮播
var imgs = [];
$(function () {
    $.ajax({
        type: 'GET',
        url: 'php/slider.php',
        data: {origin: 'index'},
        success: function (data) {
            imgs = data;
            $("#banner").slider();
        },
        error: function(){
            alert("出错");
        }
    });
})

//加载小图片
$.ajax({
    type: 'GET',
    url: 'php/index.php',
    success: function (imgs) {
        var html = '';
        $.each(imgs, function (i, pic) {
            html += `
               <div class="banner_s">
                   <a href="${pic.url}"><img src="${pic.img}"></a>
               </div>
            `;
        });
        $('#section').html(html);
    },
    error: function(){
        alert("出错");
    }
});