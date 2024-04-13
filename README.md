# Shippings System App

Welcome to the Shippings System App! <br>

# Technology
- Mule 4.6.1 EE
- MySQL database
- H2 database
- Java 8
- Maven 3.9.6

# How to run the application
## 1. Provide database credentials and VM arguments

Applicaiton connects to the remote database by using the secured credentials. <br>
To be able to run the application you have to provide your own credentials (host, port, username, password) and encrypt them. <br>
In order to achieve that, please follow instructions on this link: https://docs.mulesoft.com/mule-runtime/latest/secure-configuration-properties

Application is developed to load property files based on the development environment you are working on. <br>
To be able to run the application, you have to provide environemnt information and encryption key:
- VM argumens to run the application are: -M-Dmule-env=dev -M-Dencryption.key=YOUR_KEY_HERE <br>
- VM argumens to run the MUnit tests are: -Dmule-env=qa -Dencryption.key=YOUR_KEY_HERE <br>
If you need some help, please follow instructions on this link: https://docs.mulesoft.com/mule-runtime/latest/deploying-to-multiple-environments

## 2. Run on Embeded Mule Runtime
Application is developed using the Anypoint Studio 7.17, with it's embedded Maven and JDK. <br>
The easiest way to run the application is to download [Anypoint Studio](https://www.mulesoft.com/lp/dl/anypoint-mule-studio) and import application as "Anypoint Studio project from File System".

## 3. Run on Mule Standalone Runtime
If you don't want to use Anypoint Studio, you can run the application using the mule CLI. <br>
Here are the instructions how to configure Mule Standalone Runtime on your machine and run the application: https://docs.mulesoft.com/mule-runtime/latest/mule-standalone

# Exposed endpoints
By default, application will run on **http://localhost:8081** <br/>
Following endpoints will be exposed:

| Methods | Urls                                          | Actions                                                    |
|---------|-----------------------------------------------|------------------------------------------------------------|
| GET     | /shippings/console                            | API Console, opens generated documentation                 |
|         |                                               |                                                            |
| GET     | /api/shippings                                | Retrieve all shippings.                                    |
| GET     | /api/shippings?name=[keyword]&match=[keyword] | Retrieve all shippings using the optional query parameters |
| POST    | /api/shippings                                | Create a new shipping                                      |
|         |                                               |                                                            |
| GET     | /api/shippings/{id}                           | Get shipping specified by it's unique ID                   |
| PUT     | /api/shippings/{id}                           | Update shipping specified by it's unique ID                |
| DELETE  | /api/shippings/{id}                           | Delete shipping specified by it's unique ID                |

# How to test the application
To test the appliactions endpoints you can use API Console. <br>
Provides intuitive way to see what data endpoints are expecting, so as what are they returning. <br>

![api-console](https://github.com/danijeldragicevic/shippings-system-app/assets/82412662/9cad48b2-8b5d-4bf6-85f0-14980052f5a7)

<br>

Feel free to explore the application and use the provided examples to understand how to interact with each endpoint. If you have any questions or issues, please refer to the API documentation or contact the application maintainers.

# Licence
[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)






































