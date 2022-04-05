package me.isbobrenok.controller;

import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import me.isbobrenok.dto.request.DepartmentCreateRequest;
import me.isbobrenok.dto.request.DepartmentRequest;
import me.isbobrenok.dto.response.DepartmentResponse;
import me.isbobrenok.entity.Department;
import me.isbobrenok.service.DepartmentService;
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
public class DepartmentController {

    DepartmentService departmentService;
    SearchService searchService;

    public static final String FIND_DEPARTMENT_BY_ID = "/api/departments/{departmentId}";
    public static final String FIND_DEPARTMENTS = "/api/departments";
    public static final String FIND_DEPARTMENT_BY_KEYWORD = "/api/department/keyword";
    public static final String CREATE_DEPARTMENT = "/api/departments/create";
    public static final String UPDATE_DEPARTMENT = "/api/departments/{departmentId}/update";
    public static final String DELETE_DEPARTMENT = "/api/departments/{departmentId}";


    /**
     * @param pageable from request
     * @return all departments with pagination
     */
    @GetMapping(value = FIND_DEPARTMENTS, produces = APPLICATION_JSON_VALUE)
    public Page<Department> findAllComments(@PageableDefault(sort = { "nameOfDepartment"}, value = 10) Pageable pageable) {
        return departmentService.findAll(pageable);
    }

    /**
     * @param filter is a search query
     * @return department that matches to search query
     */
    @GetMapping(value = FIND_DEPARTMENT_BY_KEYWORD, produces = APPLICATION_JSON_VALUE)
    public Page<Department> searchByWord(@Param("filter") String filter,@PageableDefault(sort = {"nameOfDepartment"},
            value = 10)  Pageable pageable) {
        return departmentService.findByKeyword(filter, pageable);
    }

    /**
     * @param departmentId is id of a wanted department
     * @return wanted department id dto format
     */
    @GetMapping(value = FIND_DEPARTMENT_BY_ID, produces = APPLICATION_JSON_VALUE)
    public ResponseEntity<DepartmentResponse> findById(@PathVariable Long departmentId) {

        DepartmentResponse commentResponse = departmentService.findById(departmentId);

        return new ResponseEntity<>(commentResponse, HttpStatus.OK);
    }

    /**
     * @param departmentRequest is in dto format
     * @return department id dto format
     */
    @PostMapping(value = CREATE_DEPARTMENT, consumes = APPLICATION_JSON_VALUE, produces = APPLICATION_JSON_VALUE)
    public ResponseEntity<Object> createComment(@Valid @RequestBody DepartmentCreateRequest departmentRequest) {

        DepartmentResponse departmentResponse = departmentService.createDepartment(departmentRequest);

        return new ResponseEntity<>(departmentResponse, HttpStatus.OK);
    }

    /**
     * @param departmentRequest is in dto format
     * @param departmentId is id of a wanted department
     * @return updated department id dto format
     */
    @PatchMapping(value = UPDATE_DEPARTMENT, consumes = APPLICATION_JSON_VALUE, produces = APPLICATION_JSON_VALUE)
    public ResponseEntity<Object> updateComment(@Valid @RequestBody DepartmentRequest departmentRequest,
                                                @PathVariable("departmentId") Long departmentId) {

        DepartmentResponse departmentResponse = departmentService.updateDepartment(departmentId, departmentRequest);

        return new ResponseEntity<>(departmentResponse, HttpStatus.OK);
    }

    /**
     * @param departmentId is id of a wanted department
     * @return informational message
     */
    @DeleteMapping(value = DELETE_DEPARTMENT, produces = APPLICATION_JSON_VALUE)
    public ResponseEntity<?> deleteNews(@PathVariable("departmentId") Long departmentId) {
        departmentService.delete(departmentId);
        return new ResponseEntity<>(new MessageResponse("Department was deleted"), HttpStatus.OK);
    }
}
