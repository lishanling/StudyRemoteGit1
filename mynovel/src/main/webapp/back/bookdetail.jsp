<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html>
<head>
<base href="${deployName}">
<meta charset="utf-8">
<title>阅读</title>
<link rel="stylesheet" type="text/css" href="css/bookdetail.css" />
</head>
<body>
	<div id="box">
		<div id="header">
			<ul>
				<li class="red"><a href="back/login.jsp">登录</a></li>
				<li class="red"><a href="back/register.jsp">注册</a></li>
				<li class="red"><a href="#">作者中心</a></li>
				<li class="red"><a href="#">帮助</a></li>
				<li class="red"><a href="back/adminlogin.jsp">后台管理</a></li>
			</ul>
		</div>
		<div id="search">
			<ul>
				<li><img src="images/logo.jpg"></li>
				<li class="s">
					<form method="post">
						<input
							style="width: 400px; height: 33px; border: solid 3px #F98235;"
							type="text" placeholder="请输入小说名、作者"> <input type="submit"
							style="width: 50px; height: 40px; background-color: #F98235; border: solid 3px #F98235; color: #fff; font-family: 微软雅黑; border-radius: 15px;"
							value="搜索" />
				</li>
			</ul>
		</div>

		<div id="menu">
			<ul>
				<li><a href="homepage.jsp">首页</a></li>
				<li><a href="back/list.jsp">榜单</a></li>
				<li><a href="back/sort.jsp">分类</a></li>
				<li><a href="#">精品</a></li>
				<li><a href="#">评论</a></li>
			</ul>
		</div>

		<!-- 头部完 -->

		<div class="g-bd1">
			<!-- 当前位置 -->
			<div class="u-nav-crumbs">
				<span>当前位置：</span> <a href="/" hidefocus="hidefocus">首页</a> <span
					class="sep">></span> <a id="dkclassify" href="/list/3-1"
					hidefocus="hidefocus"> 文学</a> <span class="sep">></span> <em>鲁迅全集</em>
			</div>

			<!-- 正文部分 wrap -->
			<div class="g-wrap">

				<!-- 整体除去空白的部分 g-mn -->
				<div class="g-mn">

					<!-- 分为两栏 g-mnc  -->
					<div class="g-mnc">

						<!-- 书和旁边的简介以及收藏 -->
						<div class="m-bookdata j-bookdata f-cb" itemscope=""
							itemtype="http://schema.org/Book">

							<!-- 封面的位置 -->
							<div id="cover-img" class="cover">
								<a hidefocus="hifefocus"> <img src="images/luxun.png"
									alt="鲁迅全集" ondragstart="return false;"
									oncontextmenu="return false;" onload="onLoadImg(this);"
									style="display: block;">
								</a>
							</div>

							<!-- 书的描述 -->
							<div class="desc">
								<h3>鲁迅全集</h3>

								<!-- z作者及出版信息 -->
								<div class="cnt">
									<!-- 作者、版权、出版 -->
									<div class="data">
										<table>
											<tbody>
												<tr>
													<td class="col0">作者：</td>
													<td class="author" itemprop="author"><a
														href="/author/8504/1-1" target="_blank">鲁迅</a></td>
												</tr>
												<tr>
													<td class="col0">版权：</td>
													<td class="published" itemprop="copyrightHolder"><a
														target="_blank">北京多看科技有限公司</a></td>
												</tr>
												<tr>
													<td class="col0">出版：</td>
													<td itemprop="datePublished">2012-08-01</td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="pay">
										<div class="price">
											<em>免费</em> <span class="u-sep">|</span> <i> 纸书 <del>¥
													990.00</del>
											</i>
										</div>
										<div class="act j-act f-cb">
											<div class="btn j-buyarea f-cb">
												<a class="u-btn2 j-free"
													href="http://www.duokan.com/reader?id=75b83216dbed11e192a600163e0123ac"
													hidefocus="hidefocus" target="_blank">阅读</a> <a
													class="u-btn j-get" href="javascript:void(0);"
													hidefocus="hidefocus">加入书架</a> <span class="added"
													style="display: none">已加入书架</span>
											</div>
											<div class="other j-action">
												<ul class="f-cb">
													<li><a class="j-fav" href="javascript:void(0);"
														hidefocus="hidefocus">收藏</a> <a class="j-cancel-fav"
														style="display: none;" href="javascript:void(0);">已收藏</a>
														<span class="u-sep">|</span></li>
													<li class=""><a class="j-share"
														href="javascript:void(0);" hidefocus="hidefocus">分享</a></li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="m-bookdetail j-detail">
							<div class="u-nav-tab j-tab tabnav">
								<ul>
									<li class="itm crt"><a onclick="tab(1)"
										href="javascript:void(0)">简介</a></li>
									<li class="u-sep">|</li>
									<li class="itm"><a onclick="tab(2)"
										href="javascript:void(0)">目录</a></li>
									<li class="u-sep">|</li>
									<li class="itm"><a onclick="tab(3)"
										href="javascript:void(0)">更多信息</a></li>
								</ul>
								<div class="icn-arrow icn-arrow-top3 j-target"
									style="left: 29px;">
									<span class="arrow0"></span> <span class="arrow1"></span>
								</div>
							</div>
							<div>

								<section class="cnt j-cnt" style="display: block;" id="b1">
									<article id="book-content" class="intro" hidefocus="hidefocus"
										style="height: 310px; overflow: hidden;">
										<p>
											鲁迅是谁？ <br> 他在百度搜索里有88,300,000个词条，在Google里有46,800,000个词条；
											<br> 他一定是每个中国学生最熟悉的作家：因为他是入选作品背诵最多的作家； <br>
											他是那个写下“一株是枣树，还有一株也是枣树”的无厘头； <br>
											他是告诉我们“世上本没有路，走的人多也便成了路”的智者； <br>
											他也是那个“真的猛士，敢于直面惨淡的人生，敢于正视淋漓的鲜血。”的愤怒的小老头！ <br> <br>
											已经有无数的赞誉套在他头上：文学家、思想家、革命家，中华的民族之魂…… <br>
											也有无数的批评加在他身上：小气、偏激、睚眦必报、黑暗、反传统…… <br>
											或许正是太多的光环和批判，让我们如此熟悉这个名字却从未真正阅读过他。 <br>
											我们大多数人只是沿着既定的结论，阅读着既定的鲁迅， <br> 当鲁迅已经逐渐离我们遥远， <br>
											当鲁迅的文章正一篇篇被人从教科书中删掉， <br> 当越来越多的人不愿再提起他时， <br>
											现在正是时候让我们重温那些写于快一个世纪之前的文字： <br> <br>
											中国人的性情是总喜欢调和折中的，譬如你说，这屋子太暗，须在这里开一个窗，大家一定不允许的。但如果你主张拆掉屋顶他们就来调和，愿意开窗了。
											<br> ——《无声的中国》1927年 <br> <br>
											在中国，尤其是在都市里，倘使路上有暴病倒地，或翻车捽摔伤的人，路人围观或甚至高兴的人尽有，有肯伸手来扶助一下的人却是极少的。
											<br> ——《经验》1933年 <br> <br>
											“从生活窘迫过来的人，一到了有钱，容易变成两种情形：一种是理想世界，替处同一境遇的人着想，便成为人道主义；一种是甚么都是自己挣起来，从前的遭遇，使他觉得甚么都是冷酷，便流为个人主义。我们中国大概是变成个人主义者多。”
											<br> ——《文艺与政治的歧途》1927年 <br> <br>
											中国中流的家庭，教孩子大抵只有两种法。其一是任其跋扈，一点也不管，骂人固可，打人亦无不可，在门内或门前是暴主，是霸王，但到外面便如失了网的蜘蛛一般，立刻毫无能力。其二，是终日给以冷遇或呵斥，甚于打扑，使他畏葸退缩，彷佛一个奴才，一个傀儡，然而父母却美其名曰『听话』，自以为是教育的成功，待到他们外面来，则如暂出樊笼的小禽，他决不会飞鸣，也不会跳跃。
											<br> ——《海上的儿童》一九三三年 <br> …… <br> <br>
											没有一个学者能够彻底说清从鲁迅的作品中能够读出什么， <br> 但你一定能够读出一些什么， <br>
											或是对社会复杂的认识， <br> 或是对自己不公经历的解释， <br> 或是对未来的思考， <br>
											或是对鲁迅的不屑、不赞同， <br> …… <br> 如果你是年轻人，当你跨入社会时， <br>
											请再读一次鲁迅， <br> 他是你最好的社会指导和励志书； <br> <br>
											如果你在社会的打拼中挣扎、失望， <br> 请再读一次鲁迅， <br>
											他会用“休克疗法”带你重新振作； <br> <br> 如果你在人生事业上一帆风顺、成功荣耀， <br>
											请再读一次鲁迅， <br> 反思冷静对你更重要。
										</p>
									</article>
									<div class="more" style="">
										<a class="u-more1 j-more" href="javascript:void(0);"
											hidefocus="hidefocus"> 显示全部
											<div class="icn-arrow icn-arrow-bottom">
												<span class="arrow0"></span> <span class="arrow1"></span>
											</div>
										</a>
									</div>
								</section>

								<section class="cnt j-cnt" style="display: none" id="b2">
									<article class="toc">
										<ol>
											<li class="">
												<h3 class="title">01 坟</h3>
												<div class="brief brief0">
													<p>
														将这些体式上截然不同的东西，集合了做成一本书样子的缘由，说起来是很没有什么冠冕堂皇的。首先就因为偶尔看见了几篇将近二十年前所做的所谓文章。这是我做的么？我想。看下去，似乎也确是我做的。那是寄给《河南》的稿子；因为那编辑先生有一种怪脾气，文章要长，愈长，稿费便愈多。所以如《摩罗诗力说》那样，简直是生凑……
													</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">02 热风</h3>
												<div class="brief brief0">
													<p>
														现在有谁经过西长安街一带的，总可以看见几个衣履破碎的穷苦孩子叫卖报纸。记得三四年前，在他们身上偶而还剩有制服模样的残余；再早，就更体面，简直是童子军的拟态。
														那是中华民国八年，即西历一九一九年，五月四日北京学生对于山东问题的示威运动以后，因为当时散传单的是童子军，不知怎的竟惹了投机家的注意，童子军式……
													</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">03 呐喊</h3>
												<div class="brief brief0">
													<p>
														我在年青时候也曾经做过许多梦，后来大半忘却了，但自己也并不以为可惜。所谓回忆者，虽说可以使人欢欣，有时也不免使人寂寞，使精神的丝缕还牵着已逝的寂寞的时光，又有什么意味呢，而我偏苦于不能全忘却，这不能全忘的一部分，到现在便成了《呐喊》的来由。
														我有四年多，曾经常常，——几乎是每天，出入于质铺和药店里，……</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">04 彷徨</h3>
												<div class="brief brief0">
													<p>朝发轫于苍梧兮， 夕余至乎县圃； 欲少留此灵琐兮， 日忽忽其将暮。 吾令羲和弭节兮， 望崦嵫而勿迫；
														路漫漫其修远兮， 吾将上下而求索。 ——屈原《离骚》……</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">05 野草</h3>
												<div class="brief brief0">
													<p>当我沉默着的时候，我觉得充实；我将开口，同时感到空虚。
														过去的生命已经死亡。我对于这死亡有大欢喜，因为我借此知道它曾经存活。死亡的生命已经朽腐。我对于这朽腐有大欢喜，因为我借此知道它还非空虚。
														生命的泥委弃在地面上，不生乔木，只生野草，这是我的罪过。 野草，根本不深，花叶不美，然而吸取露，吸取水，吸……</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">06 朝花夕拾</h3>
												<div class="brief brief0">
													<p>
														我常想在纷扰中寻出一点闲静来，然而委实不容易。目前是这么离奇，心里是这么芜杂。一个人做到只剩了回忆的时候，生涯大概总要算是无聊了罢，但有时竟会连回忆也没有。中国的做文章有轨范，世事也仍然是螺旋。前几天我离开中山大学的时候，便想起四个月以前的离开厦门大学；听到飞机在头上鸣叫，竟记得了一年前在北京城上日……
													</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">07 故事新编</h3>
												<div class="brief brief0">
													<p>这一本很小的集子，从开手写起到编成，经过的日子却可以算得很长久了：足足有十三年。
														第一篇《补天》——原先题作《不周山》——还是一九二二年的冬天写成的。那时的意见，是想从古代和现代都采取题材，来做短篇小说，《不周山》便是取了“女娲炼石补天”的神话，动手试作的第一篇。首先，是很认真的，虽然也不过取了茀罗……
													</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">08 华盖集</h3>
												<div class="brief brief0">
													<p>
														在一年的尽头的深夜中，整理了这一年所写的杂感，竟比收在《热风》里的整四年中所写的还要多。意见大部分还是那样，而态度却没有那么质直了，措辞也时常弯弯曲曲，议论又往往执滞在几件小事情上，很足以贻笑于大方之家。然而那又有什么法子呢。我今年偏遇到这些小事情，而偏有执滞于小事情的脾气。
														我知道伟大的人物能洞见……</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">10 而已集</h3>
												<div class="brief brief0">
													<p>这半年我又看见了许多血和许多泪， 然而我只有杂感而已。 泪揩了，血消了； 屠伯们逍遥复逍遥，
														用钢刀的，用软刀的。 然而我只有“杂感”而已。 连“杂感”也被“放进了应该去的地方”时， 我于是只有“而已”而已！
														以上的八句话，是在一九二六年十月十四夜里，编完那年那时为止的杂感集后，写在末尾的，现在便……</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">11 三闲集</h3>
												<div class="brief brief0">
													<p>
														我的第四本杂感《而已集》的出版，算起来已在四年之前了。去年春天，就有朋友催促我编集此后的杂感。看看近几年的出版界，创作和翻译，或大题目的长论文，是还不能说它寥落的，但短短的批评，纵意而谈，就是所谓“杂感”者，却确乎很少见。我一时也说不出这所以然的原因。
														但粗粗一想，恐怕这“杂感”两个字，就使志趣高超……</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">12 二心集</h3>
												<div class="brief brief0">
													<p>这里是一九三○年与三一年两年间的杂文的结集。
														当三○年的时候，期刊已渐渐的少见，有些是不能按期出版了，大约是受了逐日加紧的压迫。《语丝》和《奔流》，则常遭邮局的扣留，地方的禁止，到底也还是敷延不下去。那时我能投稿的，就只剩了一个《萌芽》，而出到五期，也被禁止了，接着是出了一本《新地》。所以在这一年内……
													</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">13 南腔北调集</h3>
												<div class="brief brief0">
													<p>
														一两年前，上海有一位文学家，现在是好像不在这里了，那时候，却常常拉别人为材料，来写她的所谓“素描”。我也没有被赦免。据说，我极喜欢演说，但讲话的时候是口吃的，至于用语，则是南腔北调。前两点我很惊奇，后一点可是十分佩服了。真的，我不会说绵软的苏白，不会打响亮的京腔，不入调，不入流，实在是南腔北调。而且……
													</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">14 伪自由书</h3>
												<div class="brief brief0">
													<p>这一本小书里的，是从本年一月底起至五月中旬为止的寄给《申报》上的《自由谈》的杂感。
														我到上海以后，日报是看的，却从来没有投过稿，也没有想到过，并且也没有注意过日报的文艺栏，所以也不知道《申报》在什么时候开始有了《自由谈》，《自由谈》里是怎样的文字。大约是去年的年底罢，偶然遇见郁达夫先生，他告诉我说，……
													</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">15 准风月谈</h3>
												<div class="brief brief0">
													<p>
														自从中华民国建国二十有二年五月二十五日《自由谈》的编者刊出了“吁请海内文豪，从兹多谈风月”的启事以来，很使老牌风月文豪摇头晃脑的高兴了一大阵，讲冷话的也有，说俏皮话的也有，连只会做“文探”的叭儿们也翘起了它尊贵的尾巴。但有趣的是谈风云的人，风月也谈得，谈风月就谈风月罢，虽然仍旧不能正如尊意。
														想从一……</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">16 花边文学</h3>
												<div class="brief brief0">
													<p>
														我的常常写些短评，确是从投稿于《申报》的《自由谈》上开头的；集一九三三年之所作，就有了《伪自由书》和《准风月谈》两本。后来编辑者黎烈文先生真被挤轧得苦，到第二年，终于被挤出了，我本也可以就此搁笔，但为了赌气，却还是改些作法，换些笔名，托人抄写了去投稿，新任者不能细辨，依然常常登了出来。一面又扩大了范……
													</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">17 且介亭杂文</h3>
												<div class="brief brief0">
													<p>
														近几年来，所谓“杂文”的产生，比先前多，也比先前更受着攻击。例如自称“诗人”邵洵美，前“第三种人”施蛰存和杜衡即苏汶，还不到一知半解程度的大学生林希隽之流，就都和杂文有切骨之仇，给了种种罪状的。然而没有效，作者多起来，读者也多起来了。
														其实“杂文”也不是现在的新货色，是“古已有之”的，凡有文章，倘若……</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">18 且介亭杂文二集</h3>
												<div class="brief brief0">
													<p>
														昨天编完了去年的文字，取发表于日报的短论以外者，谓之《且介亭杂文》；今天再来编今年的，因为除做了几篇《文学论坛》，没有多写短文，便都收录在这里面，算是《二编》。
														过年本来没有什么深意义，随便那天都好，明年的元旦，决不会和今年的除夕就不同，不过给人事借此时时算有一个段落，结束一点事情，倒也便利的。倘不……
													</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">19 且介亭杂文末编</h3>
												<div class="brief brief0">
													<p>凯绥·勖密特（Kaethe
														Schmidt）以一八六七年七月八日生于东普鲁士的区匿培克（Koenigsberg）。她的外祖父是卢柏（Julius
														Rupp），即那地方的自由宗教协会的创立者。父亲原是候补的法官，但因为宗教上和政治上的意见，没有补缺的希望了，这穷困的法学家便如俄国人之所说：“到民间去”……
													</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">20 集外集</h3>
												<div class="brief brief0">
													<p>
														听说：中国的好作家是大抵“悔其少作”的，他在自定集子的时候，就将少年时代的作品尽力删除，或者简直全部烧掉。我想，这大约和现在的老成的少年，看见他婴儿时代的出屁股，衔手指的照相一样，自愧其幼稚，因而觉得有损于他现在的尊严，——于是以为倘使可以隐蔽，总还是隐蔽的好。但我对于自己的“少作”，愧则有之，悔却……
													</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">21 集外集拾遗</h3>
												<div class="brief brief0">
													<p>《域外小说集》序言
														《域外小说集》为书，词致朴讷，不足方近世名人译本。特收录至审慎，迻译亦期弗失文情。异域文术新宗，自此始入华土。使有士卓特，不为常俗所囿，必将犁然有当于心，按邦国时期，籀读其心声，以相度神思之所在。则此虽大涛之微沤与，而性解思惟，实寓于此。中国译界，亦由是无迟莫之感矣。
														己酉正月……</p>
												</div>
											</li>
											<li class="">
												<h3 class="title">22 中国小说史略</h3>
												<div class="brief brief0">
													<p>
														回忆讲小说史时，距今已垂十载，即印此梗概，亦已在七年之前矣。尔后研治之风，颇益盛大，显幽烛隐，时亦有闻。如盐谷节山教授之发见元刊全相平话残本及“三言”，并加考索，在小说史上，实为大事；即中国尝有论者，谓当有以朝代为分之小说史，亦殆非肤泛之论也。此种要略，早成陈言，惟缘别无新书，遂使尚有读者，复将重印……
													</p>
												</div>
											</li>
											<li class="final">
												<h3 class="title">23 汉文学史纲要</h3>
												<div class="brief brief0">
													<p>
														在昔原始之民，其居群中，盖惟以姿态声音，自达其情意而已。声音繁变，寖成言辞，言辞谐美，乃兆歌咏。时属草昧，庶民朴淳，心志郁于内，则任情而歌呼，天地变于外，则祗畏以颂祝，踊跃吟叹，时越侪辈，为众所赏，默识不忘，口耳相传，或逮后世。复有巫觋，职在通神，盛为歌舞，以祈灵贶，而赞颂之在人群，其用乃愈益广大。……
													</p>
												</div>
											</li>
										</ol>
									</article>
									<div class="more j-close" style="visibility: hidden;">
										<a class="u-more1 j-more" href="javascript:void(0);"
											hidefocus="hidefocus"> 显示全部
											<div class="icn-arrow icn-arrow-bottom">
												<span class="arrow0"></span> <span class="arrow1"></span>
											</div>
										</a>
									</div>

								</section>

								<section class="cnt j-cnt" style="display: none;" id="b3">
									<article class="data">
										<ul>
											<li>作者： <span class="u-author"> <span
													itemprop="author">鲁迅</span>
											</span>
											</li>
											<li>字数： <span class="size">160.5万字</span>
											</li>
											<li>大小： <span class="size">7.70MB</span>
											</li>
											<li>出版： <span itemprop="datePublished">2012-08-01</span>
											</li>
											<li class="updated f-cb"><label>更新：</label> <span
												class="date" itemprop="dateModified">2016-04-25</span></li>
										</ul>
									</article>
								</section>

							</div>
						</div>

						<div id="hot-comment">
							<section class="m-comm j-excited-comments-container" style="">
								<h3 class="ttl">
									<a>精彩评论</a>
								</h3>
								<div class="cnt">
									<div class="u-commlist">
										<div>
											<ul class="j-excited-comments">
												<li class="itm">
													<h5>
														<a href="/review/1602/13977">鲁迅才是中国近代最伟大的文人</a>
													</h5>
													<div class="article">
														<a href="/review/1602/13977">
															<p></p>
															<p>第一次读鲁迅的杂文还是学生时代，每天诵读、老师讲解。当时只觉得小说好看。比如《故乡》比如《阿Q正传》比如《孔已己》等等。当时还觉得《狂人日记》之类的看不懂，不知道些的什么废话。现在社会上爬摸滚打了十多年，才越发的体会到先生的伟大来。</p>
															<p>先生已走了近百年了，如孔已己、阿Q之类的还大有人在。虽然已经没有了人血馒头没有了麻木的法场的看客，但是类似的人依然不在少数。</p>
															<p>先生弃医从文，说:医生只能医治国人的身体，只有文才能医治国人的心。</p>
															<p>即使现在和平年代，即使现在大家都安居乐业，都应该看看先生的杂文和小说，时刻提醒自己，要清醒的活着，不要做生活中麻木不仁的看客。</p>
															<p>先生的文需要点社会阅历才能看懂。</p>
															<p></p>
														</a>
													</div>
													<div class="u-comminfo">
														<div class="u-comm-user">
															<div class="u-stargrade">
																<div class="icon grade10"></div>
															</div>
															<span class="autor j-xm-157763316">157763316</span> <span
																class="u-sep">-</span> <span class="times">2013-04-22</span>
														</div>
														<div class="act">
															<div class="itm">
																<a class="j-vote" data-code="13977"> <span
																	class="icn-smile"></span> <span class="j-vote-num">220</span>
																</a>
															</div>
															<div class="u-sep">|</div>
															<div class="itm">
																<a class="j-reply" href="javascript:void(0)"> <span
																	class="icn-talk"></span> <span>15</span>
																</a>
															</div>
														</div>
													</div>
												</li>
												<li class="itm"><a href="/review/1602/12913">没有理由不给满分。</a>
													<div class="article">
														<a href="/review/1602/12913">
															<p></p>
															<p>我不是个挑剔的人，只做自己分内该做的事。单对文学，我偏爱太深，打是亲骂是爱，既然喜欢便喜欢咬文嚼字的剖析一番。鲁迅何许人也，在我看来既然没有孔孟圣贤的哲学与心境，也可以堪称中国文学界的顶级大师。</p>
															<p>文字的流淌在鲁迅笔下生花结果，没有多姿多彩，却给人无限希望，不想多说浪费口水，大家都懂得，吹捧没有意义，呵呵，希望没有读过他的朋友认真读一下啦，走的时候别忘赞一下哦。</p>
															<p>祝好。</p>
															<p></p>
														</a>
													</div></li>
												<li class="itm">
													<h5>
														<a href="/review/1602/96414">我们想骂的，鲁迅都骂过。</a>
													</h5>
													<div class="article">
														<a href="/review/1602/96414">
															<p></p>
															<p>社会病态，源于人心病态。人性中好的被压抑，坏的被激发。改变人心，首在教育。教育有效，重在因材施教，对症下药。鲁迅之犀利，百年之后，仍高山仰止。</p>
															<p></p>
														</a>
													</div>
												</li>
												<li class="itm">
													<h5>
														<a href="/review/1602/166966">【“雅贼”盗窃高档手机200部销赃，购买《鲁迅全集》称为提高修养】</a>
													</h5>
													<div class="article">
														<a href="/review/1602/166966">
															<p></p>
															<p>这是刚在网上看到的一则可以入选“中国雷人秀”的新闻 （详见
																http://www.guancha.cn/local/2014_03_26_216903.shtml ）：</p>
															<p>“短短两个月，犯罪嫌疑人席某先后在云南大理、昆明等地手机卖场连续作案5起，盗窃各式高档手机近200部。</p>
															<p>销赃获利后，席某并没有将钱用于吃喝玩乐，而是买了一套《鲁迅全集》用于提高自己的文学修养，并且买了笔墨纸砚，决心修习书法，过完生日还想去西藏“洗涤”下心灵。</p>
															<p>日前，犯罪嫌疑人席某被昆明市公安局五华分局龙翔派出所抓获归案。”</p>
															<p>小编的第一反应是 迅哥儿 在《孔乙己》写下的那句——读书人的事儿能叫偷吗？</p>
															<p>再后边就是惋惜：小伙儿，你肯定不知道@多看 的《鲁迅全集》是免费的吧？</p>
															<p>@鲁迅 迅哥儿怎么看？</p>
															<p></p>
														</a>
													</div>
												</li>
												<li class="itm">
													<h5>
														<a href="/review/1602/30537">读得越多便越不喜欢</a>
													</h5>
													<div class="article">
														<a href="/review/1602/30537">
															<p>
															<p>读书的时候起初只读了课本上聊聊几篇他的作品，觉得是个忧国忧民有理想有抱负的志士，待买过他的文集后却愈发发现这是个颇为小肚鸡肠锱铢必较的小民，其笔锋的犀利也多半终于挖苦揶揄一些与他有些意见不一的人，而这些人却常常因为他的影响力竟然被我们误会冤枉继而咒骂了几十年，也难怪有人说“少不读鲁迅老不读胡适”，阅历不够容易被锐气激发既不能完全理解那些笔墨中暗含的讥讽或是恶意，也没法完全冷静客观的看待问题。但写书的人终归是写书的人，书籍本身的制作还是很用心了的




															
															<p>
														</a>
													</div>
												</li>


											</ul>
										</div>


									</div>
									<div class="m-page j-excited-comments-pager"
										style="visibility: hidden;"></div>
								</div>
							</section>

							<section id="new-comment" class="m-comm j-comment" style="">
								<h3 class="ttl">
									<a>最新评论</a>
								</h3>
								<div class="u-nav-tab j-tab" style="display: none">
									<ul>
										<li class="itm crt"><a class="crt"
											onclick="_hmt.push(['_trackEvent', 'book_detail_page', 'comment_hot'])"
											href="javascript:void(0);">最热</a></li>
										<li class="u-sep">|</li>
										<li class="itm"><a
											onclick="_hmt.push(['_trackEvent', 'book_detail_page', 'comment_new'])"
											href="javascript:void(0);">最新</a></li>
									</ul>
									<div class="icn-arrow icn-arrow-top3 j-target"
										style="left: 22px;">
										<span class="arrow0"></span> <span class="arrow1"></span>
									</div>
								</div>
								<div class="cnt">


									<div class="u-commlist">
										<div class="no_comment j-comment-empty" style="display: none">暂无评论~</div>
										<div>
											<ul class="j-commentlist">
												<li class="itm">
													<h5>
														<a href="/review/1602/3992717"></a>
													</h5>
													<div class="article">
														<a href="/review/1602/3992717">
															<p></p>
															<p>看不懂《起死》的内涵</p>
															<p></p>
														</a>
													</div>
													<div class="u-comminfo">
														<div class="u-comm-user">
															<div class="u-stargrade">
																<div class="icon grade6"></div>
															</div>
															<span class="autor j-xm-1197146305">1197146305</span> <span
																class="u-sep">-</span> <span class="times">03-20</span>
														</div>
														<div class="act">
															<div class="itm">
																<a class="j-vote" data-code="3992717"> <span
																	class="icn-smile"></span> <span class="j-vote-num">0</span>
																</a>
															</div>
															<div class="u-sep">|</div>
															<div class="itm">
																<a class="j-reply" href="javascript:void(0)"> <span
																	class="icn-talk"></span> <span>0</span>
																</a>
															</div>
														</div>
													</div>
												</li>
												<li class="itm">
													<h5>
														<a href="/review/1602/3918794"></a>
													</h5>
													<div class="article">
														<a href="/review/1602/3918794">
															<p></p>
															<p>看不懂咋办？谁教教</p>
															<p></p>
														</a>
													</div>
													<div class="u-comminfo">
														<div class="u-comm-user">
															<div class="u-stargrade">
																<div class="icon grade8"></div>
															</div>
															<span class="autor j-xm-1095694033">和为贵</span> <span
																class="u-sep">-</span> <span class="times">03-01</span>
														</div>
														<div class="act">
															<div class="itm">
																<a class="j-vote" data-code="3918794"> <span
																	class="icn-smile"></span> <span class="j-vote-num">1</span>
																</a>
															</div>
															<div class="u-sep">|</div>
															<div class="itm">
																<a class="j-reply" href="javascript:void(0)"> <span
																	class="icn-talk"></span> <span>0</span>
																</a>
															</div>
														</div>
													</div>
												</li>
											</ul>
										</div>
									</div>
									<div class="m-page j-commentlist-pager"
										style="visibility: visible;">
										<div>
											<div class="u-page-go j-go">
												<span>去第</span> <input class="txt j-input" value=""
													type="text"> <span>页</span> <a
													class="btn j-confirm" href="javascript:void(0);">确定</a>
											</div>
											<div class="u-page">
												<a class="zbtn zprv init" href="javascript:void(0)">上一页</a>
												<li class="zpgi zpg1 crt"><a>1</a></li>
												<li class="zpgi zpg2"><a>2</a></li>
												<li>...</li>
												<li class="zpgi zpg3"><a>3</a></li> <a class="zbtn znxt"
													href="javascript:void(0)">下一页</a>
											</div>
										</div>
									</div>
							</section>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript" src="easyui/jquery.min.js"></script>
	<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
	<script type="text/javascript" src="js/bookdetail.js"></script>
</body>
</html>

