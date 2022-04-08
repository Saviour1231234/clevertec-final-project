package me.isbobrenok.dto.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import me.isbobrenok.entity.Employee;

import java.util.List;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class DepartmentResponse {

    Long id;

    String nameOfDepartment;

    String fullNameOfDep;

    List<Employee> employeeList;
}
