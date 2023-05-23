# shell-script
각종 스크립트를 작성해둔 repo입니다.

# Usage
1. 리포지토리 클론
2. shell-script 폴더로 이동
3. 스크립트 실행

<br>

## 1. 리포지토리 클론
```sh
git clone https://github.com/menuhwang/shell-script.git
```

<br>

## 2. 폴더 이동
```sh
cd shell-script
```

<br>

## 3. 스크립트 실행

### Docker 최신 버전 설치
```sh
sh docker-install.sh
```

<br>

### MySQL 컨테이너 생성
```sh
sh mysql-container.sh -n {container_name} -P {port} -p {password}
```
|opt|설명|기본값|
|-----|-----|------|
|`-n`|컨테이너 이름|`mysql`|
|`-P`|호스트 포트|`3306`|
|`-p`|root 유저 패스워드|`password`|

_example_
```sh
sh mysql-container.sh -n my-msql -P 3307 -p qwer1234
```
```sh
sh mysql-container.sh -n my-msql -p qwer1234
```

<br>

### Nginx 최신 버전 설치
```sh
sh nginx-install.sh
```

<br>
