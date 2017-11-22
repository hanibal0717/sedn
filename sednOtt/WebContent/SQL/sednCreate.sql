/****SEDNDATA****/
CREATE TABLE IF NOT EXISTS `tb_acount_admin` (
	`idx` int(100) NOT NULL AUTO_INCREMENT,
	`admin_id` varchar(50) NOT NULL,
	`admin_pass` varchar(50) NOT NULL,
	`admin_name` varchar(50) NOT NULL,
	`admin_email` varchar(50) NOT NULL,
	`admin_explain` varchar(50) NOT NULL,
	`admin_authority` varchar(50) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


INSERT INTO `tb_acount_admin` (`idx`, `admin_id`, `admin_pass`, `admin_name`,`admin_email`,`admin_explain`,`admin_authority`) VALUES
(null, 'sednmanager', 'hanibal0717', '이누크리에이티브','hanibal@inucreative.com','이누크리에이티브 최종관리자 입니다.','10000000000');
/*select * from tb_acount_admin;*/


CREATE TABLE IF NOT EXISTS `tb_category_define` (
	`idx` int(100) NOT NULL AUTO_INCREMENT,
	`categoryCode` varchar(50) NOT NULL,
	`categoryName` varchar(50) NOT NULL,
	`categoryDepth` varchar(50) NOT NULL,
	`categoryType` varchar(50) NOT NULL,
	`categoryAuth` varchar(50) NOT NULL,
	`categoryOpen` varchar(50) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;


select * from tb_category_define order by idx desc;




CREATE TABLE IF NOT EXISTS `tb_sedn_data` (
	idx int(100) NOT NULL AUTO_INCREMENT,
	sdCategory varchar(50) NOT NULL,
	sdStyle varchar(10) NOT NULL,
	sdCreateDate varchar(50) NOT NULL,
	sdOpenDate varchar(50) NOT NULL,
	sdVodbox varchar(50) NULL,
	sdImgbox varchar(50) NULL,
	sdLivebox varchar(50) NULL,
	sdMetabox varchar(50) NULL,
	sdFilebox varchar(50) NULL,
	sdTitle varchar(500) NOT NULL,
	sdContent MEDIUMTEXT,
	sdCount int(100) NOT NULL DEFAULT 0,
	sdDelflag int(100) NOT NULL DEFAULT 0,
	parent int(100) NOT NULL DEFAULT 0,
	depth int(100) NOT NULL DEFAULT 0,
	indent int(100) NOT NULL DEFAULT 0,
  PRIMARY KEY (idx)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

INSERT INTO `SEDNDATA`.`tb_sedn_data` 
(`idx`, `sdCategory`, `sdStyle`, `sdCreateDate`, `sdOpenDate`, `sdVodbox`, `sdImgbox`, `sdLivebox`, `sdMetabox`, `sdFilebox`, `sdTitle`, `sdContent`, `sdCount`, `sdDelflag`, `parent`, `depth`, `indent`) 
VALUES 
('1', '000000000', 'Vod', '20170425123059', '20170425123059', 'sample.mp4', 'sample.jpeg', '', '', '', '테스트영상입니다. ', '테스트 내용입니다.', '0', '0', '0', '0', '0');

select * from tb_sedn_data order by idx desc;







CREATE TABLE `tb_vod_log` (
	`idx` bigint(20) NOT NULL AUTO_INCREMENT,
	`ip` varchar(30) DEFAULT NULL,
	`ipCount` int(30) NOT NULL DEFAULT 0,
	`dataIdx` varchar(100) DEFAULT NULL,
	`categoryStyle` varchar(10) DEFAULT NULL,
	`categoryCode` int(10) DEFAULT NULL,
	`regYear` varchar(10) DEFAULT NULL,
	`regMonth` varchar(10) DEFAULT NULL,
	`regDay` varchar(10) DEFAULT NULL,
	`regHour` varchar(10) DEFAULT NULL,
	`regMinute` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


CREATE TABLE `tb_live_log` (
	`idx` bigint(20) NOT NULL AUTO_INCREMENT,
	`ip` varchar(30) DEFAULT NULL,
	`ipCount` int(30) NOT NULL DEFAULT 0,
	`dataIdx` varchar(100) DEFAULT NULL,
	`categoryStyle` varchar(10) DEFAULT NULL,
	`categoryCode` int(10) DEFAULT NULL,
	`regYear` varchar(10) DEFAULT NULL,
	`regMonth` varchar(10) DEFAULT NULL,
	`regDay` varchar(10) DEFAULT NULL,
	`regHour` varchar(10) DEFAULT NULL,
	`regMinute` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



CREATE TABLE `tb_data_log` (
	`idx` bigint(20) NOT NULL AUTO_INCREMENT,
	`ip` varchar(30) DEFAULT NULL,
	`ipCount` int(30) NOT NULL DEFAULT 0,
	`dataIdx` varchar(100) DEFAULT NULL,
	`categoryStyle` varchar(10) DEFAULT NULL,
	`categoryCode` int(10) DEFAULT NULL,
	`regYear` varchar(10) DEFAULT NULL,
	`regMonth` varchar(10) DEFAULT NULL,
	`regDay` varchar(10) DEFAULT NULL,
	`regHour` varchar(10) DEFAULT NULL,
	`regMinute` varchar(10) DEFAULT NULL,
	`device` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



select * from tb_vod_log;
select * from tb_live_log;
INSERT INTO `SEDNDATA`.`tb_live_log` (`idx`, `ip`, `ipCount`, `dataIdx`, `categoryStyle`, `categoryCode`, `regYear`, `regMonth`, `regDay`, `regHour`, `regMinute`) VALUES ('', '211.231.59.82', '3334', '1', 'Vod', '87000000', '2017', '04', '25', '23', '35');

select * from tb_data_log;

INSERT INTO `SEDNDATA`.`tb_data_log` (`idx`, `ip`, `ipCount`, `dataIdx`, `categoryStyle`, `categoryCode`, `regYear`, `regMonth`, `regDay`, `regHour`, `regMinute`, `device`) VALUES ('', '192.168.0.45', '222', '1', 'Ns', '1239247', '2017', '04', '23 ', '08', '13', 'web');
select * from tb_sedn_data order by idx desc limit 0,1;
