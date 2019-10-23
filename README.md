<p align="center">
    <img src="/.github/home-page-images/laradock-logo.jpg?raw=true" alt="Laradock Logo"/>
</p>

---

<p align="center"><b>Full PHP development environment based on Docker.</b></p>

<p align="center">Supporting a variety of common services, all pre-configured to provide a full PHP development environment.</p>

<p align="center">
   <a href="http://laradock.io/contributing"><img src="https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat" alt="contributions welcome"></a>
   <a href="https://github.com/laradock/laradock/network"><img src="https://img.shields.io/github/forks/laradock/laradock.svg" alt="GitHub forks"></a>
   <a href="https://github.com/laradock/laradock/issues"><img src="https://img.shields.io/github/issues/laradock/laradock.svg" alt="GitHub issues"></a>
   <a href="https://github.com/laradock/laradock/stargazers"><a href="#backers" alt="sponsors on Open Collective"><img src="https://opencollective.com/laradock/backers/badge.svg" /></a> <a href="#sponsors" alt="Sponsors on Open Collective"><img src="https://opencollective.com/laradock/sponsors/badge.svg" /></a> <img src="https://img.shields.io/github/stars/laradock/laradock.svg" alt="GitHub stars"></a>
   <a href="https://travis-ci.org/laradock/laradock"><img src="https://travis-ci.org/laradock/laradock.svg?branch=master" alt="Build status"></a>
   <a href="https://raw.githubusercontent.com/laradock/laradock/master/LICENSE"><img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="GitHub license"></a>
</p>

<p align="center">
    <a href="http://zalt.me"><img src="http://forthebadge.com/images/badges/built-by-developers.svg" alt="forthebadge" width="240"></a>
</p>



<h4 align="center" style="color:#7d58c2">Use Docker First - Then Learn About It Later</h4>

<p align="center">
	<a href="http://laradock.io">
	   <img src="https://raw.githubusercontent.com/laradock/laradock/master/.github/home-page-images/documentation-button.png" width="300px" alt="Laradock Documentation"/>
	</a>
</p>

---

## Changes from etalon

1. Оставил только нужное, остальное повырезал. 
2. Добавил новый моудль openssl

#### openssl 
Задача этого модуля генерировать self-signed wildcard сертификаты. Чтобы сгенерировать новый сертификат достаточно дописать новый домен в docker-compose.yaml. Выгляти это примерно так

```
openssl:
  build:
    context: ./openssl
  environment:
    OPENSSL_SITE_DOMAINS: "adpump.local newdomain.com"
 
```
