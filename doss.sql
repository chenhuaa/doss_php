SET NAMES UTF8;
DROP DATABASE IF EXISTS doss;
CREATE DATABASE doss CHARSET=UTF8;
USE doss;

#轮播图
CREATE TABLE slider(
    i INT,
    img VARCHAR(64),
    url VARCHAR(64),
    origin VARCHAR(32)
);
INSERT INTO slider VALUES
(0,'images/index/banner_01.jpg','#','index'),
(1,'images/index/banner_02.jpg','#','index'),
(2,'images/index/banner_03.jpg','#','index'),
(3,'images/index/banner_04.jpg','#','index'),
(0,'images/product/banner_01.jpg','#','product'),
(1,'images/product/banner_02.jpg','#','product'),
(2,'images/product/banner_03.jpg','#','product'),
(3,'images/product/banner_04.jpg','#','product');

#主页banner
CREATE TABLE index_bannerS(
    i INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(64),
    url VARCHAR(64)
);
INSERT INTO index_bannerS VALUES
(NULL,'images/index/banner_01_s.jpg','#'),
(NULL,'images/index/banner_02_s.jpg','#'),
(NULL,'images/index/banner_03_s.jpg','#');

#产品列表
CREATE TABLE product_prsList(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(64),
    pname VARCHAR(32),
    pro VARCHAR(64),
    price FLOAT(8,2)
);
INSERT INTO product_prsList VALUES
(NULL,'images/product/doss_1189s.jpg','阿希莫3s 1189s','阿希莫 1189S蓝牙音箱无线充电NFC功能手机APP插卡智能音响低音炮','269'),
(NULL,'images/product/doss_1362.jpg','DS-1362 小巧',' ','119'),
(NULL,'images/product/doss_1822.jpg','音乐猫DS-1822','天猫定制 音乐猫 DS-1822','219'),
(NULL,'images/product/doss_1162.jpg','德仕 DS-1162 蓝牙音响','','108'),
(NULL,'images/product/doss_1825.jpg','Cloud Fox3 DS-1825','全感式智能云音响','419'),
(NULL,'images/product/doss_1823.jpg','Cloud Fox2 DS-1823','没网络 也能听','388'),
(NULL,'images/product/doss_1511.jpg','阿希莫迷彩 DS-1511','不出彩 怎么型','148'),
(NULL,'images/product/doss_1563.jpg','妙音盒 DS-1563','鉴听版蓝牙音响，好声音，随心移动。','319'),
(NULL,'images/product/doss_ting.jpg','听吧','蓝牙wifi音箱APP智能云听吧音响','419'),
(NULL,'images/product/doss_1668.jpg','DS-1668 CLOUD FOX','DOSS DS-1668 CLOUD FOX WIFI智能云音响/音箱 APP海量音乐','148'),
(NULL,'images/product/doss_m15.jpg','阿希莫M15','DOSS德士阿希莫M15 穿戴式健步音箱插卡蓝牙健康数','219'),
(NULL,'images/product/doss_bang.jpg','棒','高颠之上，方显出类拔萃','178'),
(NULL,'images/product/doss_bang6.jpg','旋风6','新概念无线读卡户外蓝牙音箱','148'),
(NULL,'images/product/doss_asm3.jpg','阿希莫Asimom3','APP云播放蓝牙音响','219'),
(NULL,'images/product/doss_asmx1.jpg','阿希莫X1','DOSS阿希莫X1 DS-1198无线蓝牙 插卡音箱游戏专用音箱','319'),
(NULL,'images/product/doss_stone.jpg','石头','精美的石头会唱歌 穿戴式蓝牙音箱','89'),
(NULL,'images/product/doss_pie.jpg','派','','159'),
(NULL,'images/product/doss_xm.jpg','醒目','旷世之作，尊贵之选','199'),
(NULL,'images/product/doss_lt.jpg','乐途','乐动无限 涂添精彩','219'),
(NULL,'images/product/doss_asm2s.jpg','阿希莫2S','阿希莫2S 我要与众不同','188');

#产品详情页图
CREATE TABLE product_detail(
    i INT PRIMARY KEY AUTO_INCREMENT,
    pid INT,
    img VARCHAR(64)
);
INSERT INTO product_detail VALUES
(NULL,1,'images/product/20160601085424_4570.jpg'),
(NULL,2,'images/product/20160524141609_2965.jpg'),
(NULL,3,'images/product/20160518092651_7196.jpg'),
(NULL,4,'images/product/20160512120436_9723.jpg'),
(NULL,5,'images/product/20160705174411_9581.jpg'),
(NULL,5,'images/product/20160325102538_1197.jpg'),
(NULL,6,'images/product/20160218113803_0222.jpg'),
(NULL,6,'images/product/20160218113804_2097.jpg'),
(NULL,6,'images/product/20160218113805_1316.jpg'),
(NULL,6,'images/product/20160218113806_4754.jpg'),
(NULL,6,'images/product/20160218113808_4598.jpg'),
(NULL,6,'images/product/20160218113809_6941.jpg'),
(NULL,6,'images/product/20160218113811_3191.jpg'),
(NULL,6,'images/product/20160705170400_6812.jpg'),
(NULL,6,'images/product/20160218113814_4129.jpg'),
(NULL,6,'images/product/20160218113815_5067.jpg'),
(NULL,6,'images/product/20160218113817_1786.jpg'),
(NULL,6,'images/product/20160218113818_6786.jpg'),
(NULL,6,'images/product/20160705170455_0565.jpg'),
(NULL,7,'images/product/20160218102504_7662.jpg'),
(NULL,7,'images/product/20160218102512_4695.jpg'),
(NULL,7,'images/product/20160218102539_2356.jpg'),
(NULL,7,'images/product/20160218102543_1732.jpg'),
(NULL,7,'images/product/20160218102545_3764.jpg'),
(NULL,7,'images/product/20160218102547_0795.jpg'),
(NULL,7,'images/product/20160218102548_7202.jpg'),
(NULL,7,'images/product/20160218102549_9389.jpg'),
(NULL,7,'images/product/20160218102551_3608.jpg'),
(NULL,7,'images/product/20160218102552_6109.jpg'),
(NULL,7,'images/product/20160218102553_8296.jpg'),
(NULL,7,'images/product/20160218102554_7515.jpg'),
(NULL,7,'images/product/20160218102556_3297.jpg'),
(NULL,7,'images/product/20160218102558_4391.jpg'),
(NULL,7,'images/product/20160218102600_0641.jpg'),
(NULL,7,'images/product/20160218102601_7048.jpg'),
(NULL,7,'images/product/20160218105916_1918.jpg'),
(NULL,7,'images/product/20160218102604_8611.jpg'),
(NULL,7,'images/product/20160218102606_3299.jpg'),
(NULL,7,'images/product/20160218102608_2205.jpg'),
(NULL,7,'images/product/20160218102646_1275.jpg'),
(NULL,7,'images/product/20160218102647_8619.jpg'),
(NULL,7,'images/product/20160218102652_2370.jpg'),
(NULL,7,'images/product/20160218102653_7839.jpg'),
(NULL,7,'images/product/20160218102656_4090.jpg'),
(NULL,7,'images/product/20160218102700_2215.jpg'),
(NULL,8,'images/product/20151221140810_5140.jpg'),
(NULL,8,'images/product/20151221140817_5140.jpg'),
(NULL,8,'images/product/20160705172509_6112.jpg'),
(NULL,8,'images/product/20151221140827_7640.jpg'),
(NULL,8,'images/product/20160705172707_4245.jpg'),
(NULL,8,'images/product/20151221140840_3733.jpg'),
(NULL,8,'images/product/20151221140846_5608.jpg'),
(NULL,8,'images/product/20151221140850_6233.jpg'),
(NULL,8,'images/product/20151221140856_1233.jpg'),
(NULL,8,'images/product/20160705172756_0498.jpg'),
(NULL,8,'images/product/20151221140911_5140.jpg'),
(NULL,8,'images/product/20151221140914_0452.jpg'),
(NULL,8,'images/product/20151221140921_1858.jpg'),
(NULL,8,'images/product/20151221140924_7015.jpg'),
(NULL,8,'images/product/20151221140932_0765.jpg'),
(NULL,8,'images/product/20151221140934_3421.jpg'),
(NULL,8,'images/product/20151221140939_8265.jpg'),
(NULL,8,'images/product/20151221140942_7640.jpg'),
(NULL,8,'images/product/20151221140946_7640.jpg'),
(NULL,8,'images/product/20151221140950_6546.jpg'),
(NULL,8,'images/product/20151221141149_2952.jpg'),
(NULL,8,'images/product/20151221141152_6546.jpg'),
(NULL,9,'images/product/20160225114159_5927.jpg'),
(NULL,9,'images/product/20151109175405_7856.jpg'),
(NULL,9,'images/product/20160225114224_2646.jpg'),
(NULL,9,'images/product/20160225114615_3271.jpg'),
(NULL,9,'images/product/20160225114347_2021.jpg'),
(NULL,9,'images/product/20151109175538_4887.jpg'),
(NULL,9,'images/product/20151109175606_6918.jpg'),
(NULL,9,'images/product/20160225114640_7646.jpg'),
(NULL,9,'images/product/20151109175658_2856.jpg'),
(NULL,9,'images/product/20151109175722_6137.jpg'),
(NULL,9,'images/product/20151109175804_0825.jpg'),
(NULL,9,'images/product/20151109175827_1137.jpg'),
(NULL,9,'images/product/20151109175842_2387.jpg'),
(NULL,9,'images/product/20151109175858_5043.jpg'),
(NULL,9,'images/product/20151109175915_2543.jpg'),
(NULL,10,'images/product/20160524141609_2965.jpg'),
(NULL,11,'images/product/20160524141609_2965.jpg'),
(NULL,12,'images/product/20160524141609_2965.jpg'),
(NULL,13,'images/product/20160524141609_2965.jpg'),
(NULL,14,'images/product/20160524141609_2965.jpg'),
(NULL,15,'images/product/20160524141609_2965.jpg'),
(NULL,16,'images/product/20160524141609_2965.jpg'),
(NULL,17,'images/product/20160524141609_2965.jpg'),
(NULL,18,'images/product/20160524141609_2965.jpg'),
(NULL,19,'images/product/20160524141609_2965.jpg'),
(NULL,20,'images/product/20160524141609_2965.jpg');

#产品详情页规格数据
CREATE TABLE product_parm(
    i INT PRIMARY KEY AUTO_INCREMENT,
    pid INT,
    model VARCHAR(32),
    outputPower VARCHAR(32),
    BTHVersion VARCHAR(32),
    battery VARCHAR(32),
    charge VARCHAR(32),
    psize VARCHAR(32)
);
INSERT INTO product_parm VALUES
(NULL,1,'DS-1189S','1.5W','v4.0+EDR','3.7v/750mAh','5.0v/750mA','62*62*72.5mm');

#新闻列表
CREATE TABLE news_nList(
    newsId INT PRIMARY KEY AUTO_INCREMENT,
    origin VARCHAR(12),
    img VARCHAR(64),
    url VARCHAR(64),
    title VARCHAR(32),
    ntime BIGINT,
    npro VARCHAR(1024)
);
INSERT INTO news_nList VALUES
(NULL,'gs','images/news/20160511145305_0200.jpg','news20160506.php','音乐猫狂欢会 DOSS联手阿里/蜻蜓FM发布音乐猫音响','1462377600000','北京时间2016年5月5日，DOSS德仕这个数码音响行业里的大牌生产厂商，举办了一场“音乐猫·狂欢会”主题发布会。这次展出的产品是一款叫做音乐猫的音响，此展会十分火爆。发布会现场，为了迎合“音乐猫·狂欢会”的主题，发布会现场请来了数十位年轻时尚的猫女郎助阵，一时间将现场气氛推向了高潮，同时也映衬出这是一款与天猫合作主打年轻用户群体的产品。'),
(NULL,'gs','images/news/20160416140011_1125.png','news20160505.php','DOSS音响线上促销活动汇总','1462337600000','DOSS产品线上最新促销活动展示以及汇总。'),
(NULL,'gs','images/news/20160415113752_1004.jpg','news20160506.php','三款Cloud Fox智能云音响，到底有什么区别？','1462337000000','从2015年3月至今，DOSS已经发布了三款同系列智能云音响，分别以Cloud Fox，Cloud Fox2和Cloud Fox3命名。同样是WiFi音响，这三款产品到底有什么区别呢？今天小编来为大家细细盘点'),
(NULL,'gs','images/news/20151221134820_5296.jpg','news20160506.php','妙趣横生余音缭绕 DOSS妙音盒蓝牙音响评测','1462337500000','妙音盒支持蓝牙播放，TF播放，以及AUX音频接口播放三种播放模式，满足多种听音需求。听音方面，音质表现出色，配备两个高磁通高密度的钕铁硼喇叭，使用航天级KSV材料制成的音圈和高阻燃性能的conex弹波，双被动膜共振技术，外加工程师的精心调校，使得妙音盒呈现出动人心魄的音质，感觉无愧于“妙音盒”的称号。'),
(NULL,'gs','images/news/20151221134851_2796.jpg','news20160506.php','躺在床上听世界 DOSS听吧WiFi音箱评测','1462336500000','相对于DOSS之前推出的WiFi音箱，这款听吧WiFi音箱的受众面更广，除了喜欢听音的用户之外，很多听书的用户同样可以选择，DOSS在技术上的实力有一次得到了认可，其售价仅为466元，也更加符合我们国人的口味，无论是用来自己聆听还是作为礼品送给亲友都是一个非常不错的选择，这款WiFi音箱目前已经在京东上市销售，想要购买体验的朋友们绝对不要错过。'),
(NULL,'gs','images/news/20151020103638_6406.jpg','news20160506.php','为家居而生 DOSS云狐WiFi音箱真机曝光','1462336000000','DOSS云狐是一款WiFi智能音箱，它与家中的无线路由器相连，通过手机、平板等APP客户端进行控制。可以播放天天动听等在线音乐流媒体，真正告别实体音乐。同时，DOSS云狐音箱还具备一键连接、一键播放等人性化设计，解决WiFi音箱连接过程中的问题。DOSS官方目前仍没有公布云狐WiFi音箱的最终售价，不过根据其以往的定价策略，价格应该不会太贵。中关村在线数字音频频道会在近期带来这款产品的详细评测，敬请关注。'),
(NULL,'gs','images/news/20150724173416_7582.jpg','news20160506.php','阿希莫M15 引爆智能穿戴新革命','1462337600000','蓝牙音频厂商DOSS爆出一款新型智能穿戴，首开先河将智能穿戴与智能音响融为一体。DOSS首次在官方微博上打出宣传大旗，以"阿希莫M计划"为话题，抛出"为智能手环支招"的有奖征集活动。目前阅读量已达907.2万，讨论量达1.7万。这些数据，不仅是DOSS的影响号召力，更显示消费者对智能穿戴的热情未减。并且所提出的各种建议也是真真切切地来源于生活所需'),
(NULL,'gs','images/news/20150724173251_8634.jpg','news20160506.php','开创行业先河 DOSS新品发布会深圳召开','1462337600000','2014年，4月8日，国内多媒体音箱行业著名品牌DOSS在深圳举办“新梦想 新DOSS”新品发布会，为音频业的发展融入更多创新元素，成为音频拓荒者。发布会创新亮点、粉丝盛大聚会以及新颖的产品，让会场所有人流连忘返。整场发布会虽然时间只有2个小时，但是亮点不断，给人耳目一新的感觉。现场配备11米长的LED显示屏，强烈的视觉冲击力，磅礴大气地显示出DOSS的行业高度。'),
(NULL,'gs','images/news/20150724173139_9883.jpg','news20160506.php','揭秘"X"计划 DOSS深圳召开新品发布会','1462337600000','作为国内知名品牌的DOSS在最近给我们带来了很多的惊喜，除了各种给力的新品发布之外，其推出神秘“X”计划也牵动了很多用户的心，现在关于DOSS的“X”计划还在众说纷纭当中。在2014年4月8日清明节刚刚过去的时候，DOSS将要在深圳马哥孛罗好日子酒店隆重举行新品发布会，在本次发布会当中除了有神秘新品带给我们惊喜之外，DOSS还会解密这个神秘的“X”计划。'),
(NULL,'gs','images/news/20150724172625_8363.jpg','news20160506.php','隆重解密"X"计划 DOSS新品发布会来袭','1462337600000','通过DOSS官方微博和微信我们了解到，DOSS将要在2014年4月8日在深圳马哥孛罗好日子酒店隆重举行新品发布会。并同时泄露出邀请函的设计。在本次的发布会当中，DOSS不仅着重心思在发布会的现场布置上，而且在嘉宾的邀请上也下了不少功夫，届时我们可以不仅可以看到广大的DOSS粉丝，并且还能看到微博和微信的领军人物，让人非常的期待。'),
(NULL,'gs','images/news/20150724172211_9468.jpg','news20160506.php','DOSS顶级X计划 上演音频首家宣传大戏','1462337600000','根据我们在DOSS处得到的消息，在之前我们介绍的DOSS“X”计划曝光之后，其猜想一直不断，而DOSS也在其官方微博(http://weibo.com/dosslife )和微信中开展了有奖竞猜活动，以苹果5S、三星Note等15万大奖为醒目头条，让其一度成为了最受关注的音频厂商之一。'),
(NULL,'gs','images/news/20150724171659_1489.jpg','news20160506.php','踏青好伴侣 DOSS乐途三防蓝牙音响','1462337600000','有道是一年之计在于春，清雨霏霏、春暖花开，正是踏青的好时节。邀上三五好友，趁此生机盎然时分，徒步或骑行，一路上，远观青山巍峨，近闻鸟语花香，真不失为人间一乐事!'),
(NULL,'gs','images/news/20150724171305_4635.jpg','news20160506.php','元宵+情人节，如何俘获你的女神之芳心？','1462337600000','突然发现马上就要情人节了，今年的情人节正好和元宵是同一天，看来今年的2月14号一定是个各种在一起的日子。不知各位宅男们已经有心仪的女神了吗？'),
(NULL,'gs','images/news/20150724171140_3877.jpg','news20160506.php','解决终端存储 无线读卡将成蓝牙新突破','1462337600000','众所周知，苹果通过iPhone 和iPad掀起智能便携数码风潮，并带动蓝牙便携音箱迅猛发展的同时，也非常坑爹的通过存储容量的大小来划分产品级别。一个32G的iPhone 5S要比16G版的贵七八百块钱；iPad Air 32G版则要比16GB版贵了近1000元；而一张16G的TF卡只不过区区几十块钱而已。'),
(NULL,'gs','images/news/20150724170935_0695.jpg','news20160506.php','情人节创意礼品 DOSS音箱语音表爱意','1462337600000','2014年最甜蜜的日子马上就要来了，2月14日，这一天，又恰好是正月十五闹元宵的日子。这样的机缘巧合，是很难才会遇到的，所以，今年的情人节显得尤为珍贵。可是，该送什么礼物给对方以作纪念呢？'),
(NULL,'gs','images/news/20150724170645_9868.jpg','news20160506.php','小身板巨能量 DOSS摩卡mini玲珑上市','1462337600000','DOSS在2013年7月份上市一款火爆产品--摩卡NFC无线蓝牙音响，此款音箱以360度环绕音效和NFC近场连接为特色功能，以及独特的杯型设计和亮丽的国际流行色而备受瞩目。近日，小编得知，DOSS在摩卡的基础上研发了摩卡MINI，也已经上市。虽为小型身板，但是又有哪些独特呢？'),
(NULL,'mt','images/news/20150724172211_9468.jpg','news20160506.php','DOSS顶级X计划 上演音频首家宣传大戏','1462337600000','根据我们在DOSS处得到的消息，在之前我们介绍的DOSS“X”计划曝光之后，其猜想一直不断，而DOSS也在其官方微博(http://weibo.com/dosslife )和微信中开展了有奖竞猜活动，以苹果5S、三星Note等15万大奖为醒目头条，让其一度成为了最受关注的音频厂商之一。'),
(NULL,'mt','images/news/20160415113752_1004.jpg','news20160506.php','三款Cloud Fox智能云音响，到底有什么区别？','1462337000000','从2015年3月至今，DOSS已经发布了三款同系列智能云音响，分别以Cloud Fox，Cloud Fox2和Cloud Fox3命名。同样是WiFi音响，这三款产品到底有什么区别呢？今天小编来为大家细细盘点'),
(NULL,'mt','images/news/20150724173139_9883.jpg','news20160506.php','揭秘"X"计划 DOSS深圳召开新品发布会','1462337600000','作为国内知名品牌的DOSS在最近给我们带来了很多的惊喜，除了各种给力的新品发布之外，其推出神秘“X”计划也牵动了很多用户的心，现在关于DOSS的“X”计划还在众说纷纭当中。在2014年4月8日清明节刚刚过去的时候，DOSS将要在深圳马哥孛罗好日子酒店隆重举行新品发布会，在本次发布会当中除了有神秘新品带给我们惊喜之外，DOSS还会解密这个神秘的“X”计划。'),
(NULL,'mt','images/news/20150724172625_8363.jpg','news20160506.php','隆重解密"X"计划 DOSS新品发布会来袭','1462337600000','通过DOSS官方微博和微信我们了解到，DOSS将要在2014年4月8日在深圳马哥孛罗好日子酒店隆重举行新品发布会。并同时泄露出邀请函的设计。在本次的发布会当中，DOSS不仅着重心思在发布会的现场布置上，而且在嘉宾的邀请上也下了不少功夫，届时我们可以不仅可以看到广大的DOSS粉丝，并且还能看到微博和微信的领军人物，让人非常的期待。'),
(NULL,'mt','images/news/20150724171305_4635.jpg','news20160506.php','元宵+情人节，如何俘获你的女神之芳心？','1462337600000','突然发现马上就要情人节了，今年的情人节正好和元宵是同一天，看来今年的2月14号一定是个各种在一起的日子。不知各位宅男们已经有心仪的女神了吗？'),
(NULL,'mt','images/news/20151221134851_2796.jpg','news20160506.php','躺在床上听世界 DOSS听吧WiFi音箱评测','1462336500000','相对于DOSS之前推出的WiFi音箱，这款听吧WiFi音箱的受众面更广，除了喜欢听音的用户之外，很多听书的用户同样可以选择，DOSS在技术上的实力有一次得到了认可，其售价仅为466元，也更加符合我们国人的口味，无论是用来自己聆听还是作为礼品送给亲友都是一个非常不错的选择，这款WiFi音箱目前已经在京东上市销售，想要购买体验的朋友们绝对不要错过。'),
(NULL,'mt','images/news/20150724171659_1489.jpg','news20160506.php','踏青好伴侣 DOSS乐途三防蓝牙音响','1462337600000','有道是一年之计在于春，清雨霏霏、春暖花开，正是踏青的好时节。邀上三五好友，趁此生机盎然时分，徒步或骑行，一路上，远观青山巍峨，近闻鸟语花香，真不失为人间一乐事!'),
(NULL,'xp','images/news/20150724173251_8634.jpg','news20160506.php','开创行业先河 DOSS新品发布会深圳召开','1462337600000','2014年，4月8日，国内多媒体音箱行业著名品牌DOSS在深圳举办“新梦想 新DOSS”新品发布会，为音频业的发展融入更多创新元素，成为音频拓荒者。发布会创新亮点、粉丝盛大聚会以及新颖的产品，让会场所有人流连忘返。整场发布会虽然时间只有2个小时，但是亮点不断，给人耳目一新的感觉。现场配备11米长的LED显示屏，强烈的视觉冲击力，磅礴大气地显示出DOSS的行业高度。'),
(NULL,'xp','images/news/20150724172211_9468.jpg','news20160506.php','DOSS顶级X计划 上演音频首家宣传大戏','1462337600000','根据我们在DOSS处得到的消息，在之前我们介绍的DOSS“X”计划曝光之后，其猜想一直不断，而DOSS也在其官方微博(http://weibo.com/dosslife )和微信中开展了有奖竞猜活动，以苹果5S、三星Note等15万大奖为醒目头条，让其一度成为了最受关注的音频厂商之一。'),
(NULL,'xp','images/news/20160416140011_1125.png','news20160506.php','DOSS音响线上促销活动汇总','1462337600000','DOSS产品线上最新促销活动展示以及汇总。');
