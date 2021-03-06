CREATE TABLE `BALK_BASIC` (
  `BALK_NO` varchar(20) NOT NULL,
  `F_BALK_NO` varchar(200) DEFAULT NULL,
  `ACCEPT_USER` varchar(120) DEFAULT NULL,
  `ACCEPT_EMPLOYEE_NO` varchar(100) DEFAULT NULL,
  `ACCEPT_USER_ID` int(11) DEFAULT '0',
  `ACCEPT_USER_PHONE` varchar(20) DEFAULT NULL,
  `ACCEPT_USER_FAXES` varchar(20) DEFAULT NULL,
  `ACCEPT_USER_MAIL` varchar(60) DEFAULT NULL,
  `ACCEPT_DEPT_NAME` varchar(512) DEFAULT NULL,
  `ACCEPT_DEPT_ID` int(11) DEFAULT '0',
  `ACCEPT_TYPE_ID` int(11) DEFAULT '0',
  `BALK_SORT_ID` int(11) DEFAULT '0',
  `BALK_SUB_SORT_ID` int(11) DEFAULT '0',
  `ACCEPT_TIME` datetime DEFAULT NULL,
  `ALLEGE_CUST_NAME` varchar(100) DEFAULT NULL,
  `ALLEGE_UNIT_NAME` varchar(255) DEFAULT NULL,
  `ALLEGE_CUST_PHONE` varchar(100) DEFAULT NULL,
  `ALLEGE_CUST_MOBILE_PH` varchar(20) DEFAULT NULL,
  `ALLEGE_CUST_MAIL` varchar(60) DEFAULT NULL,
  `ALLEGE_CUST_FAXES` varchar(20) DEFAULT NULL,
  `CUST_TYPE_ID` int(11) DEFAULT '0',
  `CUST_NO` varchar(256) DEFAULT NULL,
  `CUST_NAME` varchar(256) DEFAULT NULL,
  `CUST_ADDR_Z` varchar(255) DEFAULT NULL,
  `CUST_AREA` varchar(256) DEFAULT NULL,
  `CUST_PROF_TYPE_ID` int(11) DEFAULT '0',
  `BALK_TITLE` varchar(255) DEFAULT NULL,
  `BALK_START_TIME` datetime DEFAULT NULL,
  `BALK_LEVEL_ID` int(11) DEFAULT '0',
  `BALK_END_TIME` date DEFAULT NULL,
  `BALK_ORIGIN_ID` int(11) DEFAULT '0',
  `BALK_STATUS_ID` int(11) DEFAULT '0',
  `BALK_SIM_DESC_ID` int(11) DEFAULT '0',
  `BALK_CONTENT` text,
  `BALK_POINT` varchar(60) DEFAULT NULL,
  `BALK_RESPONSIBILITY` varchar(60) DEFAULT NULL,
  `BALK_REASON_NAME` text,
  `BALK_RESTORE_TIME` varchar(20) DEFAULT NULL,
  `BALK_SIGN_TIME` date DEFAULT NULL,
  `BALK_SIGN_DEPT_NAME` varchar(255) DEFAULT NULL,
  `BALK_SIGN_DEPT_ID` int(11) DEFAULT '0',
  `BALK_SIGN_USER_NAME` varchar(20) DEFAULT NULL,
  `BALK_SIGN_USER_ID` int(11) DEFAULT '0',
  `BALK_PACT_RES_TIME` varchar(20) DEFAULT NULL,
  `BALK_PACT_DES_TIME` varchar(20) DEFAULT NULL,
  `BALK_MAIN_PROC_DEPT_NAME` text,
  `BALK_PROC_DEPT_NAME` varchar(255) DEFAULT NULL,
  `BALK_PROC_USER_NAME` varchar(20) DEFAULT NULL,
  `BALK_CURT_PROC_USER_NAME` varchar(20) DEFAULT NULL,
  `BALK_CURT_PROC_USER_PH` varchar(20) DEFAULT NULL,
  `BALK_AUDIT_DEPT_NAME` varchar(255) DEFAULT NULL,
  `BALK_AUDIT_DEPT_ID` int(11) DEFAULT '-1',
  `BALK_AUDIT_USER_NAME` varchar(20) DEFAULT NULL,
  `BALK_AUDIT_USER_ID` int(11) DEFAULT '-1',
  `BALK_AUDIT_TIME` varchar(20) DEFAULT NULL,
  `BALK_LTIME` int(8) DEFAULT '0',
  `BALK_PROC_SIM_DESC_NAME` text,
  `BALK_WAIT_FLAG` char(1) DEFAULT '0',
  `BALK_PROC_RESULT` varchar(200) DEFAULT NULL,
  `BALK_FACT_LTIME` int(8) DEFAULT '0',
  `BALK_WAIT_LTIME` int(8) DEFAULT '0',
  `BALK_GUARANTEE_FLAG` char(1) DEFAULT '0',
  `LIMIT_TIME` int(11) DEFAULT '0',
  `DISH_FLOW_ID` int(11) DEFAULT '0',
  `REP_FLOW_ID` int(11) DEFAULT '0',
  `EQUAL_FLOW_ID` int(11) DEFAULT '0',
  `BALK_AUDIT_REMARK` text,
  `BALK_AUDIT_MODE` int(11) DEFAULT '0',
  `BALK_PHONE` varchar(20) DEFAULT NULL,
  `FIRST_DEPT_ID` int(11) DEFAULT '0',
  `FIRST_DEPT_NAME` varchar(255) DEFAULT NULL,
  `ROUTE_FLAG` varchar(10) DEFAULT NULL,
  `DISH_FLOW_NAME` varchar(300) DEFAULT NULL,
  `ALLEGE_IDENTILY` int(11) DEFAULT '0',
  `BALK_REMARK` text,
  `BALK_WAIT_NO` varchar(20) DEFAULT NULL,
  `BALK_PRE_STATUS_ID` varchar(20) DEFAULT NULL,
  `BALK_RESULT` varchar(20) DEFAULT NULL,
  `BALK_ADDR` varchar(200) DEFAULT NULL,
  `BALK_DUTY` varchar(200) DEFAULT NULL,
  `BALK_OVER_REASON` varchar(200) DEFAULT NULL,
  `ALLEGE_LINK_PH` varchar(20) DEFAULT NULL,
  `ALLEGE_LINK_NAME` varchar(256) DEFAULT NULL,
  `BALK_AUDIT_SIM_DESC` text,
  `CUST_ADDR_A` varchar(100) DEFAULT NULL,
  `BALK_MAIN_INT` varchar(100) DEFAULT NULL,
  `ALLEGE_ID` int(11) DEFAULT '0',
  `CUST_MAN_NAME` varchar(100) DEFAULT NULL,
  `CUST_MAN_PH` varchar(100) DEFAULT NULL,
  `CUST_LINK_MO` varchar(50) DEFAULT NULL,
  `CUST_LINK_MAIL` varchar(50) DEFAULT NULL,
  `CUST_LINK_FAX` varchar(50) DEFAULT NULL,
  `CUST_NET_MAN` varchar(100) DEFAULT NULL,
  `CUST_NET_MAN_PH` varchar(100) DEFAULT NULL,
  `A_LINK` varchar(50) DEFAULT NULL,
  `A_LINK_PH` varchar(100) DEFAULT NULL,
  `Z_LINK` varchar(50) DEFAULT NULL,
  `Z_LINK_PH` varchar(100) DEFAULT NULL,
  `INTER_OPERATION` varchar(100) DEFAULT NULL,
  `BALK_RETURE_REMARK` varchar(200) DEFAULT NULL,
  `BALK_CENT` varchar(50) DEFAULT NULL,
  `BALK_WARN_TIME` datetime DEFAULT NULL,
  `BALK_OVER_FLAG` char(1) DEFAULT NULL,
  `PAY_CARD_NO` varchar(255) DEFAULT NULL,
  `PROD_NO` varchar(255) DEFAULT NULL,
  `DUN_REPAIR` int(11) DEFAULT '0',
  `REMOVE_BALK_FLG` int(11) DEFAULT '0',
  `BALK_SAVER` int(11) DEFAULT '-1',
  `BALK_SAVE_TIME` date DEFAULT NULL,
  `STL_NUM` varchar(200) DEFAULT NULL,
  `BALK_SPEC_MAPPING` int(8) DEFAULT '0',
  `RESTORE_ANTICIPATE_TIME` varchar(20) DEFAULT NULL,
  `BALK_UPLOAD_FLAG` int(1) DEFAULT '0',
  `CONFIRM_ALERT_FLAG` int(1) DEFAULT '0',
  `CONFIRM_ALERT_USER` int(11) DEFAULT '0',
  `CONFIRM_ALERT_TIME` varchar(20) DEFAULT NULL,
  `RECEIVE_TIME` date DEFAULT NULL,
  `CMS_TICKET_NO` varchar(100) DEFAULT NULL,
  `OLYMPIC_BUSI_FLAG` int(3) DEFAULT '-1',
  `CONNECT_INNER_BALK_NO` varchar(50) DEFAULT NULL,
  `IS_GAME_TIME` varchar(8) DEFAULT NULL,
  `OLYMPIC_MAJOR_EVENT` varchar(2) DEFAULT NULL,
  `OLYMPIC_STADIUM` varchar(100) DEFAULT NULL,
  `SEND_GROUP_MARK` int(11) DEFAULT '-1',
  `RELATION_BALK_NO` varchar(20) DEFAULT NULL,
  `RELATION_BALKS` text,
  `STL_CURRMONTH_COUNT` int(11) DEFAULT '0',
  `STL_CURRMONTH` varchar(200) DEFAULT NULL,
  `BALK_WAIT_LONG_FLAG` varchar(1) DEFAULT NULL,
  `BALK_WAIT_LONG_NO` int(11) DEFAULT NULL,
  `REMARK_TYPE` int(11) DEFAULT '0',
  `REMARK_INFO` text,
  `REMARK_ANTI_TIME` varchar(20) DEFAULT NULL,
  `WARING_NO` varchar(20) DEFAULT NULL,
  `RELATION_SHEETS` text,
  `BALK_UPGRADE_TYPE` int(11) DEFAULT '1',
  `BALK_UPGRADE_GROUP_ID` int(11) DEFAULT '0',
  `BALK_UPGRADE_GROUP_NAME` varchar(100) DEFAULT NULL,
  `BALK_UPGRADE_USER_ID` int(11) DEFAULT '0',
  `BALK_UPGRADE_USER_NAME` varchar(20) DEFAULT NULL,
  `BALK_UPGRADE_TIME` varchar(20) DEFAULT NULL,
  `ACCEPT_CHANEL` varchar(20) DEFAULT NULL,
  `DEFER_FLAG` varchar(20) DEFAULT NULL,
  `ASSIGN_BY_KF` varchar(20) DEFAULT NULL,
  `ACCEPT_QUEUE` varchar(100) DEFAULT NULL,
  `CUST_TYPE` int(11) DEFAULT '2',
  `IS_DIRECTLY` int(11) DEFAULT '2',
  `SUPPORT_NO` varchar(60) DEFAULT NULL,
  `SUPPORT_RELEVANCE` varchar(500) DEFAULT NULL,
  `PROCESS_GROUP_ID` varchar(20) DEFAULT NULL,
  `PROCESS_AREA_ID` varchar(20) DEFAULT NULL,
  `PROCESS_GROUP_NAME` varchar(200) DEFAULT NULL,
  `NEW_ADSL_FLAG` varchar(20) DEFAULT NULL,
  `SPEED_ERROR` varchar(20) DEFAULT NULL,
  `BALK_DEAL_STATUS_ID` varchar(20) DEFAULT NULL,
  `BALK_DEAL_SUB_STATUS_ID` varchar(20) DEFAULT NULL,
  `IS_SATISFY` varchar(20) DEFAULT NULL,
  `GRID_ID` varchar(20) DEFAULT NULL,
  `GRID_NAME` varchar(132) DEFAULT NULL,
  `CUST_LEVEL` varchar(20) DEFAULT 'NUll',
  `VIP_UPGRADE_TYPE` varchar(20) DEFAULT NULL,
  `TEST_RESULT` varchar(100) DEFAULT NULL,
  `SHANSHUO` varchar(20) DEFAULT NULL,
  `BALK_TIMING_STATES` int(11) DEFAULT '0',
  `VIP_CUST_TYPE` varchar(20) DEFAULT NULL,
  `VIP_PROCESS_GROUP_ID` varchar(20) DEFAULT NULL,
  `BALK_CORE_POINT` varchar(10) DEFAULT NULL,
  `LY_GRID_ID` varchar(100) DEFAULT NULL,
  `LY_LOUYU_ID` varchar(100) DEFAULT NULL,
  `VIP_SLA_BALK_DEADLINE` varchar(20) DEFAULT NULL,
  `VIP_SLA_AVAILABLE_RATE` varchar(20) DEFAULT NULL,
  `VIP_SLA_BREAK_TIME` varchar(20) DEFAULT 'null',
  `VIP_SUB_REASON_LEVEL2` varchar(20) DEFAULT NULL,
  `VIP_SUB_REASON_LEVEL3` varchar(20) DEFAULT NULL,
  `WEIHU_DANWEI` varchar(20) DEFAULT NULL,
  `CLOSE_REASON` varchar(20) DEFAULT NULL,
  `CLOSE_REASON_INTRO` varchar(500) DEFAULT NULL,
  `FLAG_480` int(11) DEFAULT '0',
  `FLAG_QUNZHANG` int(11) DEFAULT '0',
  `RELA_CREATE` varchar(50) DEFAULT NULL,
  `RELA_CREATE_LIST` text,
  `BUILD_ID` varchar(50) DEFAULT NULL,
  `JT_NO` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SHEET_CORT_STATUS` (
  `SHEET_NO` int(20) NOT NULL,
  `BALK_NO` varchar(20) NOT NULL,
  `ORIGIN_SHEET_NO` varchar(20) NOT NULL,
  `ORIGIN_DEPT_NAME` varchar(60) DEFAULT NULL,
  `ORIGIN_DEPT_ID` int(11) DEFAULT '-1',
  `ORIGIN_TIME` varchar(20) DEFAULT NULL,
  `ORIGIN_USER_NAME` varchar(20) DEFAULT NULL,
  `ORIGIN_USER_ID` int(11) DEFAULT '-1',
  `CURT_DEPT_NAME` varchar(60) NOT NULL,
  `CURT_DEPT_ID` int(11) NOT NULL,
  `CURT_STATUS_ID` int(11) NOT NULL,
  `PREVIOUS_STATUS_ID` int(11) DEFAULT '-1',
  `OPERATION_DEPT_NAME` varchar(60) DEFAULT NULL,
  `OPERATION_DEPT_ID` int(11) DEFAULT '-1',
  `OPERATION_TIME` date DEFAULT NULL,
  `OPERATION_USER_NAME` varchar(20) DEFAULT NULL,
  `OPERATION_USER_ID` int(11) DEFAULT '-1',
  `END_TIME` date DEFAULT NULL,
  `NODE_ID` int(12) DEFAULT NULL,
  `REMNANT_SHEET_SUM` int(11) DEFAULT '0',
  `DISPCH_STATUS` varchar(20) DEFAULT '未初诊',
  `SEND_STATUS` varchar(20) DEFAULT NULL,
  `OVER_TIME` char(1) DEFAULT '0',
  `UP_LOAD_NUM` int(11) DEFAULT '0',
  `SHEET_REMARK` varchar(1000) DEFAULT NULL,
  `IS_SEND_TASK` varchar(5) DEFAULT NULL,
  `TASK_ID` varchar(40) DEFAULT NULL,
  `REJECT_FLAG` char(1) DEFAULT '0',
  `BALK_WAIT_FLAG` char(1) DEFAULT '0',
  `RESTORE_ANTICIPATE_TIME` varchar(20) DEFAULT NULL,
  `SHEET_LTIME` int(8) DEFAULT '0',
  `CONFIRM_AUDIT_FLAG` int(1) DEFAULT '0',
  `CONFIRM_ALERT_FLAG` int(1) DEFAULT '0',
  `CONFIRM_ALERT_USER` int(11) DEFAULT '0',
  `CONFIRM_ALERT_TIME` varchar(20) DEFAULT NULL,
  `REMARK_TYPE` int(11) DEFAULT '1',
  `REMARK_INFO` varchar(1000) DEFAULT NULL,
  `REMARK_ANTI_TIME` varchar(20) DEFAULT NULL,
  `UPGRADE_STATE` int(11) DEFAULT NULL,
  `UPGRADE_TYPE` varchar(20) DEFAULT NULL,
  `UPGRADE_TIME` varchar(20) DEFAULT NULL,
  `RELATION_BALK_NO` varchar(20) DEFAULT NULL,
  `ISWARNING` int(11) DEFAULT NULL,
  `START_TIME` varchar(20) DEFAULT NULL,
  `SUM_USE_TIME` int(11) DEFAULT NULL,
  `AUDIT_DEPT_ID` int(11) DEFAULT NULL,
  `HAS_TASK` int(11) DEFAULT '0',
  `DW_PROC_MONITOR` int(11) DEFAULT NULL,
  `DW_PROC_WARNNING` int(11) DEFAULT NULL,
  `DISPATCH_TYPE` int(11) DEFAULT '-1',
  `NEED_FUCE` int(11) DEFAULT '0',
  `USER_DEFINED_SHEET_TYPE` int(11) DEFAULT '0',
  `AREAID` varchar(20) DEFAULT NULL,
  `AREANAME` varchar(100) DEFAULT NULL,
  `IS_CHANGE_PORT` varchar(20) DEFAULT NULL,
  `IS_TT_SHANGZHAN` varchar(20) DEFAULT NULL,
  `UPGRADE_SMS_STAT` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `SHEET_PROC` (
  `ID` int(11) NOT NULL,
  `SHEET_NO` varchar(20) NOT NULL,
  `BALK_NO` varchar(20) NOT NULL,
  `TASK_NO` varchar(20) DEFAULT NULL,
  `WRITE_DEPT_ID` int(11) DEFAULT NULL,
  `WRITE_DEPT_NAME` varchar(60) DEFAULT NULL,
  `WRITE_TIME` DATETIME DEFAULT NULL,
  `WRITE_USER_ID` int(11) DEFAULT '-1',
  `WRITE_USER_NAME` varchar(60) DEFAULT NULL,
  `OPERATION_DEPT_ID` int(11) DEFAULT NULL,
  `OPERATION_DEPT_NAME` varchar(60) DEFAULT NULL,
  `TYPE_ID` int(11) DEFAULT NULL,
  `REASON` varchar(100) DEFAULT NULL,
  `INTRO` varchar(2000) DEFAULT NULL,
  `PROC_TYPE` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `dict_content_proc` (
  `id` int(11) NOT NULL,
  `content_key` varchar(200) NOT NULL,
  `proc_key` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `user` (
  `id` int(11) NOT NULL COMMENT '用户ID',
  `user_name` varchar(45) DEFAULT NULL COMMENT '用户名',
  `password` varchar(45) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `content_key` (
  `content_key_id` int(11) NOT NULL COMMENT '申告内容关键字id',
  `content_key` varchar(100) NOT NULL COMMENT '申告内容关键字',
  `content_priority` int(11) NOT NULL COMMENT '申告内容关键字优先级',
  `problem_id` int(11) NOT NULL COMMENT '故障现象id',
  PRIMARY KEY (`content_key_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='申告内容关键字';

CREATE TABLE `process_key` (
  `process_key_id` int(11) NOT NULL COMMENT '处理过程关键字id',
  `process_key` varchar(100) NOT NULL COMMENT '处理过程关键字',
  `reason` varchar(45) NOT NULL COMMENT '故障原因',
  `process_priority` int(11) NOT NULL COMMENT '处理过程优先级',
  `content_key_id` int(11) NOT NULL COMMENT '对应的申告内容关键字id',
  PRIMARY KEY (`process_key_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='处理过程关键字';

CREATE TABLE `problem` (
  `problem_id` int(11) NOT NULL COMMENT '故障现象id',
  `problem` varchar(45) NOT NULL COMMENT '故障现象',
  PRIMARY KEY (`problem_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='故障现象';

CREATE TABLE `result` (
  `user_id` int(11) NOT NULL COMMENT '关联user表id 标识为哪位用户操作的',
  `search_time` varchar(45) COMMENT '创建导出的时间与导出表关联',
  `type` varchar(45) DEFAULT NULL COMMENT '工单类型 暂时不知道从哪获取',
  `balk_no` varchar(45) DEFAULT NULL COMMENT '受理单号 从balk_basic中获得',
  `balk_content` varchar(2000) DEFAULT NULL COMMENT '申告内容 balk_basic中获得',
  `write_dept_name` varchar(45) DEFAULT NULL COMMENT '填写部门名称，从sheet_proc表中获得',
  `intro` varchar(2000) DEFAULT NULL COMMENT '处理过程， sheet_proc表中获得',
  `content_key` varchar(200) DEFAULT NULL COMMENT '申告内容关键字',
  `proc_key` varchar(200) DEFAULT NULL COMMENT '处理过程关键字',
  `problem` varchar(100) DEFAULT NULL COMMENT '故障现象',
  `reason` varchar(100) DEFAULT NULL COMMENT '故障原因'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='搜索结果表';


