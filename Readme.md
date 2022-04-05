# ***Test task Clevertec(Bobrenok Igor)***

RESTful web-service, implementing the functionality for working with the employees.

###***To build project use***:
####./gradlew build
#### docker-compose up --build

### Realisation

- Gradle is used as assembler;
- Application can change Spring profiles(dev, prod)


@Profile ('dev')
Is using H2 database.

@Profile ('prod')
Is using postgresql and automatically refilling it with *;

Profiles can be changed in application.yml

```
spring:
profiles:
active: prod
```
- All of the settings is in .yml format;


### API

Application is starting at `http://localhost:8080` and working with rest by using controllers:

### Employee:

* `.../api/employees/{employeeId} - GET
Is used to find employee by id, that transmitted in request.

* `.../api/employees - GET
Is used to find all employees with pagination.

* `.../api/employees/keyword - GET
Search an employee by search query. Default size 10.

* `.../search/{keyword}- GET
  Search an employee by search query and with the name of sql column. Default size 10.

* `.../api/employees/create - POST
Creating an employee by using request in dto format.

* `.../api/employees/{employeeId}/update - PATCH
Updating employee by using id of a employee that need to update, and request in dto format, in which is located information to change

* `.../api/employees/{employeeId}- DELETE
Deleting employee by using requested id, and returning informational message.

### Department:

* `.../api/departments/{departmentId} - GET
Is used to find department by id, that transmitted in request.

* `.../api/departments - GET
Is used to find all departments with pagination.

* `.../api/department/keyword - GET
Search departments by search query. Default size 10.

* `.../api/departments/create - POST
Creating departments by using request in dto format.

* `.../api/departments/{departmentId}/update - PATCH
Updating departments by using id of a departments that need to update, and request in dto format, 
  in which is located information to change

* `.../api/departments/{departmentId}- DELETE
Deleting departments by using requested id, and returning informational message.


  
