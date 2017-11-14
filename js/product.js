//加载公共头尾部
$('div#header').load('php/header.php', function () {
    $('.nav_02 a:contains("产品")').addClass('current');
});
$('div#footer').load('php/footer.php');

//加载轮播
var imgs = [];
$(function () {
    $.ajax({
        type: 'GET',
        url: 'php/slider.php',
        data: {origin: 'product'},
        success: function (data) {
            imgs = data;
            $("#banner").slider();
        }
    });
})

//加载产品列表
function loadProducts(data) {
    $.ajax({
        url: 'php/product.php',
        data: {kw: data},
        success: function (prs) {
            var html = '';
            if (prs.code === 5) {
                html = prs.msg;
            } else {
                html = '<ul>';
                $.each(prs, function (i, p) {
                    html += `
                    <li>
                        <div class="pr-box">
                            <div class="pr-img"> <a href="product_detail.html"> <img class="lazy" src="${p.img}"></a></div>
                            <div class="pr-name">${p.pname}</div>
                            <div class="pr-pro">${p.pro}</div>
                            <div class="pr-price">售　价: ¥ <span>${p.price}</span></div>
                            <div class="pr-bts">
                                <div class="bt-more"><a href="product_detail.html?pid=${p.pid}">查看详情</a></div>
                                <div class="bt-buy"><a href="#" target="_blank">立即购买</a></div>
                            </div>
                        </div>
                    </li>
                `;
                });
                html += '</ul>';
            }
            $('.section>.prs').html(html);
        }
    });
}
loadProducts();

//点击按钮筛选产品
$('#formPro .button').click(function () {
    var kw = $('#keywords').val();
    (!kw)&&(kw='');
    loadProducts(kw);
});

//onkeyup异步筛选产品
$('#keywords').keyup(function(){
    var kw = $('#keywords').val();
    (!kw)&&(kw='');
    loadProducts(kw);
});

