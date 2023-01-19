# GetX의 라우트 관리
## 기본 이동 Get.to(), toNamed(), off(), offAll(), back()
딱 봤을 떄 Navigator.push(), pushNamed(), pushAndRemoveUntil(), pushReplacement() 등이 떠올랐다.  
다만 기본적인 Navigator와 비교했을 때 다른 점은 context를 사용하지 않는 것, 그리고 트랜지션이라던가 curve, duration을 설정하는 것도 있다.  
의문인건 Navigator는 context를 이용해서 중첩 네비게이션을 구현하는데 얘는 go_router 처럼 GetPage 아래에 children 인자가 있는것을 보아 GetPage를 두어 중첩하는 방식으로 예상된다.  

## 네임드라우트
따로 라우터 같은 클래스는 없고 GetPage 리스트를 전달하면 알아서 라우터 설정이 된다.  
GetPage()아래에 name, page만 적으면 네임드 라우트가 되고 transition 및 duration 설정도 가능하며 middlewares 라는 것을 두어 해당 라우트로의 네비게이션이 발생하면 호출되는 것도 설정이 된다.  
이것을 보면 리디렉션을 미들웨어로 하는것 아닌가 추측된다.  
역시 아무리 봐도 go_router랑 비슷하다.  수렴진화한거 같다.

## 중첩 네비게이션
todo