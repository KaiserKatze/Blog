---
layout: post
title:  "0x0100 后端开发"
date:   2018-11-29 23:44:00 +0800
categories: computer wiki
---

# 后端平台

<table>
  <tr>
    <th>名称</th>
    <th>语言</th>
    <th>占用内存</th>
    <th>请求处理方式</th>
    <th>优缺点&评价</th>
  </tr>
  <tr>
    <td><a href="http://httpd.apache.org/">Apache</a></td>
    <td>Java</td>
    <td>大</td>
    <td>同步阻塞</td>
    <td>很稳定，但响应慢；适合作为服务器后端，处理复杂业务；rewrite 模块非常强大；bug 较少</td>
  </tr>
  <tr>
    <td><a href="http://nginx.org/">Nginx</a></td>
    <td>C</td>
    <td>小</td>
    <td>异步非阻塞</td>
    <td>响应快，但不稳定；适合作为服务器前端，进行负载均衡；bug 较多</td>
  </tr>
</table>

# JSP 容器/Java Servlet 引擎

<table>
  <tr>
    <th>名称</th>
    <th>优缺点&评价</th>
  </tr>
  <tr>
    <td><a href="http://tomcat.apache.org/">Tomcat</a></td>
    <td></td>
  </tr>
  <tr>
    <td><a href="https://javaee.github.io/glassfish/">Glassfish</a></td>
    <td></td>
  </tr>
</table>

# 后端框架

<table>
  <tr>
    <th>名称</th>
    <th>脚本语言</th>
    <th>优缺点&评价</th>
  </tr>
  <tr>
    <td><a href="http://php.net/">PHP</a></td>
    <td>PHP</td>
    <td></td>
  </tr>
  <tr>
    <td><a href="http://flask.pocoo.org/">Flask</a></td>
    <td>Python</td>
    <td>微型框架</td>
  </tr>
  <tr>
    <td><a href="https://www.djangoproject.com/">Django</a></td>
    <td>Python</td>
    <td>大型框架</td>
  </tr>
  <tr>
    <td><a href="https://trypyramid.com/">Pyramid</a></td>
    <td>Python</td>
    <td>大型框架</td>
  </tr>
  <tr>
    <td><a href="https://www.tornadoweb.org/">Tornado</a></td>
    <td>Python</td>
    <td></td>
  </tr>
  <tr>
    <td><a href="https://nodejs.org/">Node.js</a></td>
    <td>JavaScript</td>
    <td></td>
  </tr>
</table>

# 数据库

## 概念

<table>
  <tr>
    <th>名称</th>
    <th>关系型数据库</th>
    <th>非关系型数据库</th>
  </tr>
  <tr>
    <td>模型</td>
    <td>ACID模型</td>
    <td>CAP模型</td>
  </tr>
  <tr>
    <td>数据结构（存储机制）</td>
    <td>有固定的表结构，并需要通过 DDL 语句修改表结构，难以扩展</td>
    <td>
      <ul>
        <li>基于文档的；</li>
        <li>基于 K-V 键值对的；</li>
        <li>基于图的，等……</li>
      </ul>
      没有固定的表结构，方便扩展；适用于“业务的数据结构并不是固定的或者经常变动比较大的”情形
    </td>
  </tr>
  <tr>
    <td>横向扩展性</td>
    <td>横向扩展难，不好对数据进行分片</td>
    <td>一些非关系型数据库则原生就支持数据的水平扩展(比如mongodb的sharding机制)</td>
  </tr>
  <tr>
    <td>数据一致性</td>
    <td>强调数据的强一致性<br>关系型数据库更多偏向于OLTP场景</td>
    <td>强调的是数据最终一致性，从非关系型数据库中读到的有可能还是处于一个中间态的数据<br>非关系型数据库可能更多的偏向于OLAP场景</td>
  </tr>
</table>

## 一些数据库

<table>
  <tr>
    <th>名称</th>
    <th>备注</th>
  </tr>
  <tr>
    <td><a href="https://redis.io/">Redis</a></td>
    <td><a href="http://www.runoob.com/redis/redis-tutorial.html">Redis 教程|菜鸟教程</a></td>
  </tr>
  <tr>
    <td><a href="https://www.sqlite.org/">SQLite</a></td>
    <td></td>
  </tr>
  <tr>
    <td>MongoDB</td>
    <td></td>
  </tr>
  <tr>
    <td>MySQL</td>
    <td></td>
  </tr>
  <tr>
    <td>Oracle</td>
    <td></td>
  </tr>
</table>

# MyBatis

## 参考文档

1. [MyBatis 简介](http://www.mybatis.org/mybatis-3/zh/index.html)
2. [MyBatis 教程 w3cschool](https://www.w3cschool.cn/mybatis/)

# Java 技术栈

1. [JSP - 菜鸟教程](http://www.runoob.com/jsp/jsp-tutorial.html)
2. [Servlet - 菜鸟教程](http://www.runoob.com/servlet/servlet-tutorial.html)
3. [Java™ SE at a Glance](http://www.oracle.com/technetwork/java/javase/overview/index.html)
3. [Java™ EE at a Glance](http://www.oracle.com/technetwork/java/javaee/overview/index.html)
4. [Java™ EE 7 Specification APIs](https://docs.oracle.com/javaee/7/api/)

# Docker

## 参考文档

1. [Docker - Build, Ship, and Run Any App, Anywhere](https://www.docker.com/)
2. [Docker 教程](http://www.runoob.com/docker/docker-tutorial.html)

# 静态网站

## 参考文档

1. [Quickstart | Jekyll • Simple, blog-aware, static sites](https://jekyllrb.com/docs/)
2. [pages-themes/hacker: Hacker is a Jekyll theme for GitHub Pages](https://github.com/pages-themes/hacker)
