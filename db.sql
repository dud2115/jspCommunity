DROP DATABASE IF EXISTS jspCommunity;
CREATE DATABASE jspCommunity;
USE jspCommunity;

CREATE TABLE `member` (
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    `name` CHAR(50) NOT NULL,
    `nickname` CHAR(50) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    loginId CHAR(50)  NOT NULL UNIQUE,
    loginPw VARCHAR(200) NOT NULL,
    adminLevel TINYINT(1) UNSIGNED NOT NULL DEFAULT 2 COMMENT '0=탈퇴/1=로그인정지/2=일반/3=인증된,4=관리자'
    );
#회원 1생성
INSERT INTO `member`
SET  regDate = NOW(),
    updateDate = NOW(),
    `name` = "유병규",
    `nickname` = "유건우",
    `email` = "michael_012@naver.com",
    loginId = "user1",
    loginPw = "user1";

#회원 2생성
INSERT INTO `member`
SET  regDate = NOW(),
    updateDate = NOW(),
    `name` = "유병주",
    `nickname` = "유동우",
    `email` = "michael_012@naver.com",
    loginId = "user2",
    loginPw = "user2";
    
CREATE TABLE board (
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    memberId INT(10) UNSIGNED NOT NULL,
    `code` CHAR(10) NOT NULL UNIQUE,
    `name` CHAR(10) NOT NULL UNIQUE
    );
    
#공지사항 생성
INSERT INTO board
SET regDate = NOW(),
updateDate = NOW(),
`code` = 'notice', 
`name` = '공지사항';    


#방명록 게시판 생성
INSERT INTO board
SET regDate = NOW(),
updateDate = NOW(),
`code` = 'guestBook', 
`name` = '방명록';    

#자유게시판 생성
INSERT INTO board
SET regDate = NOW(),
updateDate = NOW(),
`code` = 'free', 
`name` = '자유';
    
CREATE TABLE article (
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    memberId INT(10) UNSIGNED NOT NULL,
    boardId INT(10) UNSIGNED NOT NULL,    
    title CHAR(100) NOT NULL,
    `body` LONGTEXT NOT NULL,
    hitsCount INT(10) UNSIGNED NOT NULL DEFAULT 0
    );
    
    INSERT INTO article
    SET regDate = NOW(),
    updateDate = NOW(),
    memberId = 1,
    boardId = 1,
    title = '제목1',
    `body` = '내용1';
    
    SELECT * FROM article;
    
    