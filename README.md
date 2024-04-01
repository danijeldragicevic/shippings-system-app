# Shippings System App

Welcome to the Shippings System App! <br>

# Demo Disclaimer
This application is a demo created for educational purposes and is associated with a blog post. It is not representing a fully functional or production-ready system. 
Please refer to the [blog post](https://example.com) for insights into the concepts and use cases demonstrated.

# Technology
- Mule 4.6.1 EE
- MySQL database
- H2 database
- Java 8
- Maven 3.9.6

# How to run the application
## 1. Provide database credentials and VM arguments

Applicaiton connects to the remote database by using the secured credentials. <br>
To be able to run the application you have to provide your own credentials (host, port, username, password, database name) and encrypt them. <br>
In order to achieve that, please follow instructions on this link: https://docs.mulesoft.com/mule-runtime/latest/secure-configuration-properties

Also, application is developed to load property files based on the development environment. <br>
To be able to run the application, you have to provide environemnt information, together with the encruption key:
- VM argumens to run the application are: -Dmule-env=dev -Dencryption.key=YOUR_KEY_HERE <br>
- VM argumens to run the MUnit tests are: -Dmule-env=qa -Dencryption.key=YOUR_KEY_HERE <br>
If you need some help, please follow instructions on this link: https://docs.mulesoft.com/mule-runtime/latest/deploying-to-multiple-environments

## 2. Run on Embeded Mule Runtime
Application is developed using the Anypoint Studio 7.17, with it's embedded Maven and JDK. <br>
The easiest way to run the application is to download [lstest Anypoint Studio](https://www.mulesoft.com/lp/dl/anypoint-mule-studio) and import application as "Anypoint Studio project from File System".

## 3. Run on Mule Standalone Runtime
If you don't want to download and import into the Anypoint Studio, you can run the application using the mule CLI. <br>
Here are the instructions how to configure Mule Standalone Runtime on your machine and run the application: https://docs.mulesoft.com/mule-runtime/latest/mule-standalone

# How to test the application
By default, application will run on **http://localhost:8081** <br/>
Following endpoints will be exposed:

| Methods | Urls                                          | Actions                                                    |
|---------|-----------------------------------------------|------------------------------------------------------------|
| GET     | /shippings/console                            | Opens generated documentation                              |
|         |                                               |                                                            |
| GET     | /api/shippings                                | Retrieve all shippings.                                    |
| GET     | /api/shippings?name=[keyword]&match=[keyword] | Retrieve all shippings using the optional query parameters |
| POST    | /api/shippings                                | Create a new shipping                                      |
|         |                                               |                                                            |
| GET     | /api/shippings/{id}                           | Get shipping specified by it's unique ID                   |
| PUT     | /api/shippings/{id}                           | Update shipping specified by it's unique ID                |
| DELETE  | /api/shippings/{id}                           | Delete shipping specified by it's unique ID                |










































