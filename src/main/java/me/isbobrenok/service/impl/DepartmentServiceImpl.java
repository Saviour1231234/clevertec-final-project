package me.isbobrenok.service.impl;

import lombok.AccessLevel;
import lombok.RequiredArgsConstructor;
import lombok.experimental.FieldDefaults;
import me.isbobrenok.dto.mapper.DepartmentMapper;
import me.isbobrenok.dto.request.DepartmentCreateRequest;
import me.isbobrenok.dto.request.DepartmentRequest;
import me.isbobrenok.dto.response.DepartmentResponse;
import me.isbobrenok.entity.Department;
import me.isbobrenok.exception.DepartmentNotFound;
import me.isbobrenok.repository.DepartmentRepository;
import me.isbobrenok.service.DepartmentService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE, makeFinal = true)
public class DepartmentServiceImpl implements DepartmentService {

    DepartmentRepository departmentRepository;
    DepartmentMapper departmentMapper;

    @Override
    public DepartmentResponse createDepartment(DepartmentCreateRequest departmentCreateRequest) {
        Department department = departmentMapper.requestToEntity(departmentCreateRequest);
        return departmentMapper.entityToResponse(departmentRepository.save(department));
    }

    @Override
    public DepartmentResponse updateDepartment(Long departmentId, DepartmentRequest departmentRequest) {
        Optional<Department> departmentUpdate = departmentRepository.findById(departmentId);
        if (departmentUpdate.isPresent()) {
            departmentUpdate.get().setNameOfDepartment(departmentRequest.getNameOfDepartment());
            departmentUpdate.get().setEmployeeList(departmentRequest.getEmployeeList());
            departmentRepository.save(departmentUpdate.get());
        } else {
            throw new DepartmentNotFound(String.format("Department with id: %s not found.", departmentId));
        }
        return departmentMapper.entityToResponse(departmentUpdate.get());
    }

    @Override
    public DepartmentResponse findById(Long departmentId) {
        return departmentRepository.findById(departmentId)
                .map(departmentMapper::entityToResponse)
                .orElseThrow(() -> {
                    throw new DepartmentNotFound(String.format("Department with id: %s not found.", departmentId));
                });
    }

    @Override
    public void delete(Long departmentId) {
        Optional<Department> delete = departmentRepository.findById(departmentId);
        if (delete.isPresent()) {
            departmentRepository.deleteById(departmentId);
        } else {
            throw new DepartmentNotFound(String.format("Department with id: %s not found.", departmentId));
        }
    }

    @Override
    public Page<Department> findAll(Pageable pageable) {
        return departmentRepository.findAll(pageable);
    }

    @Override
    public Page<Department> findByKeyword(String filter, Pageable pageable) {
        return departmentRepository.findByKeyword(filter, pageable);
    }
}
