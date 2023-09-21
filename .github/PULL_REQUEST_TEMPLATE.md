## Description

<!-- 구현 및 작업 내용을 적어주세요 -->

- theaters : id, 극장이름, 위치
- customers : id, 고객이름, 이메일
- reservations : id, 극장번호(외래키), 고객번호(외래키), 날짜
- reservation1.sql : theaters와 reservations를 RIGHT JOIN
- reservation2.sql : customers와 reservations를 RIGHT JOIN

## Important content

<!-- 주의 깊게 봐줬으면 하는 부분을 적어주세요 -->

- movie1: mysql workbench에서 데이터베이스를 먼저 생성하고, Tool을 이용하여 수동으로 테이블과 데이터를 넣어줌(한번에 테이블과 데이터를 넣어줄 수 없었음, 시간 오래 걸림)
- movie2: mysql workbench에서 데이터베이스를 먼저 만들지 않고, 한번에 구현

## Question

<!-- 궁금한 점을 적어주세요 -->

- movie1처럼 데이터베이스를 구현해도 될까요?
- movie2처럼 항상 구현하는 것이 맞을까요?

## Reference

<!-- 참고한 레퍼런스가 있다면 공유해 주세요 -->

- movie1 : https://pinetreeday.tistory.com/145
- movie2 : ChatGPT
- ERD : https://velog.io/@psj0810/MySQL-Workbench%EB%A1%9C-ERD%EB%8B%A4%EC%9D%B4%EC%96%B4%EA%B7%B8%EB%9E%A8-%EC%83%9D%EC%84%B1
