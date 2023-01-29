# Lab 1

MLFlow를 이용하여 실험과정에서 생기는 성능지표, 모델파일 등 여러가지 아티팩트를 기록해봅니다.

<br>

# Requirements

* Docker
* PostgreSQL
* 아래의 환경변수들을 설정해주어야 합니다.

<br>

|환경변수|설명|
|---|---|
|MLFLOW_DB_URL|MLFlow에서 사용할 데이터베이스의 URL|

<br>

### 설정예시
```
MLFLOW_DB_URL=postgresql://postgres:password@localhost:5432/mlflow
```

.env 파일에 위와 같은 형태로 작성 후 실습 폴더(Registry/Lab1/)에 위치시킵니다.(위의 설정값들은 단순한 예시이므로 실제 실습시에는 반드시 사전에 설정했던 값들로 내용을 수정해야 합니다.)

<br>

# 참고자료
[Lab1, Lab2 실습 자료](https://docs.google.com/presentation/d/1JM-qKYC3xdzs3kn9x3X119HSSIaOgiiRGQXMTlw4lGY/edit?usp=sharing)  
