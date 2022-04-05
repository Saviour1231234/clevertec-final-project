package me.isbobrenok.controller;

import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import me.isbobrenok.dto.request.EmployeeRequest;
import me.isbobrenok.dto.response.EmployeeResponse;
import me.isbobrenok.entity.Employee;
import me.isbobrenok.service.EmployeeService;
import me.isbobrenok.service.SearchService;
import me.isbobrenok.validations.response.MessageResponse;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.query.Param;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

import static org.springframework.http.MediaType.APPLICATION_JSON_VALUE;

@RestController
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
@RequiredArgsConstructor
public class EmployeeController {

    EmployeeService employeeService;
    SearchService searchService;

    public static final String FIND_EMPLOYEE_BY_ID = "/api/employees/{employeeId}";
    public static final String FIND_EMPLOYEES = "/api/employees";
    public static final String FIND_EMPLOYEE_BY_KEYWORD = "/api/employee/keyword";
    public static final String CREATE_EMPLOYEE = "/api/employees/create";
    public static final String UPDATE_EMPLOYEE = "/api/employees/{employeeId}/update";
    public static final String DELETE_EMPLOYEE = "/api/employees/{employeeId}";
    public static final String FIND_EMPLOYEES_BY_KEYWORD_AND_PARAM = "/search/{keyword}";


    /**
     * @param pageable from request
     * @return all employees with pagination
     */
    @GetMapping(value = FIND_EMPLOYEES, produces = APPLICATION_JSON_VALUE)
    public Page<Employee> findAllEmployees(@PageableDefault(sort = { "firstName", "lastName"}, value = 10)Pageable pageable) {
        return employeeService.findAll(pageable);
    }

    /**
     * @param filter is a search query
     * @return employee that matches to search query
     */
    @GetMapping(value = FIND_EMPLOYEE_BY_KEYWORD, produces = APPLICATION_JSON_VALUE)
    public Page<Employee> searchByWord(@Param("filter")String filter,
                                       @PageableDefault(sort = { "firstName", "lastName"}, value = 10) Pageable pageable) {
        return employeeService.findByKeyword(filter, pageable);
    }

    /**
     * @param employeeId is id of a wanted employee
     * @return wanted employee id dto format
     */
    @GetMapping(value = FIND_EMPLOYEE_BY_ID, produces = APPLICATION_JSON_VALUE)
    public ResponseEntity<EmployeeResponse> findById(@PathVariable Long employeeId) {

        EmployeeResponse employeeResponse = employeeService.findById(employeeId);

        return new ResponseEntity<>(employeeResponse, HttpStatus.OK);
    }

    /**
     * @param employeeRequest is in dto format
     * @return employee id dto format
     */
    @PostMapping(value = CREATE_EMPLOYEE, consumes = APPLICATION_JSON_VALUE, produces = APPLICATION_JSON_VALUE)
    public ResponseEntity<Object> createEmployee(@Valid @RequestBody EmployeeRequest employeeRequest) {

        EmployeeResponse employeeResponse = employeeService.createEmployee(employeeRequest);

        return new ResponseEntity<>(employeeResponse, HttpStatus.OK);
    }

    /**
     * @param employeeRequest is in dto format
     * @param employeeId is id of a wanted employee
     * @return updated employee id dto format
     */
    @PatchMapping(value = UPDATE_EMPLOYEE, consumes = APPLICATION_JSON_VALUE, produces = APPLICATION_JSON_VALUE)
    public ResponseEntity<Object> updateEmployee(@Valid @RequestBody EmployeeRequest employeeRequest,
                                                @PathVariable("employeeId") Long employeeId) {

        EmployeeResponse employeeResponse = employeeService.updateRequest(employeeId, employeeRequest);

        return new ResponseEntity<>(employeeResponse, HttpStatus.OK);
    }

    /**
     * @param employeeId is id of a wanted employee
     * @return informational message
     */
    @DeleteMapping(value = DELETE_EMPLOYEE, produces = APPLICATION_JSON_VALUE)
    public ResponseEntity<?> deleteEmployee(@PathVariable("employeeId") Long employeeId) {
        employeeService.delete(employeeId);
        return new ResponseEntity<>(new MessageResponse("Employee was deleted"), HttpStatus.OK);
    }

    @GetMapping(FIND_EMPLOYEES_BY_KEYWORD_AND_PARAM)
    public Page<Employee> search(@PathVariable String keyword, @RequestParam("param")String param,
                                 @PageableDefault(sort = { "firstName", "lastName"}, value = 10) Pageable pageable) {

        return searchService.search(keyword, param, pageable);

    }
}
