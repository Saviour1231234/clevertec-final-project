package me.isbobrenok.dto.request;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class DepartmentCreateRequest {

    String nameOfDepartment;

    String fullNameOfDep;
}
