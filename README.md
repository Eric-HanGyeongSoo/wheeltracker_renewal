# Wheel Tracker
![KakaoTalk_20210823_233820141](https://user-images.githubusercontent.com/55349655/130466710-7bfd6300-e26e-444d-918d-c8a19b330493.png)

## 앱 소개
### 휠체어 만보기
![image](https://user-images.githubusercontent.com/55349655/130468111-691bfcf0-7e38-4f04-801e-f419cc6c33da.png)

#### main 화면
<img width="250" alt="KakaoTalk_20210823_233820141_02" src="https://user-images.githubusercontent.com/55349655/130466995-6484cb1f-f0de-41a3-9a51-8c13ed6c655f.png">

- 하루동안 얼마나 많이 움직였는지 시각적으로 정보를 제공

#### 앨범 기능

![캡처](https://user-images.githubusercontent.com/55349655/130467470-52bb02ba-5703-46a0-b925-9388410fdd55.PNG)

- 푸쉬 수에 따라 매달 새롭게 가꿔지는 숲을 월별로 모아서 제공

#### record 화면
![3](https://user-images.githubusercontent.com/55349655/130468343-6f16ce25-d7b7-4eef-8027-37f2744ff415.PNG)

- 매일, 매주, 매달의 구체적인 운동 정보를 정확한 수치로 제공

### setting 화면
![2](https://user-images.githubusercontent.com/55349655/130467954-15ba9af7-b340-4673-a6b2-ce41e7e95344.PNG)

- 휠체어를 한 번 밀었을 때 이동하는 거리와 GPS 기반으로 얻은 이동거리를 이용하여 계산하여 정확한 푸시 횟수 측정

## 참여자
한경수 이가은 여충관

-----------------------------------------------------------------------------------------------------

## 코코아팟 설치 방법
* 차트화면을 위해 코코아팟을 설치해야 한다. 참조 : https://yeniful.tistory.com/25
1. 터미널에서 설치 : sudo gem install cocoapods ( pw는 mac 암호)
2. 터미널에서 프로젝트 경로로 이동한 후 pop 파일 생성 : pod init
3. pop 파일 생성 : pop init
4. popfile 열기 : open -e podfile
5. 사용할 pop 코드 입력 : pod '라이브러리 이름' 형식으로
6. 프로젝트에서 설치 pod install
7. import Charts
