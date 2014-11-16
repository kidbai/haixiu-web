-- phpMyAdmin SQL Dump
-- version 4.2.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2014 at 10:16 AM
-- Server version: 5.6.21
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `node_crawler`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post_new`
--

CREATE TABLE IF NOT EXISTS `tbl_post_new` (
`id` int(11) NOT NULL,
  `title` varchar(99) DEFAULT NULL,
  `img` text,
  `url` varchar(99) DEFAULT NULL,
  `author_name` varchar(99) DEFAULT NULL,
  `location` varchar(99) DEFAULT NULL,
  `author_url` varchar(99) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_post_new`
--

INSERT INTO `tbl_post_new` (`id`, `title`, `img`, `url`, `author_name`, `location`, `author_url`) VALUES
(231, '【晒】不 准 笑', '{"imgs":["http://img5.douban.com/view/group_topic/large/public/p23211067.jpg"]}', 'http://www.douban.com/group/topic/67013302/', '噢', '', 'http://www.douban.com/group/people/69871152/'),
(232, '【晒】小凶凶', '{"imgs":["http://img3.douban.com/view/group_topic/large/public/p22799531.jpg"]}', 'http://www.douban.com/group/topic/65931058/', '小油', '广东广州', 'http://www.douban.com/group/people/106565337/'),
(233, '【晒】shy shy shy > <...再说我没更 我就和你们去...', '{"imgs":["http://img3.douban.com/view/group_topic/large/public/p16936303.jpg","http://img5.douban.com/view/group_topic/large/public/p16936319.jpg","http://img3.douban.com/view/group_topic/large/public/p17158343.jpg","http://img5.douban.com/view/group_topic/large/public/p17158356.jpg","http://img3.douban.com/view/group_topic/large/public/p17158515.jpg"]}', 'http://www.douban.com/group/topic/57258147/', '机智可爱小媳妇', 'Stockholm,Sweden', 'http://www.douban.com/group/people/94236576/'),
(234, '【晒many】倒立', '{"imgs":["http://img3.douban.com/view/group_topic/large/public/p19242555.jpg","http://img3.douban.com/view/group_topic/large/public/p19422225.jpg","http://img5.douban.com/view/group_topic/large/public/p19242698.jpg","http://img3.douban.com/view/group_topic/large/public/p19242781.jpg","http://img3.douban.com/view/group_topic/large/public/p19248161.jpg","http://img5.douban.com/view/group_topic/large/public/p19276758.jpg","http://img5.douban.com/view/group_topic/large/public/p19397758.jpg","http://img5.douban.com/view/group_topic/large/public/p20021288.jpg","http://img3.douban.com/view/group_topic/large/public/p20021302.jpg","http://img3.douban.com/view/group_topic/large/public/p20156413.jpg","http://img3.douban.com/view/group_topic/large/public/p20156444.jpg","http://img3.douban.com/view/group_topic/large/public/p20156493.jpg","http://img3.douban.com/view/group_topic/large/public/p20156533.jpg","http://img5.douban.com/view/group_topic/large/public/p20156559.jpg","http://img3.douban.com/view/group_topic/large/public/p20157474.jpg","http://img5.douban.com/view/group_topic/large/public/p20307997.jpg","http://img3.douban.com/view/group_topic/large/public/p20308011.jpg","http://img5.douban.com/view/group_topic/large/public/p20711157.jpg","http://img5.douban.com/view/group_topic/large/public/p20711186.jpg","http://img3.douban.com/view/group_topic/large/public/p20711192.jpg","http://img3.douban.com/view/group_topic/large/public/p20711231.jpg","http://img3.douban.com/view/group_topic/large/public/p20711243.jpg","http://img3.douban.com/view/group_topic/large/public/p20711281.jpg","http://img3.douban.com/view/group_topic/large/public/p21134665.jpg","http://img3.douban.com/view/group_topic/large/public/p21151121.jpg","http://img3.douban.com/view/group_topic/large/public/p21151132.jpg","http://img3.douban.com/view/group_topic/large/public/p21151174.jpg","http://img3.douban.com/view/group_topic/large/public/p21697940.jpg","http://img3.douban.com/view/group_topic/large/public/p21698203.jpg","http://img5.douban.com/view/group_topic/large/public/p21698287.jpg","http://img3.douban.com/view/group_topic/large/public/p21698304.jpg","http://img3.douban.com/view/group_topic/large/public/p22075180.jpg","http://img5.douban.com/view/group_topic/large/public/p22075216.jpg","http://img3.douban.com/view/group_topic/large/public/p22075255.jpg","http://img3.douban.com/view/group_topic/large/public/p22075261.jpg","http://img3.douban.com/view/group_topic/large/public/p22075264.jpg","http://img3.douban.com/view/group_topic/large/public/p22270625.jpg","http://img5.douban.com/view/group_topic/large/public/p22270737.jpg","http://img5.douban.com/view/group_topic/large/public/p22270846.jpg"]}', 'http://www.douban.com/group/topic/52881658/', '月亮代表你妈心', '浙江杭州', 'http://www.douban.com/group/people/69734187/'),
(235, '【晒】我想吃棒棒糖', '{"imgs":["http://img5.douban.com/view/group_topic/large/public/p23077126.jpg"]}', 'http://www.douban.com/group/topic/66696894/', '带骨头的肉好吃', '浙江杭州', 'http://www.douban.com/group/people/81323936/'),
(236, '【晒】工作制服', '{"imgs":["http://img3.douban.com/view/group_topic/large/public/p23203242.jpg"]}', 'http://www.douban.com/group/topic/66993609/', 'B', '四川成都', 'http://www.douban.com/group/people/75713490/'),
(237, '【晒】晒个屁呀（多图慎入～）', '{"imgs":["http://img5.douban.com/view/group_topic/large/public/p23183997.jpg","http://img3.douban.com/view/group_topic/large/public/p23203804.jpg","http://img5.douban.com/view/group_topic/large/public/p23203836.jpg","http://img5.douban.com/view/group_topic/large/public/p23203998.jpg","http://img5.douban.com/view/group_topic/large/public/p23204099.jpg","http://img3.douban.com/view/group_topic/large/public/p23204124.jpg","http://img3.douban.com/view/group_topic/large/public/p23204174.jpg","http://img3.douban.com/view/group_topic/large/public/p23204192.jpg","http://img3.douban.com/view/group_topic/large/public/p23204210.jpg","http://img5.douban.com/view/group_topic/large/public/p23204347.jpg","http://img3.douban.com/view/group_topic/large/public/p23204523.jpg","http://img3.douban.com/view/group_topic/large/public/p23204542.jpg","http://img5.douban.com/view/group_topic/large/public/p23204589.jpg","http://img3.douban.com/view/group_topic/large/public/p23204630.jpg","http://img3.douban.com/view/group_topic/large/public/p23204681.jpg","http://img3.douban.com/view/group_topic/large/public/p23206023.jpg","http://img3.douban.com/view/group_topic/large/public/p23206052.jpg","http://img3.douban.com/view/group_topic/large/public/p23206115.jpg","http://img3.douban.com/view/group_topic/large/public/p23206243.jpg"]}', 'http://www.douban.com/group/topic/66919125/', '绵绵goodnight', '辽宁大连', 'http://www.douban.com/group/people/64385151/'),
(238, '【晒】豆油', '{"imgs":["http://img5.douban.com/view/group_topic/large/public/p23194726.jpg"]}', 'http://www.douban.com/group/topic/66966666/', '一只猫', '福建厦门', 'http://www.douban.com/group/people/76263102/'),
(239, '【晒】晒mimi 晒浴室 晒小伙伴 天冷了要加衣服', '{"imgs":["http://img5.douban.com/view/group_topic/large/public/p23126626.jpg","http://img3.douban.com/view/group_topic/large/public/p22859412.jpg","http://img3.douban.com/view/group_topic/large/public/p22866561.jpg","http://img3.douban.com/view/group_topic/large/public/p22791684.jpg","http://img3.douban.com/view/group_topic/large/public/p23175280.jpg"]}', 'http://www.douban.com/group/topic/65915675/', '再没有海角', '北京', 'http://www.douban.com/group/people/65863933/'),
(240, '【晒】吸吸 反正我没有70e', '{"imgs":["http://img5.douban.com/view/group_topic/large/public/p22874836.jpg","http://img5.douban.com/view/group_topic/large/public/p22874937.jpg"]}', 'http://www.douban.com/group/topic/66057093/', '要抱❤️', '', 'http://www.douban.com/group/people/103678519/'),
(241, '【晒】无论开始之前多装逼，开始之后都是油光满面...', '{"imgs":["http://img3.douban.com/view/group_topic/large/public/p23183071.jpg","http://img5.douban.com/view/group_topic/large/public/p23183076.jpg","http://img3.douban.com/view/group_topic/large/public/p23183081.jpg","http://img5.douban.com/view/group_topic/large/public/p23183089.jpg","http://img3.douban.com/view/group_topic/large/public/p23183095.jpg"]}', 'http://www.douban.com/group/topic/66913756/', '芭芭拉御前', 'Chicago,UnitedStates', 'http://www.douban.com/group/people/Pauline_Q/'),
(242, '【晒】更新', '{"imgs":["http://img5.douban.com/view/group_topic/large/public/p23164329.jpg","http://img5.douban.com/view/group_topic/large/public/p23198869.jpg","http://img5.douban.com/view/group_topic/large/public/p23198896.jpg"]}', 'http://www.douban.com/group/topic/66862362/', 'strawberry', 'Singapore', 'http://www.douban.com/group/people/63006672/'),
(243, '【晒】我是来拉仇恨的。早餐。', '{"imgs":["http://img5.douban.com/view/group_topic/large/public/p23189986.jpg"]}', 'http://www.douban.com/group/topic/66952147/', '一只猫', '福建厦门', 'http://www.douban.com/group/people/76263102/'),
(244, '【晒85C】永远的夏日女友（更新）', '{"imgs":["http://img3.douban.com/view/group_topic/large/public/p16112371.jpg","http://img3.douban.com/view/group_topic/large/public/p16386372.jpg","http://img5.douban.com/view/group_topic/large/public/p16526296.jpg","http://img3.douban.com/view/group_topic/large/public/p16526334.jpg"]}', 'http://www.douban.com/group/topic/55414781/', 'Summer', 'LosAngeles,UnitedStates', 'http://www.douban.com/group/people/86927253/'),
(245, '【晒】独自旅游！我来自不怕冷星球！', '{"imgs":["http://img3.douban.com/view/group_topic/large/public/p23172563.jpg","http://img3.douban.com/view/group_topic/large/public/p22963005.jpg","http://img3.douban.com/view/group_topic/large/public/p22496493.jpg"]}', 'http://www.douban.com/group/topic/65330646/', '格格', '广东深圳', 'http://www.douban.com/group/people/73013615/'),
(246, '【晒】这样去运动，没问题吧。', '{"imgs":["http://img5.douban.com/view/group_topic/large/public/p23196226.jpg"]}', 'http://www.douban.com/group/topic/66970885/', '逗逼', 'Manchester,UnitedKingdom', 'http://www.douban.com/group/people/108160641/'),
(247, '【晒】一本薄书', '{"imgs":["http://img3.douban.com/view/group_topic/large/public/p22133512.jpg","http://img5.douban.com/view/group_topic/large/public/p22133676.jpg","http://img5.douban.com/view/group_topic/large/public/p22133939.jpg","http://img3.douban.com/view/group_topic/large/public/p22134745.jpg","http://img3.douban.com/view/group_topic/large/public/p22133821.jpg","http://img5.douban.com/view/group_topic/large/public/p22134087.jpg","http://img5.douban.com/view/group_topic/large/public/p22134139.jpg","http://img3.douban.com/view/group_topic/large/public/p22134200.jpg","http://img3.douban.com/view/group_topic/large/public/p22134551.jpg","http://img5.douban.com/view/group_topic/large/public/p22134829.jpg","http://img3.douban.com/view/group_topic/large/public/p22135081.jpg","http://img3.douban.com/view/group_topic/large/public/p22135211.jpg","http://img3.douban.com/view/group_topic/large/public/p22135380.jpg","http://img5.douban.com/view/group_topic/large/public/p22135509.jpg","http://img3.douban.com/view/group_topic/large/public/p22135641.jpg","http://img5.douban.com/view/group_topic/large/public/p22135699.jpg","http://img5.douban.com/view/group_topic/large/public/p22135727.jpg","http://img5.douban.com/view/group_topic/large/public/p22135857.jpg","http://img5.douban.com/view/group_topic/large/public/p22135958.jpg","http://img3.douban.com/view/group_topic/large/public/p22172501.jpg","http://img3.douban.com/view/group_topic/large/public/p22174611.jpg","http://img3.douban.com/view/group_topic/large/public/p22174665.jpg","http://img3.douban.com/view/group_topic/large/public/p22174753.jpg","http://img3.douban.com/view/group_topic/large/public/p22174782.jpg","http://img5.douban.com/view/group_topic/large/public/p22175116.jpg","http://img5.douban.com/view/group_topic/large/public/p22175276.jpg","http://img5.douban.com/view/group_topic/large/public/p22175086.jpg","http://img3.douban.com/view/group_topic/large/public/p22175563.jpg","http://img5.douban.com/view/group_topic/large/public/p22175627.jpg"]}', 'http://www.douban.com/group/topic/64365645/', '抹茶冰淇淋', '湖北武汉', 'http://www.douban.com/group/people/102009494/'),
(248, '【晒】腿腿腿。更新1p', '{"imgs":["http://img3.douban.com/view/group_topic/large/public/p23127550.jpg","http://img3.douban.com/view/group_topic/large/public/p23127572.jpg","http://img3.douban.com/view/group_topic/large/public/p23127575.jpg","http://img3.douban.com/view/group_topic/large/public/p23127593.jpg","http://img3.douban.com/view/group_topic/large/public/p23194893.jpg"]}', 'http://www.douban.com/group/topic/66802765/', '橙橙橙', '江苏南京', 'http://www.douban.com/group/people/53383927/'),
(249, '【晒】肤白腰细腿长', '{"imgs":["http://img5.douban.com/view/group_topic/large/public/p22954267.jpg","http://img3.douban.com/view/group_topic/large/public/p22954285.jpg","http://img3.douban.com/view/group_topic/large/public/p22954295.jpg","http://img3.douban.com/view/group_topic/large/public/p23061583.jpg","http://img3.douban.com/view/group_topic/large/public/p23061664.jpg","http://img3.douban.com/view/group_topic/large/public/p23061795.jpg","http://img3.douban.com/view/group_topic/large/public/p23061805.jpg","http://img3.douban.com/view/group_topic/large/public/p23062732.jpg"]}', 'http://www.douban.com/group/topic/64888129/', '蓿苜', '北京', 'http://www.douban.com/group/people/8572611/'),
(250, '【晒自己】回北京来 爆照 （有尼坤）', '{"imgs":["http://img3.douban.com/view/group_topic/large/public/p7839082.jpg","http://img3.douban.com/view/group_topic/large/public/p7908623.jpg","http://img5.douban.com/view/group_topic/large/public/p13945916.jpg","http://img3.douban.com/view/group_topic/large/public/p22009781.jpg","http://img3.douban.com/view/group_topic/large/public/p22791865.jpg"]}', 'http://www.douban.com/group/topic/46894841/', 'Indigo', '北京', 'http://www.douban.com/group/people/indigolove/'),
(251, '【晒】未知更新日期（不喜勿喷，玻璃心', '{"imgs":["http://img3.douban.com/view/group_topic/large/public/p22544421.jpg","http://img5.douban.com/view/group_topic/large/public/p22465046.jpg"]}', 'http://www.douban.com/group/topic/65174976/', '贪吃的芒果拉菲', 'Iceland', 'http://www.douban.com/group/people/104970005/'),
(252, '【晒】更x4 大福建', '{"imgs":["http://img3.douban.com/view/group_topic/large/public/p20929684.jpg","http://img5.douban.com/view/group_topic/large/public/p21647079.jpg","http://img3.douban.com/view/group_topic/large/public/p22218223.jpg","http://img3.douban.com/view/group_topic/large/public/p22673481.jpg","http://img3.douban.com/view/group_topic/large/public/p23033213.jpg"]}', 'http://www.douban.com/group/topic/63602339/', '178cm', '福建福州', 'http://www.douban.com/group/people/102655373/'),
(253, '【晒】寿星！！7100KM的远距, 为男朋友蒸祝福。 进...', '{"imgs":["http://img5.douban.com/view/group_topic/large/public/p23203359.jpg"]}', 'http://www.douban.com/group/topic/66993950/', 'VenaIP', '', 'http://www.douban.com/group/people/108239919/'),
(254, '【晒】马上删', '{"imgs":["http://img3.douban.com/view/group_topic/large/public/p23212155.jpg"]}', 'http://www.douban.com/group/topic/67015296/', '起名字略烦人', 'London,UnitedKingdom', 'http://www.douban.com/group/people/102301077/'),
(255, '【晒】沟～', '{"imgs":[]}', 'http://www.douban.com/group/topic/66887229/', '酱好嘛~', '上海', 'http://www.douban.com/group/people/108124133/'),
(256, '【晒】我又起床做早餐了。你饿了吗？', '{"imgs":["http://img3.douban.com/view/group_topic/large/public/p23188641.jpg"]}', 'http://www.douban.com/group/topic/66947438/', '一只猫', '福建厦门', 'http://www.douban.com/group/people/76263102/'),
(257, '【晒腿】纪念dy666~胖狐狸九更lo装，裸腿+大腿袜+...', '{"imgs":["http://img5.douban.com/view/group_topic/large/public/p9845108.jpg","http://img5.douban.com/view/group_topic/large/public/p9913769.jpg","http://img3.douban.com/view/group_topic/large/public/p10038892.jpg","http://img3.douban.com/view/group_topic/large/public/p10141015.jpg","http://img5.douban.com/view/group_topic/large/public/p10257488.jpg","http://img3.douban.com/view/group_topic/large/public/p10332061.jpg","http://img3.douban.com/view/group_topic/large/public/p10507710.jpg","http://img3.douban.com/view/group_topic/large/public/p10737134.jpg","http://img5.douban.com/view/group_topic/large/public/p10796797.jpg","http://img3.douban.com/view/group_topic/large/public/p11034273.jpg","http://img3.douban.com/view/group_topic/large/public/p11722655.jpg"]}', 'http://www.douban.com/group/topic/50011733/', '有妖瞳的胖狐狸', '北京', 'http://www.douban.com/group/people/81587205/'),
(258, '【晒奢侈品】深扒包包原单水货代工厂专柜验货', '{"imgs":["http://img5.douban.com/view/group_topic/large/public/p23033867.jpg","http://img5.douban.com/view/group_topic/large/public/p23033886.jpg","http://img5.douban.com/view/group_topic/large/public/p23033897.jpg","http://img5.douban.com/view/group_topic/large/public/p23033978.jpg","http://img3.douban.com/view/group_topic/large/public/p23033984.jpg","http://img5.douban.com/view/group_topic/large/public/p23034019.jpg","http://img3.douban.com/view/group_topic/large/public/p23034044.jpg","http://img3.douban.com/view/group_topic/large/public/p23034065.jpg","http://img5.douban.com/view/group_topic/large/public/p23034077.jpg"]}', 'http://www.douban.com/group/topic/66605871/', '呵呵', '广东广州', 'http://www.douban.com/group/people/107631708/'),
(259, '【晒】鲜奶要保温啊', '{"imgs":["http://img3.douban.com/view/group_topic/large/public/p23197122.jpg","http://img5.douban.com/view/group_topic/large/public/p23197127.jpg"]}', 'http://www.douban.com/group/topic/66974082/', '逗逼', 'Manchester,UnitedKingdom', 'http://www.douban.com/group/people/108160641/'),
(260, '【晒】小麻花的高三生活', '{"imgs":["http://img5.douban.com/view/group_topic/large/public/p23164418.jpg","http://img3.douban.com/view/group_topic/large/public/p23164664.jpg","http://img3.douban.com/view/group_topic/large/public/p23164780.jpg","http://img3.douban.com/view/group_topic/large/public/p23165203.jpg","http://img3.douban.com/view/group_topic/large/public/p23165244.jpg","http://img5.douban.com/view/group_topic/large/public/p23165278.jpg","http://img3.douban.com/view/group_topic/large/public/p23165333.jpg","http://img3.douban.com/view/group_topic/large/public/p23165433.jpg","http://img3.douban.com/view/group_topic/large/public/p23165543.jpg","http://img3.douban.com/view/group_topic/large/public/p23165581.jpg","http://img5.douban.com/view/group_topic/large/public/p23165599.jpg"]}', 'http://www.douban.com/group/topic/66864808/', '小麻花', '', 'http://www.douban.com/group/people/102855948/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_post_new`
--
ALTER TABLE `tbl_post_new`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_post_new`
--
ALTER TABLE `tbl_post_new`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=261;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
