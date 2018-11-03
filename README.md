# Hackaton_2018
## 멋쟁이 사자처럼
#### MANNANA
#### URL - https://mannana.herokuapp.com/

<br>

## 서비스 내용
#### 국민대학교 내 하나의 매칭 플랫폼
#### 국민대학교 동아리 정보를 모으고 동아리 모집을 쉽게하게 하기 위함
#### 후에 스터디, 창업, 공모전으로 확장할 계획이었음

<br>

## 구현한 기능들
### 회원가입 기능
#### - devise gem 사용
#### - 정규식 표현을 통한 password 조건 설정
#### - mailgun gem을 활용하여 메일인증 기능 구현
#### - 마이페이지 기능

<br>

### 모델(DB)
#### - 동아리 - article 1 : N
#### - article - comment 1 :N
#### - 모델을 설정하여 각 동아리마다 하나의 페이스북 페이지 처럼 피드형태로 보여줌(+ 댓글기능)
#### - 동아리 - user 1 : N 으로 놓아 동아리가 여러명의 구성원을 가질 수 있게
#### - user - message M :N 관계로 user간의 쪽지기능 구현
#### - user의 club wish list 구현하다 끝

<br>

### 기타
#### js를 활용해서 검색필터 구현
#### 세부적으로 club의 leader 즉 동아리장에게만 특수권한 부여
#### 게시글 내용들 modal로 사진 넘겨가며 보기
#### 이미지 업로드 여러개 가능
#### 헤로쿠 deploy
