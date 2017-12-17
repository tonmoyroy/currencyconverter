# Online Currency Converter
Home Assignment 4

- User Registration/Login
- 7 Types of Currency Conversion
- REST API (https://openexchangerates.org/api/latest.json?app_id=c711b4b790394dbda5c198180f42e60a)


# MySQL TABLE STRUCTURE

```
CREATE TABLE `users` (
  `userid` bigint(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
```

```
CREATE TABLE `currency` (
  `timestamp` int(11) NOT NULL,
  `BASE` varchar(45) DEFAULT NULL,
  `AUD` varchar(45) DEFAULT NULL,
  `BDT` varchar(45) DEFAULT NULL,
  `CAD` varchar(45) DEFAULT NULL,
  `EUR` varchar(45) DEFAULT NULL,
  `SEK` varchar(45) DEFAULT NULL,
  `INR` varchar(45) DEFAULT NULL,
  `USD` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
```
