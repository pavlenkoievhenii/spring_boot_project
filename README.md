This is get-started project for Vue.js and Spring Boot
## Installation
```
cd Vue-Spring-Boot-Get-Started
# install dependencies
npm install
```
## Usage
#### Start your MySQL server
#### MySQL Database configuration
CREATE DATABASE IF NOT EXISTS wepay
CHARACTER SET utf8
COLLATE utf8_general_ci

Import the data with SQL script

```
mysql -u root -p wepay < doc/wepay.sql
```
Modify database connection in `server/src/main/application.yml`
```
spring:
    datasource:
        url: jdbc:mysql://localhost:3306/wepay?useSSL=false
        username: root
        password: XXXXXX
```
#### Run Front-End Page
```
# serve with hot reload at localhost:8080
npm run dev
```
#### Run Back-End Server
```
# serve with hot reload at localhost:8889
npm run server
```
#### Run http-server, which servers images
```
sudo npm install -g http-server
cd server/controller/images
http-server -p  9111
```
#### Access http://localhost:8080/