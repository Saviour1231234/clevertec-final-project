package me.isbobrenok.service;

import me.isbobrenok.dto.request.DepartmentCreateRequest;
import me.isbobrenok.dto.request.DepartmentRequest;
import me.isbobrenok.dto.response.DepartmentResponse;
import me.isbobrenok.entity.Department;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface DepartmentService {

    DepartmentResponse createDepartment(DepartmentCreateRequest departmentCreateRequest);

    DepartmentResponse updateDepartment(Long departmentId, DepartmentRequest departmentRequest);

    DepartmentResponse findById(Long departmentId);

    void delete(Long departmentId);

    Page<Department> findAll(Pageable pageable);

    Page<Department> findByKeyword(String filter, Pageable pageable);

}
