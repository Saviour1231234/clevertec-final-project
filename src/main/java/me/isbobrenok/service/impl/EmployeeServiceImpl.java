package me.isbobrenok.service.impl;

import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import me.isbobrenok.dto.mapper.EmployeeMapper;
import me.isbobrenok.dto.request.EmployeeRequest;
import me.isbobrenok.dto.response.EmployeeResponse;
import me.isbobrenok.entity.Employee;
import me.isbobrenok.exception.EmployeeNotFound;
import me.isbobrenok.repository.EmployeeRepository;
import me.isbobrenok.service.EmployeeService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class EmployeeServiceImpl implements EmployeeService {

    EmployeeRepository employeeRepository;
    EmployeeMapper employeeMapper;

    @Override
    public EmployeeResponse createEmployee(EmployeeRequest employeeRequest) {
        Employee employee = employeeMapper.requestToEntity(employeeRequest);
        return employeeMapper.entityToResponse(employeeRepository.save(employee));
    }

    @Override
    public EmployeeResponse updateRequest(Long employeeId, EmployeeRequest employeeRequest) {

        Optional<Employee> employee = employeeRepository.findById(employeeId);
        if (employee.isPresent()) {
            employee.get().setFirstName(employeeRequest.getFirstName());
            employee.get().setLastName(employeeRequest.getLastName());
            employee.get().setDateOfBirth(employeeRequest.getDateOfBirth());
            employee.get().setDateOfJoining(employeeRequest.getDateOfJoining());
            employee.get().setSalary(employeeRequest.getSalary());
            employee.get().setIdDepartment(employeeRequest.getIdDepartment());
            employeeRepository.save(employee.get());
        } else {
            throw new EmployeeNotFound(String.format("Employee with id: %s not found.", employeeId));
        }
        return employeeMapper.entityToResponse(employee.get());
    }

    @Override
    public EmployeeResponse findById(Long employeeId) {
        return employeeRepository.findById(employeeId)
                .map(employeeMapper::entityToResponse)
                .orElseThrow(() -> {
                    throw new EmployeeNotFound(String.format("Employee with id: %s not found.", employeeId));
                });
    }

    @Override
    public void delete(Long employeeId) {
        Optional<Employee> employee = employeeRepository.findById(employeeId);
        if (employee.isPresent()) {
            employeeRepository.deleteById(employeeId);
        } else {
            throw new EmployeeNotFound(String.format("Employee with id: %s not found.", employeeId));
        }
    }

    @Override
    public Page<Employee> findAll(Pageable pageable) {
        return employeeRepository.findAll(pageable);
    }

    @Override
    public Page<Employee> findByKeyword(String filter, Pageable pageable) {
        return employeeRepository.findByKeyword(filter,pageable);
    }
}
