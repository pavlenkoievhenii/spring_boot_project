## This is a get-started project for Vue.js and Spring Boot
## 这是一个前端使用Vue.js，后端使用Spring Boot的入门项目。
## [简体中文](https://github.com/AChaoZJU/Vue-Spring-Boot-Get-Started/blob/master/README.md) | [English](https://github.com/AChaoZJU/Vue-Spring-Boot-Get-Started/blob/master/README_EN.md)
## 安装
```
cd Vue-Spring-Boot-Get-Started
# install dependencies
npm install
```
## 使用
### 启动你的MySQL服务器
MySQL数据库配置

```
CREATE DATABASE IF NOT EXISTS wepay
CHARACTER SET utf8
COLLATE utf8_general_ci
```
用SQL脚本导入数据

```
mysql -u root -p wepay < doc/wepay.sql
```
修改数据库连接信息，连接信息在 `server/src/main/application.yml`
```
spring:
    datasource:
        url: jdbc:mysql://localhost:3306/wepay?useSSL=false
        username: root
        password: XXXXXX
```
### 启动前端
```
# serve with hot reload at localhost:8080
npm run dev
```
### 启动后端
```
# serve with hot reload at localhost:8889
npm run server
```
### 启动图片服务器
```
sudo npm install -g http-server
cd server/controller/images
http-server -p  9111
```
### 访问 http://localhost:8080/
