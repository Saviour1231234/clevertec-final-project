package me.isbobrenok.dto.mapper;


import me.isbobrenok.dto.request.DepartmentCreateRequest;
import me.isbobrenok.dto.response.DepartmentResponse;
import me.isbobrenok.entity.Department;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface DepartmentMapper {

    DepartmentResponse entityToResponse(Department department);

    Department requestToEntity(DepartmentCreateRequest departmentCreateRequest);
}
