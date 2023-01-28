# Registry

MINIO와 MLFlow를 사용하여 ML/DL 실험과정에서 생기는 메트릭, 아티팩트들을 효과적으로 저장하는 방법을 실습합니다.

<br>

# 실습에 필요한 환경변수

실습 전 반드시 아래의 환경변수들을 모두 설정해주어야 합니다.

<br>

|환경변수|설명|사용되는 실습|
|---|---|---|
|AWS_ACCESS_KEY_ID|minio에서 설정했던 id|Lab1, Lab2|
|AWS_SECRET_ACCESS_KEY|minio에서 설정했던 password|Lab1, Lab2|
|MLFLOW_S3_ENDPOINT_URL|minio의 api url|Lab1, Lab2|
|MLFLOW_DB_URL|MLFlow에서 사용할 데이터베이스의 URL|Lab1|
|DB_USER|Lab2에서 사용할 DB의 User 이름|Lab2|
|DB_PASSWD|Lab2에서 사용할 DB의 password|Lab2|
|DB_HOST|Lab2에서 사용할 DB의 HOST|Lab2|
|DB_PORT|Lab2에서 사용할 DB의 PORT|Lab2|
|DB_NAME|Lab2에서 사용할 DB의 이름|Lab2|
|MLFLOW_URI|MLFlow의 URL|Lab2|

<br>

### 설정예시
```
AWS_ACCESS_KEY_ID=user_id
AWS_SECRET_ACCESS_KEY=user_password
MLFLOW_S3_ENDPOINT_URL=http://localhost:9000
MLFLOW_DB_URL=postgresql://postgres:psqlpasswd@localhost:5432/mlflow
DB_USER=postgres
DB_PASSWD=psqlpasswd
DB_HOST=localhost
DB_PORT=5432
DB_NAME=stock
MLFLOW_URI=http://localhost:5000
```

.env 파일에 위와 같은 형태로 작성 후 프로젝트 폴더의 최상단에 위치시킵니다.(위는 단순한 예시이므로 실제 실습시에는 반드시 개인이 설정했던 정보들로 내용을 수정해야 합니다.)

모두 작성되었으면 아래의 명령어를 통해 환경변수를 세팅합니다.
```Bash
export $(xargs <.env)
```
