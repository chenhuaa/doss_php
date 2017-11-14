/**********加载公共头尾部**********/

$('div#header').load('php/header.php', function () {
    $('.nav_02 a:contains("资讯")').addClass('current');
});
$('div#footer').load('php/footer.php');


/**********分页查询**********/

function showNews() {

    var newsOrigin = 'gs';   //当前新闻栏目

    //切换新闻栏目
    $('#content .nav a').click(function (e) {
        e.preventDefault();
        //隐藏新闻详情页，显示新闻条目及分页栏
        $('#content>.news_c').css('display', 'none').siblings(':not(.nav)').css('display', 'block');
        var $this = $(this);
        //目标元素的 href 属性中保存了新闻来源
        var origin = $this.attr('href');
        //新闻来源变更时，改变newsOrigin中的值
        newsOrigin = origin;
        $this.addClass('active').parent().siblings().children('.active').removeClass('active');
        loadNews(origin, 1);
    });

    var pageCount = null;  //当前栏目新闻总页数

    //根据页码分页查询指定页面上的新闻信息
    function loadNews(origin, pageNum) {
        $.ajax({
            url: 'php/news.php',
            data: {pageNum: pageNum, origin: origin},
            success: function (pages) {
                var html = '<ul>';
                var nTime, Y, M, D;
                pageCount = pages.pageCount;
                for(let n of pages.data) {
                    //自定义 时间的格式
                    nTime = new Date(parseInt(n.ntime));
                    Y = nTime.getFullYear();
                    M = nTime.getMonth() + 1;
                    (M < 10) && (M = '0' + M);
                    D = nTime.getDate();
                    (D < 10) && (D = '0' + D);
                    //拼接 HTML
                    html += `
                     <li>
                         <div class="news1">
                            <a href="${n.url}">
                                <img class="lazy" data-original="${n.img}" src="${n.img}">
                            </a>
                         </div>
                         <div class="news2">
                             <div class="news2_1">
                                <a href="${n.url}">${n.title}</a>
                             </div>
                             <div class="news2_2">
                                时间：${Y}-${M}-${D}
                             </div>
                             <div class="news2_3">${n.npro}</div>
                             <div class="news2_4">
                                <a href="${n.url}">查看详情&gt;&gt;</a>
                             </div>
                         </div>
                     </li>
                `;
                };
                html += '</ul>';
                $('#content>.news').html(html);

                //创建分页条
                if(pages.pageNum===1){  //分页条左边的箭头
                    html = '<ul><li><a href="#" class="disabled"><</a></li>';
                }else{
                    html = '<ul><li><a href="#"><</a></li>';
                }
                //根据页数 创建分页页码
                //todo:这样写的原因？？？？？
                for (var i = pageCount - 1; i >= -(pageCount - 1); i--) {
                    // console.log(i);
                    if ((pages.pageNum - i > 0) && (pages.pageNum - i <= pageCount)) {
                        // console.log(i);
                        if (i === 0) {
                            html += `<li><a class="active">${pages.pageNum}</a></li>`;
                            // console.log(`<li><a class="active">${pages.pageNum}</a></li>`);
                        } else {
                            html += `<li><a href="#">${pages.pageNum - i}</a></li>`;
                            // console.log(`<li><a href="#">${pages.pageNum - i}</a></li>`);
                        }
                    }
                }
                if(pages.pageNum===pageCount){  //分页条右边的箭头
                    html += '<li><a href="#" class="disabled">></a></li></ul>';
                }else{
                    html += '<li><a href="#">></a></li></ul>';
                }
                $('#content>.pages').html(html);
            }
        });
    }

    loadNews(newsOrigin, 1);    //默认加载第一页

    //点击分页条实现分页显示新闻
    $('#content>.pages').on('click', 'a', function (e) {
        e.preventDefault();
        var $this = $(this);
        var pageNum = $this.html(); //要显示的页码
        //若页码未定义 则 页码为1
        (pageNum === undefined) && (pageNum = 1);
        if (pageNum === '&lt;') {
            pageNum = parseInt($this.parent().parent().find('.active').html());
            if (pageNum <= 1) {
                $this.addClass('disabled');
                return;
            }
            pageNum--;
        } else if (pageNum === '&gt;') {
            pageNum = parseInt($this.parent().parent().find('.active').html());
            if (pageNum >= pageCount) {
                $this.addClass('disabled');
                return;
            }
            pageNum++;
        }
        loadNews(newsOrigin, pageNum);
    });

    //点击加载新闻详情
    $('#content>.news').on('click', 'li a', function (e) {
        e.preventDefault();
        var url = $(this).attr('href');
        $.ajax({
            url: 'php/news_detail/' + url,
            success: function (txt) {
                //显示新闻详情页，隐藏新闻条目及分页栏
                $('#content>.news_c').css('display', 'block').html(txt).siblings(':not(.nav)').css('display', 'none');
            }
        });
    });
}         
showNews();