/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `cm01_campaign`;

CREATE TABLE `cm01_campaign` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `campaign_uuid` varchar(50) DEFAULT NULL,
  `campaign_name` varchar(100) DEFAULT NULL,
  `campaign_status` int(11) DEFAULT NULL,
  `email_subject` varchar(100) DEFAULT NULL,
  `email_content` longtext,
  `email_from` varchar(50) DEFAULT NULL,
  `scheduled_send_date` datetime DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `last_updated_by` bigint(20) DEFAULT NULL,
  `last_updated_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `cm02_campaign_tracker`;

CREATE TABLE `cm02_campaign_tracker` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `campaign_id` bigint(20) DEFAULT NULL,
  `campaign_mailer_message_id` varchar(255) DEFAULT NULL,
  `recipient` varchar(255) DEFAULT NULL,
  `bounced` tinyint(1) DEFAULT NULL,
  `bounced_date` datetime DEFAULT NULL,
  `clicked` tinyint(1) DEFAULT NULL,
  `clicked_date` datetime DEFAULT NULL,
  `opened` tinyint(1) DEFAULT NULL,
  `open_date` datetime DEFAULT NULL,
  `delivered` tinyint(1) DEFAULT NULL,
  `deliver_date` datetime DEFAULT NULL,
  `client_device_name` varchar(255) DEFAULT NULL,
  `client_device_type` varchar(255) DEFAULT NULL,
  `client_os` varchar(255) DEFAULT NULL,
  `client_type` varchar(255) DEFAULT NULL,
  `client_user_agent` varchar(255) DEFAULT NULL,
  `geo_location_city` varchar(255) DEFAULT NULL,
  `geo_location_country` varchar(255) DEFAULT NULL,
  `geo_location_region` varchar(255) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `last_updated_by` bigint(20) DEFAULT NULL,
  `last_updated_date_time` datetime DEFAULT NULL,
  `unsubscribed` tinyint(1) DEFAULT NULL,
  `unsubscribed_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `cm03_campaign_subscriber_group`;

CREATE TABLE `cm03_campaign_subscriber_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `campaign_id` bigint(20) DEFAULT NULL,
  `subscriber_group_id` bigint(20) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `last_updated_by` bigint(20) DEFAULT NULL,
  `last_updated_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_1nsovnhhedcvap0w38qy1889l` (`subscriber_group_id`),
  KEY `FK_hfwu5l6tt6rwahhquam8lpsx5` (`campaign_id`),
  CONSTRAINT `FK_1nsovnhhedcvap0w38qy1889l` FOREIGN KEY (`subscriber_group_id`) REFERENCES `ts01_subscriber_group` (`id`),
  CONSTRAINT `FK_hfwu5l6tt6rwahhquam8lpsx5` FOREIGN KEY (`campaign_id`) REFERENCES `cm01_campaign` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `config01_system_state`;

CREATE TABLE `config01_system_state` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `state_name` varchar(255) DEFAULT NULL,
  `state_value` varchar(255) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `last_updated_by` bigint(20) DEFAULT NULL,
  `last_updated_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `q01_quota`;

CREATE TABLE `q01_quota` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `current_emails_sent` bigint(20) DEFAULT NULL,
  `current_emails_verified` bigint(20) DEFAULT NULL,
  `email_sending_quota` bigint(20) DEFAULT NULL,
  `email_verify_quota` bigint(20) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `last_updated_by` bigint(20) DEFAULT NULL,
  `last_updated_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS `qcm01_campaign_queue_mailer`;

CREATE TABLE `qcm01_campaign_queue_mailer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `campaign_id` bigint(20) DEFAULT NULL,
  `content` text,
  `email_from` varchar(50) DEFAULT NULL,
  `mail_delivery_status` int(11) DEFAULT NULL,
  `recipient` varchar(50) DEFAULT NULL,
  `scheduled_send_date` datetime DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `last_updated_by` bigint(20) DEFAULT NULL,
  `last_updated_date_time` datetime DEFAULT NULL,
  `queue_processed` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `t01_tracker`;

CREATE TABLE `t01_tracker` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_send_counter` int(11) DEFAULT NULL,
  `email_verifier_counter` int(11) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `last_updated_by` bigint(20) DEFAULT NULL,
  `last_updated_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `ts01_subscriber_group`;

CREATE TABLE `ts01_subscriber_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `last_updated_by` bigint(20) DEFAULT NULL,
  `last_updated_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `ts02_subscriber`;

CREATE TABLE `ts02_subscriber` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_address` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `last_updated_by` bigint(20) DEFAULT NULL,
  `last_updated_date_time` datetime DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `address3` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `domain_name` varchar(255) DEFAULT NULL,
  `facebook_account` varchar(255) DEFAULT NULL,
  `path_account` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `subscriber_status` int(11) DEFAULT NULL,
  `twitter_account` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;



DROP TABLE IF EXISTS `ts03_subscriber_contact`;

CREATE TABLE `ts03_subscriber_contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `subscribe_id` bigint(20) DEFAULT NULL,
  `subscribe_group_id` bigint(20) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `last_updated_by` bigint(20) DEFAULT NULL,
  `last_updated_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_o6nbabiatb9hv9r3efkruooe` (`subscribe_id`),
  KEY `FK_awnbe4burti6pqjtrsm68gb` (`subscribe_group_id`),
  CONSTRAINT `FK_awnbe4burti6pqjtrsm68gb` FOREIGN KEY (`subscribe_group_id`) REFERENCES `ts01_subscriber_group` (`id`),
  CONSTRAINT `FK_o6nbabiatb9hv9r3efkruooe` FOREIGN KEY (`subscribe_id`) REFERENCES `ts02_subscriber` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;



# Dump of table usr01_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `usr01_user`;

CREATE TABLE `usr01_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone_no` varchar(255) DEFAULT NULL,
  `user_role` int(11) DEFAULT NULL,
  `user_status` int(11) DEFAULT NULL,
  `reset_password_required` tinyint(1) DEFAULT NULL,
  `failed_login_counter` int(11) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `created_date_time` datetime DEFAULT NULL,
  `last_updated_by` bigint(20) DEFAULT NULL,
  `last_updated_date_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
