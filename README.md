![infra](https://github.com/user-attachments/assets/e25be06c-44f8-49bd-b310-74044917eff8)
<img width="947" alt="grafana-2" src="https://github.com/user-attachments/assets/c3681363-7966-4e47-b5e9-fcf01b87d491" />
<img width="935" alt="grafana-1" src="https://github.com/user-attachments/assets/31902cb1-e6ad-4bf6-b2ad-8b8ad1e3bee5" />


# react-and-spring-data-rest

The application has a react frontend and a Spring Boot Rest API, packaged as a single module Maven application. You can build the application using maven and run it as a Spring Boot application using the flat jar generated in target (`java -jar target/*.jar`).

You can test the main API using the following curl commands (shown with its output):

---

\$ curl -v -u greg:turnquist localhost:8080/api/employees/3
{
"firstName" : "Frodo",
"lastName" : "Baggins",
"description" : "ring bearer",
"manager" : {
"name" : "greg",
"roles" : [ "ROLE_MANAGER" ]
},
"\_links" : {
"self" : {
"href" : "http://localhost:8080/api/employees/1"
}
}
}

---

To see the frontend, navigate to http://localhost:8080. You are immediately redirected to a login form. Log in as `greg/turnquist`
