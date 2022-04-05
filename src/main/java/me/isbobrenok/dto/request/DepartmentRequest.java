package me.isbobrenok.dto.request;

import lombok.Data;
import lombok.experimental.Accessors;
import me.isbobrenok.entity.Employee;

import java.util.List;

@Data
@Accessors(chain = true)
public class DepartmentRequest {

    Long id;

    String nameOfDepartment;

    List<Employee> employeeList;
}
