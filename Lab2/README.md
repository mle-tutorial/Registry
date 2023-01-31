# Lab 2

MLFlow와 MinIO, Prefect를 사용하여 데이터 수집 및 학습 파이프라인을 구성해봅니다.

<br>

# Requirements

* Docker
* PostgreSQL
* 아래의 환경변수들을 설정해주어야 합니다.

<br>

|환경변수|설명|
|---|---|
|AWS_ACCESS_KEY_ID|MinIO 혹은 S3의 Key ID|
|AWS_SECRET_ACCESS_KEY|MinIO 혹은 S3의 Access Key|
|DB_USER|PostgreSQL DB의 User 이름|
|DB_PASSWD|PostgreSQL DB의 password|
|DB_HOST|PostgreSQL DB의 HOST|
|DB_PORT|PostgreSQL DB의 PORT|
|DB_NAME|PostgreSQL DB의 이름|
|MLFLOW_S3_ENDPOINT_URL|MinIO의 API URL|
|MLFLOW_DB_URL|MLFlow에서 사용할 데이터베이스의 URL|
|MLFLOW_URI|MLFlow의 URL|
|PREFECT_MINIO_ENDPOINT_URL|prefect의 flow를 저장할 MinIO의 URL|
|PREFECT_API_URL|prefect cloud API URL|
|PREFECT_API_KEY|prefect cloud API KEY|

<br>

### 설정예시
```
AWS_ACCESS_KEY_ID=user_id
AWS_SECRET_ACCESS_KEY=user_password
DB_USER=postgres
DB_PASSWD=password
DB_HOST=localhost
DB_PORT=5432
DB_NAME=stock
MLFLOW_S3_ENDPOINT_URL=http://localhost:9000
MLFLOW_DB_URL=postgresql://postgres:password@localhost:5432/mlflow
MLFLOW_URI=http://localhost:5000
PREFECT_MINIO_ENDPOINT_URL=http://minio:9000
PREFECT_API_URL=https://api.prefect.cloud/api/accounts/[ACCOUNT-ID]/workspaces/[WORKSPACE-ID]
PREFECT_API_KEY=[API-KEY]
```

.env 파일에 위와 같은 형태로 작성 후 실습 폴더(Registry/Lab2/)에 위치시킵니다.(위의 설정값들은 단순한 예시이므로 실제 실습시에는 반드시 사전에 설정했던 값들로 내용을 수정해야 합니다.)

<br>

# 참고자료
[Lab1, Lab2 실습 자료](https://docs.google.com/presentation/d/1JM-qKYC3xdzs3kn9x3X119HSSIaOgiiRGQXMTlw4lGY/edit?usp=sharing)  
