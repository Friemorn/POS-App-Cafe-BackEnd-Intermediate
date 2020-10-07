# POS-App-Cafe-BackEnd

![GitHub repo size](https://img.shields.io/github/repo-size/Friemorn/POS-App-Cafe-BackEnd-Intermediate)
![GitHub contributors](https://img.shields.io/github/Friemorn/POS-App-Cafe-BackEnd-Intermediate)
![GitHub stars](https://img.shields.io/github/stars/Friemorn/POS-App-Cafe-BackEnd-Intermediate?style=social)
![GitHub forks](https://img.shields.io/github/forks/Friemorn/POS-App-Cafe-BackEnd-Intermediate?style=social)

## FLow of this REST API
* [Flowchart](Flowchart_ufocafe.jpg)

## Built With
* [Node.js](https://nodejs.org/en/)
* [Express.js](https://expressjs.com/)

## Requirements
* [Node.js](https://nodejs.org/en/)
* [Database](ufotable_cafe.sql)
* [Postman](Cafe.postman_collection.json)

## npm package
* [Bcryptjs](https://www.npmjs.com/package/bcryptjs)
* [Body-parser](https://www.npmjs.com/package/body-parser)
* [Cors](https://www.npmjs.com/package/cors)
* [Dotenv](https://www.npmjs.com/package/dotenv)
* [Express](https://www.npmjs.com/package/express)
* [Jsonwebtoken](https://www.npmjs.com/package/jsonwebtoken)
* [Morgan](https://www.npmjs.com/package/morgan)
* [Multer](https://www.npmjs.com/package/multer)
* [Mysql2](https://www.npmjs.com/package/mysql2)
* [Nodemailer](https://www.npmjs.com/package/nodemailer)
* [Redis](https://www.npmjs.com/package/redis)

## Setup .env example

Create .env file in your root project folder.

```env

DB_HOST = localhost
DB_USER = "your database username"
DB_PASSWORD = "your database password"
DB_DATABASE = ufotable_cafe
PORT = "your port"
SECRET_KEY = "your secret key"
PORT_REDIS = 6379

```

## Installation

Clone this repository and then use the package manager npm to install dependencies.
```
npm install
```

### Compiles and hot-reloads for development
```
npm run dev
```

### Lints and fixes files
```
npm run lint 
```

### Use standard to fixes files
```
standard --fix 
```

## Contact

If you want to contact me you can reach me at <dewondofriemorn.s4a@gmail.com>.

### Test Deployment Website
[ufotablecafe.fwdev.online](http://ufotablecafe.fwdev.online/)
