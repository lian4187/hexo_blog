---
title: shadowsocks
date: 2016-06-18 10:35:38
tags:
    - blog
categories:
    - notes
---

# shadowsocks 原理
如果你还对 shadowsocks 神器不了解，请移步：[http://vc2tea.com/whats-shadowsocks/](http://vc2tea.com/whats-shadowsocks/)

# shadowsocks 安装

## **检查 python 版本**

- **NOTE**：需要Python 2.6 or 2.7.

```bash
$ python --version
Python 2.7.5
```

## **安装 shadowsocks**
- pip 版
```bash
 $ pip install shadowsocks
```
- github 版
```
 $ git clone https://github.com/shadowsocks/shadowsocks.git
 $ cd shadowsocks
 $ python setup.py
```

## **配置**
- shawdowsocks 服务端和客户端可以共用一个配置文件
- json 配置文件
```json
{
    "server":"1.1.1.1",
    "server_port":8020,
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"your_passwd",
    "timeout":300,
    "method":"aes-256-cfb",
    "fast_open": false
}
```
- 解释
    * server: 【server client 必需】shadowsocks server 地址，运行服务端时，shadowsock 所在服务器（maybe a vps server）地址
    * server_port: 【server client 必需】shadowsock server 端口
    * local_address: 【client 必需】shadowsocks client 所在地址
    * local_port: 【client 必需】shadowsocks client 端口
    * password: 【server client 必需】server 端认证密码
    * timeout: 超时时间
    * method: 加密方式，详细列表去查官网
    * fast_open: tcp fast open 用于优化性能

## **启动服务端**
```bash
#!/bin/bash
ssserver -c config.json -d start --pid-file=/home/lian/var/shadowsocks/pid --log-file=/home/lian/var/shadowsocks/log
```

## **启动客户端**

- linux 版
```bash
#!/bin/bash
ssserver -c config.json -d start --pid-file=/home/lian/var/shadowsocks/pid --log-file=/home/lian/var/shadowsocks/log
```
- windows 版
自行科普

## **科学上网**
- 可以在 chrome 里面通过 switchomega 设置 socks5 代理愉快的上网了

## **附录**
- **NOTE**: 这里只说 python 版，其他请查看[官网教程](https://shadowsocks.org/en/download/servers.html)
- 有用的链接
    - [客户端下载](https://github.com/ukanth/afwall/issues/420)
    - [官网](https://shadowsocks.org/en/index.html)
    - [官网 github](https://github.com/shadowsocks)
