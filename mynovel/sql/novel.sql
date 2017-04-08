--删除
  drop sequence seq_aid;
  drop sequence seq_usid;
  drop sequence seq_bid;
  drop sequence seq_ssid;


  drop table admin;
  drop table collects;
  drop table menu;
  drop table discuss;
  drop table book;
  drop table users;
  drop table types;

select * from book;
select * from types;
select * from admin;
select * from users;
select * from collects;
select * from menu;
select * from discuss;

 
 
create SEQUENCE seq_aid START WITH 1001;--图书管理员编号序列 
create SEQUENCE seq_usid START WITH 1001;--用户编号
--图书管理员表
create TABLE admin(
       aid VARCHAR2(20) PRIMARY KEY,--管理员编号
       apenname VARCHAR2(30) UNIQUE NOT NULL,--用户名
       apwd varchar2(20) NOT NULL--密码
);

--用户表
create TABLE users(
       usid Varchar2(20) PRIMARY KEY,--用户编号
       uname VARCHAR2(30) UNIQUE NOT NULL,--用户名
       uemail varchar(50) ,--邮箱
       upwd varchar2(80) NOT NULL--密码
);

select * from users;

--分类表
create sequence seq_ssid start with 1001  increment by 1;

create table types(
       ssid varchar2(20) primary key,--分类的编号
       sname varchar2(50),--书的类名
       imgsrc varchar2(50)
);


update types set imgsrc = 'images/masterpiece.png' where ssid='S1002';
update types set imgsrc = 'images/kehuan.png' where ssid='S1003';
update types set imgsrc = 'images/love.png' where ssid='S1004';
update types set imgsrc = 'images/inspirational.png' where ssid='S1005';
update types set imgsrc = 'images/academic.png' where ssid='S1006';
update types set imgsrc = 'images/history.png' where ssid='S1007';
update types set imgsrc = 'images/biography.png' where ssid='S1008';
update types set imgsrc = 'images/science.png' where ssid='S1009';

--书表
create sequence seq_bid start with 1001  increment by 1;

create table book(
       bid varchar2(20) primary key,--书的编号
       bname varchar2(50),--书的名字
       bdesc varchar2(1000),--书的简介
       bdate date,--书的发布日期
       bcopyright varchar2(50),--版权
       burl varchar2(70), --书的访问地址
       bauthor varchar2(50),--作者名
       ssid varchar2(20) REFERENCES types(ssid),--分类编号
       bpic  varchar2(400)    --书的封面  --作出修改字段类型
);

--收藏表
create TABLE collects(
       usid Varchar2(20) REFERENCES users(usid),--用户编号
       bid  Varchar2(20) REFERENCES book(bid),--书编号
       udate DATE --收藏日期    
);
select * from book;
 --目录表
create TABLE menu(
       mid varchar2(20),--章节编号
       mname varchar2(50),--章名
       bid varchar2(20) REFERENCES book(bid),--书的编号
       bcontent varchar2(1000) --内容
); 
select * from menu;
--评论表
create table discuss(
       usid varchar2(50) REFERENCES users(usid),--用户编号
       bid varchar2(20) REFERENCES book(bid),--书的编号
       dcontent varchar2(100),-- 书评
       dtime date--评论时间
);

select * from book;

--插入数据
select * from ADMIN;
update admin set apenname='Molds', apwd='a' where aid='A1001';
insert into admin values('A'||seq_aid.nextval,'Mold','m');
insert into admin values('A'||seq_aid.nextval,'Jol','m');
insert into admin values('A'||seq_aid.nextval,'唐七公子','m');

insert into types(ssid,sname) values('S'||seq_ssid.nextval,'名著');
insert into types(ssid,sname) values('S'||seq_ssid.nextval,'科幻');
insert into types(ssid,sname) values('S'||seq_ssid.nextval,'爱情');
insert into types(ssid,sname) values('S'||seq_ssid.nextval,'励志');
insert into types(ssid,sname) values('S'||seq_ssid.nextval,'学术');
insert into types(ssid,sname) values('S'||seq_ssid.nextval,'杂志');
insert into types(ssid,sname) values('S'||seq_ssid.nextval,'传记');
insert into types(ssid,sname) values('S'||seq_ssid.nextval,'科学');


insert into  book values('B'||seq_bid.nextval,'梵高传','梵高的每一幅画作基本上都在他给弟弟提奥和友人的信中用诗一般的语言描述出来，在他的信中，人们可以读到他对艺术的信仰和独到见解，他对感情的态度以及他对待这个世界的方式...',to_date('2016-11-01','yyyy-MM-dd'),'湖北长江传媒数字出版有限公司','http://www.duokan.com/reader?id=e90a1d5a7ab64915aa4edb232fd83206','【荷】文森特·威廉·梵高 【荷】约翰娜·梵高·邦格 ','S1001',null);
insert into  book values('B'||seq_bid.nextval,'三生三世十里桃花','那一世，大荒之中一处荒山，成就她与他的初见。 桃花灼灼，枝叶蓁蓁，妖娆伤眼。 记忆可以封存，可心有时也会背叛，忘得了前世情缘，忘不了桃林十里，亦忘不了十里桃林中玄衣的少年。 这一世，东海水晶宫，他们不期而遇…… ',to_date('2012-10-01','yyyy-MM-dd'),'湖北长江传媒数字出版有限公司','http://www.duokan.com/reader?id=a4aa7c767bfe11e2904600163e0123ac','唐七公子','S1002',null);
insert into  book values('B'||seq_bid.nextval,'半暖','未婚夫的劈腿，情敌嚣张的闹上门，让都市女子在失去恋人的同时，失去了对爱情的信仰，面对男朋友的狡辩，嚣张的情敌挑衅，女主忍无可忍的逆反，毫不犹豫地故意跟别的男人，表现恩爱，游离在爱情的游戏当中...',to_date('2012-10-01','yyyy-MM-dd'),'北京中作华文数字传媒股份有限公司','http://www.duokan.com/reader?id=52a52c93239a4d1aa02c9851b27fb35f','顾七兮','S1003',null);
insert into  book values('B'||seq_bid.nextval,'皮囊','《皮囊》一文中的阿太，一位99岁的老太太，没文化，是个神婆。她却教给作者具有启示力量的生活态度：“肉体是拿来用的，不是拿来伺候的。”...',to_date('2014-12-09','yyyy-MM-dd'),'杭州果麦文化传媒有限公司','http://www.duokan.com/reader?id=55aa32cfd7914d5aad29334c717e28bb','蔡崇达','S1004',null);
insert into  book values('B'||seq_bid.nextval,'钓愚','一个追求利润最大化的世界为何会充满内在危机？商家、政客、广告商、食品厂家、烟酒商、制药厂如何欺骗大众？我们应如何应对？...',to_date('2016-02-01','yyyy-MM-dd'),'中信出版集团股份有限公司','http://www.duokan.com/reader?id=fd231f4b007a46998e0c47d5ad3e3854','【美】乔治·阿克洛夫 【美】罗伯特·席勒','S1005',null);
insert into  book values('B'||seq_bid.nextval,'安伯托','本系列包括20世纪后半叶最耀眼的意大利作家所著的《带着鲑鱼去旅行》《误读》《开放的作品》三本书。',to_date('2012-10-01','yyyy-MM-dd'),'中信出版集团股份有限公司','http://www.duokan.com/reader?id=60f20629c61945b2bba763954cf73aef','【意】安伯托·艾柯','S1006',null);
insert into  book values('B'||seq_bid.nextval,'小风暴','这是一部年轻人的奋斗史，更是一类人对爱、梦想与青春交出的答卷。',to_date('2016-11-01','yyyy-MM-dd'),'中信出版集团股份有限公司','http://www.duokan.com/reader?id=511c100e100943cd93eb7a111524b51f','肖茉莉','S1007',null);
insert into  book values('B'||seq_bid.nextval,'我不喜欢这世界，只喜欢你','这是一对恋人的爱情回忆录，记载了两位恋人之间又温暖又萌爱的小故事。',to_date('2015-05-01','yyyy-MM-dd'),'北京风行盛世文化传播有限公司','http://www.duokan.com/reader?id=55323fbe4dc345809ca75a252b2df84e','乔一','S1008',null);
insert into  book values('B'||seq_bid.nextval,'明朝那些事','历史是什么？历史就是那些残台断瓦、古庙荒冢吗？就是那些枯燥的史料吗？不是，绝对不是...',to_date('2011-01-01','yyyy-MM-dd'),'北京磨铁数盟信息技术有限公司','http://www.duokan.com/reader?id=eb30aac8a5da44bfb5384e590ab03040','当年明月','S1007',null);
insert into  book values('B'||seq_bid.nextval,'乖，摸摸头','一本让你舍不得读完的短篇故事集，时而含泪微笑，时而又掩卷长思。...',to_date('2014-10-01','yyyy-MM-dd'),'中南博集天卷文化传媒有限公司','http://www.duokan.com/reader?id=d6118fadb24b4dab8803562d18e2d1bd','大冰','S1006',null);
insert into  book values('B'||seq_bid.nextval,'追风筝的人','2000年美国加利福利亚，知名作家阿富汗人阿米尔接到一个电话，将他带回了童年的岁月...',to_date('2013-06-18','yyyy-MM-dd'),'北京世纪文景文化传播有限责任公司','http://www.duokan.com/reader?id=a89dc87bc6134be598610a04f0d62026','【美】卡勒德·胡赛尼','S1005',null);



insert into users values('U'||seq_usid.nextval,'李类','1138864456@qq.com','405bef64f90e39ddc8f8c9655f480e82dfddd60c');
insert into users values('U'||seq_usid.nextval,'陈看','1441964048@qq.com','405bef64f90e39ddc8f8c9655f480e82dfddd60c');
insert into users values('U'||seq_usid.nextval,'leesin','1441962248@qq.com','405bef64f90e39ddc8f8c9655f480e82dfddd60c');


insert into discuss values('U1001','B1002','很有意思',to_date('2016-12-9','yyyy-MM-dd'));
insert into discuss values('U1001','B1003','不错',to_date('2016-11-9','yyyy-MM-dd'));

insert into collects values('U1003','B1004',to_date('2016-03-19','yyyy-MM-dd'));
insert into collects values('U1003','B1002',to_date('2015-10-01','yyyy-MM-dd'));
insert into collects values('U1003','B1003',to_date('2015-07-19','yyyy-MM-dd'));
insert into collects values('U1003','B1007',to_date('2016-04-9','yyyy-MM-dd'));


insert into discuss values('U1003','B1004','很有意思',to_date('2016-12-9','yyyy-MM-dd'));
insert into discuss values('U1002','B1003','不错',to_date('2016-11-9','yyyy-MM-dd'));

insert into menu values('序','追忆文森特·梵高','B1001','海牙1872年至1873年——伦敦1873年6月至1875年5月——巴黎1875年5月至1876年3月——埃顿1876年4月——拉姆斯盖特和伊思莱沃斯1876年4月至12月——多德雷赫特1877年1月至4月 早期的这些信件的日期可追溯至1873年，那时文森特才20岁，他的弟弟提奥还在上学。通过曾任公……');
insert into menu values('第一部分',' 无路可走','B1001','阿姆斯特丹1877年5月至1878年7月——埃顿、布鲁塞尔、博里纳日1878年7月至1880年7月 文森特想要追随父亲的脚步成为一名牧师，这一次，他很笃定。但是在进入大学学习神学之前，他必须通过入学考试。为此，他需要勤勉地学习至少两年的时间。整个梵高家族的人都给予了文森特帮助。他的叔叔——阿姆斯特丹……');
insert into menu values('第二部分 ','思念绘画天地','B1001','博里纳日（奎姆）1880年7月至10月——布鲁塞尔1880年10月至1881年4月——埃顿1881年4月至8月 最后，文森特意识到他无法抵抗绘画的冲动。从他再次开始从事绘画的那一刻起，他知道了自己真正的使命。当他在1880年8月再次提笔写信给提奥时，我们最终听到了新的信心的声音。然而，生活不会那么容……');
insert into menu values('第三部分 ','我将继续我的绘画创作','B1001','博里纳日（奎姆）1880年7月至10月——布鲁塞尔1880年10月至1881年4月——埃顿1881年4月至8月 最后，文森特意识到他无法抵抗绘画的冲动。从他再次开始从事绘画的那一刻起，他知道了自己真正的使命。当他在1880年8月再次提笔写信给提奥时，我们最终听到了新的信心的声音。然而，生活不会那么容……');

insert into menu values('前传',' 爱恨之间','B1002','近来，她感到有些瞌睡。奈奈说：“大约是因怀着小皇子，以至分外瞌睡些，娘娘无须忧心。” 奈奈是照顾她的婢女，也是九天之上整个洗梧宫唯一肯对她笑，唤她一声“娘娘”的仙子。其他仙子大多看不起她。因为夜华没有封给她什么名分。也因为她没有仙籍，只是个凡人。 奈奈推开了窗，有风拂过，窗外传来一阵脚步声。奈奈的声……');
insert into menu values('楔子',' 青丘白浅','B1002','【三百年后】 东海水君新得麟儿，为准备儿子的满月宴，凌霄殿上的朝会已是连着几日告假，天君睁一只眼闭一只眼，全由着他去。 多宝元君心下好奇，不过一个酒宴而已，何需如此大费周章。 于是乎，这日退朝后，特意追上了素来与东海水君交好的南斗真君，意欲打探个究竟。');
insert into menu values('第一章',' 前尘往事','B1002','若水神君嫁去东海的大姑娘不满三年就给东海水君添了个男丁，若水、东海两家皆大欢喜。 东海水君本人更是得意非凡，为儿子做满月酒的请柬撒遍了天上地下，连阿爹阿娘住的狐狸洞也送来了一份。 阿爹阿娘已游方在外数百年。大哥、二哥、三哥相继安家立室分了封地，四哥则去了西山寻找走失的坐骑毕方鸟。是以狐狸洞如今只剩我……、');
insert into menu values('第二章','蓦然重逢','B1002','四哥帮忙造的小茅棚颤巍巍地立在碧瑶池旁。到折颜府上厮混，我向来独住这一处。 当年离开桃林的时候，这小茅屋已十分破败，如今遭了几万年的风吹雨打太阳晒，它却仍能傲然挺立，着实令人钦佩。 掏出颗夜明珠四下照照，折颜上心，小茅棚里床铺被褥一应俱全，很合我意。 门旁竖了支石耒，正是当年我用来掘坑栽桃树苗的，现……');
insert into menu values('第三章',' 东窗事发','B1002','绕过夜华父子俩消失的拐角，我左顾右盼，发现偏北方向，一女子淡妆素裹，正朝我疾步行来。 我眯着眼睛看了半天，欣慰地发现，今天这一天，将注定是精彩而梦幻的一天。 那女子虽步履匆匆，还挺了个大肚子，姿态却甚是翩跹。我将破云扇拿来掂了掂，寻思着若是从左到右这么一挥，有没有可能直接将她从东海送到北海去。可一看……');

insert into menu values('第一章 ','不一样的开始','B1003','第1章 不一样的开始 时间回到2010年1月月初。 韩雪薇，二十四岁，刚大学毕业，在一家广告公司做着广告策划的经理助理。她有个温柔、体贴的富二代未婚夫，古家的二公子，也就是这家广告公司的经理，古飞。 两家是世交，两个人能看对眼，并且谈上两年的恋爱，可谓是皆大欢喜。双方的父母在韩雪薇念书时就催着结婚，……');
insert into menu values('第二章',' 情人眼里容不得沙','B1003','第2章 情人眼里容不得沙 随后两天，韩雪薇以找到新工作路途不方便为由，跟老爸老妈费劲地协商着搬家住到了苏小乔家。好在，苏小乔一个人租了一套两室的精装小公寓，给她留了一个房间出来。 搬家，整理东西，是一件很累人的事，却正好能让韩雪薇充实起来，虽然恍惚，但总好过失恋、失业之后，无所事事胡思乱想的好。 古……');
insert into menu values('第三章',' 分手后的游戏','B1003','第3章 分手后的游戏 第二天早上，韩雪薇就被送快递的给吵醒了，睡眼蒙眬地出门签了快递。心里看着这个包裹有点莫名其妙，她没买过什么东西啊？ 正恍惚间，徐枫的电话就打了过来：“雪薇，包裹收到了没？” “啊？是你叫人送的？”韩雪薇愣了下，一边夹着电话，一边小心翼翼地拆着问，“什么东西呀？” “你看看就知道……');
insert into menu values('第四章 ','暧昧流传','B1003','第4章 暧昧流传 跟徐枫去饭店吃晚饭，其实，也就那几个之前在某次私人宴会上见过的他的“铁哥们”，除了王总没有来之外。那个很高大，很招摇，笑的跟弥勒佛似的中年男人叫做穆宗，是一个私企的老板。那个相对比较矮小的，笑起来有个小酒窝的男人，大家都叫他贾总，是一家古玩店的老板。还有那个黑黑的，一脸一本正经的家……');

insert into menu values('序','生命中多添一盏明灯','B1004',' 打开《皮囊》，读到崇达果然文如其人的真挚，坦荡荡的自然自白成长经历，没有掩饰凡人难免的喜、怒、哀、乐、贪、嗔、痴，所以很真。 视人生无常曰正常，或许是……');
insert into menu values('第一章 ','认心','B1004','如果皮囊朽坏，我们还剩下什么？ 好吧，你告诉我，还有灵魂。 有吗？ 有的吧。 ——你都有点像祥林嫂了。好吧好吧，我信了。 可是，那脱去了皮囊的灵魂啊，他们在忙什么？下地狱或上天堂或在荒野上游荡？我读古人的记叙，总觉得，那些孤魂野鬼，它们所渴望的，不过是转世为……');
insert into menu values('第二章 ','认人','B1004','我那个活到九十九岁的阿太——我外婆的母亲，是个很牛的人。外婆五十多岁突然撒手，阿太白发人送黑发人。亲戚怕她想不开，轮流看着。她却不知道哪里来的一股愤怒，嘴里骂骂咧咧，一个人跑来跑去。一会儿掀开棺材看看外婆的样子，一会儿到厨房看看那祭祀的供品做得如何，走到大厅听见有人杀一只鸡没割中动脉，那只鸡……');
insert into menu values('第三章 ','母亲','B1004','母亲还是决定要把房子修建完成，即使她心里清楚，房子将可能在半年或者一年后被拆迁掉。 这个决定是在从镇政府回家的路上做的。在陈列室里，她看到那条用铅笔绘制的、潦草而别扭的线，像切豆腐一样从这房子中间劈开。 她甚至听得到声音。不是“噼里啪啦”，而是“哐”一声。那一声巨大的一团，一直在她耳朵里膨胀……');

insert into menu values('导论',' 做好被骗的准备','B1005','从西格蒙德·弗洛伊德（Sigmund Freud）到丹尼尔·卡尼曼（Daniel Kahneman），近一个世纪以来，心理学家们一直在以各种方式告诉我们这样一个事实——人们经常会干一些不符合自身利益的蠢事。更直白地讲，人们往往不去做那些真正对自己有益的事情，或者说不会……');
insert into menu values('第一章','诱惑之路','B1005','几乎每个美国人都认识苏茜·欧曼（Suze Orman）。当乔治向一名经济学家问起她时，这位经济学家的反应完全在乔治的意料之中：他只看过苏茜10秒钟的节目。我们的经济学家朋友们往往受不了她自以为是的论调。他们发现她会提出一些非常粗浅的投资建议。而且，尽管任何与投资有关的话题都会令经济……');
insert into menu values('第二章','欺骗行为','B1005','大家可能会认为这部分是探索“钓愚”的微观经济学。这些章节描述了欺骗行为对其他大多数现代发达国家相对富足的人们的生活的不利影响。在这些章节中，大家将会看到欺骗行为总体上可能对我们的福利造成不利影响。这种不利影响的规模与宏观经济中储蓄不足和金融危机的破……');
insert into menu values('第三章','结论与后记','B1005','美国的新故事与后果 我们从一个地方开始本书，却要在另一个地方结束。在本书开头的部分，我们通过传统行为经济学的一些案例介绍了欺骗行为的概念，也就是西奥迪尼的列表（详见导论中对欺骗均衡的讨论）。回想一下，西奥迪尼列出了6种特定的心理弱点，通过这些可以实现对人们的操纵。 但是在我们的书中……');

insert into menu values('第一部分','带着鲑鱼去旅行','B1006','我按铃叫来客房服务员，向一个扎马尾的小伙子解释我的难题。他唯一能说的那种语言，后来据我的人类学同事告诉我，是一种只通行于亚历山大大帝迎娶罗克姗娜A时代喀非里斯坦（Kefiristan）地区的方言。');
insert into menu values('第二部分','开放的作品','B1006','怎样设计一场完美的犯罪，怎样在飞机上大吃大喝，怎样写一篇完美装腔序言，怎样与各国出租车司机打交道……戏谑、挑衅而又机智。 ');

insert into menu values('第一章',' 高山','B1007','每个人都有自己的天命。 他少年黄金时代的结束，也是他天命的开始。 1997年。 哪怕10年过去了，哪怕已经站在儿时梦想中的纳斯达克上市公司整栋楼的大屏幕前，高山永远记得17岁在故乡的那个下午。 当他和所有的考生冲出教室时，他好像才真正感受到了夏天的气息。7月的南方城市，天……');
insert into menu values('第二章','秦沃','B1007','那些极度欢愉、热闹的盛宴之后， 迎来的总是泪流满面的离别。 1998年。 若人生分四季的话，16岁这一年的时光对秦沃来说是秋天。有些本来她以为会一直存在的暖色，很快就凋谢了。 1998年2月的余杭城，整个城市还沉浸在春节喜气洋洋的氛围里。街上满是已经燃放的烟花爆竹的痕迹，不……');
insert into menu values('第三章','高山','B1007','一年前， 高山一家还是周围人的焦点。 1997年。 那时候，高丰还在，青青一家也还在。 那时候的某一天，高山看青青她爸林叔叔兴高采烈又小心谨慎地怀揣着什么，老远笑着朝高山和妈妈吴爱玲跑过来。 “爱玲姐，你看这里装的什么？这满满一袋子的钱。”林叔叔小心地看了看四周，特别小声地……');

insert into menu values('第一章','和摩羯男谈恋爱大概是这样的','B1008','和摩羯男谈恋爱大概是这样的 001 去年F君去日本出差，我在网上看到一个帖子《姐妹们平时怎么发短信调戏男朋友？》各种答案直接笑喷。 正巧那天我换了新手机号，顺手给他发了条匿名短信：“老板，需要特殊服务吗？” 他……');
insert into menu values('第二章','同桌的他','B1008','同桌的他 001 读书的时候F同学是我们学校的传奇，长了张TVB里反恐精英的正气脸，成绩好到逆天，还会吹萨克斯，被很多怀春少女醒着睡着惦记。 他很拽，对谁都爱答不理的死样子，冷冷的。那时他在我眼里只是个爱装逼的……');
insert into menu values('第三章','逗比兄妹的日常','B1008','逗比兄妹的日常 001 我有个哥哥叫观潮，他比我大一岁，虽然是同一个爹妈生的，但我俩一点都不像。他从小就比我聪明。小时候我的玩具是积木，他的玩具是变阻器和安培表，我还在学乘法口诀，他就已经开始背元素周期表。他和……');

insert into menu values('序','历史原来很精彩','B1009','旷野上，当年明月踽踽而行。 历史是什么？历史就是那些残台断瓦、古庙荒冢吗？就是那些发黄的书本吗？不是，绝对不是。 “历史原来是很精彩的呀！”当年明月大喊一声。声音消失在风中，当年明月继续踽踽地走着，山野一片寂静。 好一段时间，远远地，传来一阵阵回声：“很精彩的呀，很精彩的呀，很精彩的呀，很精彩的呀………');
insert into menu values('第一章','明朝那些事儿1','B1009','我们从一份档案开始。 姓名：朱元璋 别名（外号）：朱重八、朱国瑞 性别：男 民族：汉 血型：？ 学历：无文凭，秀才举人进士统统的不是，后曾自学过 职业：皇帝 家庭出身：（至少三代）贫农 生卒：1328—1398 最喜欢的颜色：黄色（这个好像没得选） 社会关系：父亲：朱五四 农民 母亲：陈氏 农民（不……');
insert into menu values('第二章','明朝那些事儿2','B1009','新的一天又开始了，朱棣坐在皇帝宝座上，俯视着这个帝国的一切，之前那场你死我活的斗争似乎还历历在目，但已经不重要了。因为对于那场斗争中的失败者朱允炆来说，政治地位的完结意味着他的人生已经结束了，无论他本人是生还是死。但对于朱棣而言，今天的阳光是明媚的，他得到了自己想要的一切，在今后的很长时间内，他将用……');

insert into menu values('第一章','有些话，羞于启齿','B1010','有些话，年轻的时候羞于启齿，等到张得开嘴时，已是人近中年，且远隔万重山水。 …… 每一年的大年初一，我都会收到一条同样的短信。在成堆的新年快乐恭喜发财的短信中，有杂草般短短的四字短信：哥，好好的。 很多个大年初一，我收到那条四字短信后，都想回复一条长长的短信……可最终都只回复四个字了事：乖，摸摸头。……');
insert into menu values('第二章','我有一碗酒，可以慰风尘','B1010','我写这篇文章并未征得老兵的同意，我也做好了被他扔下河的准备。 无他，在这个不懂得反思的时代，有些故事应该被后人知晓。 不奢望铭记，知晓即可。 有庙堂正史，亦应有民间修史，何为史？末学浅见，五个字：真实的故事。 是对是错，是正是反，百年后世人自有分晓，但无论如何，请别让它湮没，那些鲜活和真实的细节，有…');
insert into menu values('第三章','对不起','B1010','她哭着喊：对不起，对不起，对不起…… 它贴在地面上的脑袋猛地抬了一下，好像意识到了些什么，脖子开始拼命地使劲，努力地想回头看她一眼，腿使劲尾巴使劲全身都在使劲…… 终究没能回过头来。 白瓷盆里空空的，今天她还没来得及喂它吃东西。……');

insert into menu values('第一章','我成为今天的我','B1011','2001年12月 我成为今天的我，是在1975年某个阴云密布的寒冷冬日，那年我十二岁。我清楚地记得当时自己趴在一堵坍塌的泥墙后面，窥视着那条小巷，旁边是结冰的小溪。许多年过去了，人们说陈年旧事可以被埋葬，然而我终于明白这是错的，因为往事会自行爬上来。回首前尘，我意识到在过去二十六年里，自己始终在窥视……');
insert into menu values('第二章','小时候','B1011','小时候，爸爸的房子有条车道，边上种着白杨树，哈桑和我经常爬上去，用一块镜子的碎片把阳光反照进邻居家里，惹得他们很恼火。在那高高的枝桠上，我们相对而坐，没穿鞋子的脚丫晃来荡去，裤兜里满是桑椹干和胡桃。我们换着玩那破镜子，边吃桑椹干，边用它们扔对方，忽而吃吃逗乐，忽而开怀大笑。我依然能记得哈桑坐在树上的……');
insert into menu values('第三章','父亲的传说','B1011','传说我父亲曾经在俾路支赤手空拳，和一只黑熊搏斗。如果这是个关于别人的故事，肯定有人会斥之为笑话奇谈。阿富汗人总喜欢将事物夸大，很不幸，这几乎成了这个民族的特性。如果有人吹嘘说他儿子是医生，很可能是那孩子曾经在高中的生物学测验中考了个及格的分数。但凡涉及爸爸的故事，从来没人怀疑它们的真实性。倘使有人质……');

