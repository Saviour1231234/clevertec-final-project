package me.isbobrenok.service;

import me.isbobrenok.dto.request.EmployeeRequest;
import me.isbobrenok.dto.response.EmployeeResponse;
import me.isbobrenok.entity.Employee;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface EmployeeService {
    EmployeeResponse createEmployee(EmployeeRequest employeeRequest);

    EmployeeResponse updateRequest(Long employeeId, EmployeeRequest employeeRequest);

    EmployeeResponse findById(Long employeeId);

    void delete(Long employeeId);

    Page<Employee> findAll(Pageable pageable);

    Page<Employee> findByKeyword(String keyword, Pageable pageable);
}
