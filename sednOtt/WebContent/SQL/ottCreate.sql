CREATE DATABASE vcms DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
/**
셋탑 장비 정보 테이블
**/
/*select * from tb_stb;*/
CREATE TABLE `tb_stb` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '장비ID',
  `NO` int(11) NOT NULL DEFAULT '0' COMMENT '단순 일련번호. 추가/삭제에 따라 동적으로 변함',
  `NAME` varchar(50) NOT NULL COMMENT '장비명',
  `MAC` varchar(20) NOT NULL COMMENT 'MAC address',
  `IP_ADDR` varchar(16) NOT NULL COMMENT 'IP',
  `GROUP_ID` int(11) NOT NULL COMMENT '소속그룹ID',
  `STATUS` int(11) NOT NULL DEFAULT '1' COMMENT '장비연결상태',
  `LAST_ON_TIME` datetime NOT NULL COMMENT '최종ON시간',
  `LAST_PING_TIME` datetime NOT NULL DEFAULT '1977-01-01 00:00:00' COMMENT '최종 PING 받은 시간',
  `REG_DT` datetime NOT NULL,
  `NOTE` varchar(256) DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `FK_tb_stb_tb_stb_status` (`STATUS`),
  KEY `FK_tb_stb_tb_stb_group` (`GROUP_ID`),
  CONSTRAINT `FK_tb_stb_tb_stb_group` FOREIGN KEY (`GROUP_ID`) REFERENCES `tb_stb_group` (`ID`),
  CONSTRAINT `FK_tb_stb_tb_stb_status` FOREIGN KEY (`STATUS`) REFERENCES `tb_stb_status` (`STATUS_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8 COMMENT='셋탑 장비 테이블';
/**
셋탑 설정 저보 테이블(단 한개의 행만 존재해야한다)
**/
select * from tb_stb_configuration;

CREATE TABLE `tb_stb_configuration` (
  `DUMMY` int(11) DEFAULT NULL COMMENT 'always 1',
  `LOGO_IMG_YN` varchar(2) DEFAULT NULL,
  `LOGO_IMG_PATH` varchar(200) DEFAULT NULL,
  `LOGO_TEXT` varchar(200) DEFAULT NULL,
  `LOGO_MODIFY_DT` datetime DEFAULT NULL,
  `BG_IMG_YN` varchar(2) DEFAULT NULL,
  `BG_IMG_PATH` varchar(200) DEFAULT NULL,
  `BG_VIDEO_PATH` varchar(200) DEFAULT NULL,
  `BG_MODIFY_DT` datetime DEFAULT NULL,
  `BANNER1_IMG_PATH` varchar(200) DEFAULT NULL,
  `BANNER2_IMG_PATH` varchar(200) DEFAULT NULL,
  `FIRMWARE_VERSION` varchar(50) DEFAULT NULL,
  `FIRMWARE_PATH` varchar(200) DEFAULT NULL,
  `FIRMWARE_MODIFY_DT` varchar(20) DEFAULT NULL,
  `STREAMING_SERVER_URL` varchar(200) DEFAULT NULL,
  `AUTO_SYNC_TIME` varchar(50) DEFAULT NULL COMMENT '자동 동기화 시간. 실제로는 cron에 등록되며 이 값은 관리자페이지 표시용으로만 사용됨'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


select * from tb_stb_group;
CREATE TABLE `tb_stb_group` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '그룹 ID',
  `PID` int(11) NOT NULL COMMENT '상위그룹 ID',
  `POSITION` int(11) NOT NULL COMMENT '그룹내에서의 순서',
  `NAME` varchar(50) NOT NULL COMMENT '그룹명',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COMMENT='STB 관리그룹.\r\n최상위에는 ROOT그룹이 있으며 삭제할 수 없다.';


select * from tb_stb_recent_caption;

CREATE TABLE `tb_stb_recent_caption` (
  `TEXT` varchar(333) NOT NULL DEFAULT '""',
  `MODIFY_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`TEXT`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


select * from tb_stb_schedule;

CREATE TABLE `tb_stb_schedule` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '스케줄 ID',
  `NAME` varchar(200) DEFAULT NULL COMMENT '방송명',
  `START` datetime DEFAULT NULL COMMENT '시작시간',
  `END` datetime DEFAULT NULL COMMENT '종료시간',
  `TARGET_TYPE` varchar(10) DEFAULT NULL COMMENT '방송대상(ALL or GROUP)',
  `SOURCE_TYPE` varchar(10) DEFAULT NULL COMMENT '방송소스(VOD or LIVE)',
  `LIVE_CH_IDX` int(11) DEFAULT NULL COMMENT '라이브 방송인 경우 채널ID',
  `LIVE_STREAM_URL` varchar(500) DEFAULT NULL COMMENT '라이브 스트림 URL (LIVE일 경우)',
  `CAPTION` varchar(2000) DEFAULT NULL COMMENT '자막',
  `CAPTION_SIZE` int(11) DEFAULT NULL,
  `CAPTION_SPEED` int(11) DEFAULT NULL,
  `CAPTION_TEXT_COLOR` varchar(10) DEFAULT NULL,
  `CAPTION_BG_COLOR` varchar(10) DEFAULT NULL,
  `IMAGE_PATH` varchar(200) DEFAULT NULL COMMENT '방송 이미지',
  `COLOR` varchar(10) DEFAULT NULL COMMENT '방송 색상',
  `DESC_TEXT` varchar(200) DEFAULT NULL COMMENT '방송 설명',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=443 DEFAULT CHARSET=utf8 COMMENT='셋탑 방송 스케줄';


select * from tb_stb_schedule_group;

CREATE TABLE `tb_stb_schedule_group` (
  `SCHEDULE_ID` int(11) DEFAULT NULL COMMENT '방송 스케줄 ID',
  `GROUP_ID` int(11) DEFAULT NULL COMMENT '대상 그룹 ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='방송별 대상 그룹';

select * from tb_stb_status;
CREATE TABLE `tb_stb_status` (
  `STATUS_CODE` int(11) NOT NULL COMMENT '상태코드',
  `STATUS_DESC` varchar(20) NOT NULL COMMENT '상태설명',
  PRIMARY KEY (`STATUS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


select * from tb_stb_vod_history;

CREATE TABLE `tb_stb_vod_history` (
  `VOD_IDX` int(11) NOT NULL,
  `STB_ID` int(11) NOT NULL,
  `PLAY_DATE` date NOT NULL,
  `PLAY_TIME` time NOT NULL,
  KEY `IDX_VOD` (`VOD_IDX`),
  KEY `IDX_STB` (`STB_ID`),
  KEY `IDX_DATE` (`PLAY_DATE`),
  KEY `IDX_VOD_DATE` (`VOD_IDX`,`PLAY_DATE`),
  KEY `IDX_STB_DATE` (`STB_ID`,`PLAY_DATE`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

select * from sys_menu;
select * from tb_user_menu;









