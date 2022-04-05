package me.isbobrenok.dto.mapper;


import me.isbobrenok.dto.request.EmployeeRequest;
import me.isbobrenok.dto.response.EmployeeResponse;
import me.isbobrenok.entity.Employee;
import org.mapstruct.Mapper;
import org.mapstruct.ReportingPolicy;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE)
public interface EmployeeMapper {

    EmployeeResponse entityToResponse(Employee employee);

    Employee requestToEntity(EmployeeRequest employeeRequest);
}
