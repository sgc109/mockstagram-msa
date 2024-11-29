-- 특정 데이터베이스 생성
CREATE DATABASE IF NOT EXISTS `comment`;
CREATE DATABASE IF NOT EXISTS `content`;
CREATE DATABASE IF NOT EXISTS `interaction`;
CREATE DATABASE IF NOT EXISTS `notification`;
CREATE DATABASE IF NOT EXISTS `push`;
CREATE DATABASE IF NOT EXISTS `user`;

-- 사용자 생성 및 권한 부여
CREATE USER IF NOT EXISTS 'comment_user'@'%' IDENTIFIED BY 'comment_pw';
CREATE USER IF NOT EXISTS 'content_user'@'%' IDENTIFIED BY 'content_pw';
CREATE USER IF NOT EXISTS 'interaction_user'@'%' IDENTIFIED BY 'interaction_pw';
CREATE USER IF NOT EXISTS 'notification_user'@'%' IDENTIFIED BY 'notification_pw';
CREATE USER IF NOT EXISTS 'push_user'@'%' IDENTIFIED BY 'push_pw';
CREATE USER IF NOT EXISTS 'user_user'@'%' IDENTIFIED BY 'user_pw';

GRANT ALL PRIVILEGES ON `comment`.* TO 'comment_user'@'%';
GRANT ALL PRIVILEGES ON `content`.* TO 'content_user'@'%';
GRANT ALL PRIVILEGES ON `interaction`.* TO 'interaction_user'@'%';
GRANT ALL PRIVILEGES ON `notification`.* TO 'notification_user'@'%';
GRANT ALL PRIVILEGES ON `push`.* TO 'push_user'@'%';
GRANT ALL PRIVILEGES ON `user`.* TO 'user_user'@'%';

-- 다른 데이터베이스에 대한 접근 금지
REVOKE ALL PRIVILEGES, GRANT OPTION ON *.* FROM 'comment_user'@'%';
REVOKE ALL PRIVILEGES, GRANT OPTION ON *.* FROM 'content_user'@'%';
REVOKE ALL PRIVILEGES, GRANT OPTION ON *.* FROM 'interaction_user'@'%';
REVOKE ALL PRIVILEGES, GRANT OPTION ON *.* FROM 'notification_user'@'%';
REVOKE ALL PRIVILEGES, GRANT OPTION ON *.* FROM 'push_user'@'%';
REVOKE ALL PRIVILEGES, GRANT OPTION ON *.* FROM 'user_user'@'%';

-- 변경 사항 적용
FLUSH PRIVILEGES;