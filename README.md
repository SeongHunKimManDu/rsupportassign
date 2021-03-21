# Rsupportassign
알서포트 과제
# Rsupport-assignment
안녕하십니까 알서포트 지원자 김성훈입니다.

먼저 파일을 내려받으신 후에 
이클립스에서 내려받은 파일을 프로젝트로 추가하고

가장 처음 으로 확인해야 하는 것은 h2의 설치 유무이고 설치 후 h2에 연결합니다.

이후 /assignment/src/main/resources/application.properties 에서 
jpa setting에서 
spring.jpa.hibernate.ddl-auto=update
이부분을 
spring.jpa.hibernate.ddl-auto=create 로 바꿉니다.
그리고 프로젝트를 한번실행 시킨 이후에 다시
spring.jpa.hibernate.ddl-auto=update
로 갱신 합니다.

이후에 /assignment/src/main/java/com/assignment/AssignmentApplication.java
를 실행 시켜주시고 

웹 브라우저에서 
http://localhost:8080/getBoardList
로 주소를 이동하시면 이후로 사용하시면 됩니다
공지등록을 하고 지우고 수정이 가능합니다.
공지 수정에서는 공지 제목 내용만 수정이 가능하게 설정 했습니다.
최종 수정일은 수정이 일어나는 시점의 날짜가 저장됩니다.
 spring boot와 jpa,lombok,h2,jstl 등을 썼습니다.
 

