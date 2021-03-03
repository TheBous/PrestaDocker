<div align="center">
  <a href="https://github.com/TheBous/mysql-php-prestashop-docker">
    <img src="https://github.com/TheBous/mysql-php-prestashop-docker/logo.svg" alt="logo" width="300"/>
  </a>
  <br>
  <br>
</div>

# PrestaDocker

This project is a plug and play Prestashop e-commerce built with docker and:

- PHP 7.4
- Apache
- Mysql 5.7

It's useful when you wanna create an e-commerce from scratch, develop it in a local env and then create the same in a remote server.

## Installation

- Clone the repo
- Go to prestashop.com and download the latest prestashop PHP software version, unzip it and copy it in the root of this project
- Run 
```bash
docker-compose build
```
- And then 
```bash
docker-compose up
```
- Open localhost:8000 and follow the traditional Prestashop installation wizard
- When you should insert local database address, replace 127.0.0.1 with db (that's the docker container ip)
- When you reach the prestashop home, visit localhost:8000/admin and then go to ur filesystem and rm-R install folder

🎉 Enjoy your easiest and cheapest way to create an e-commerce! 🎉

TheBous