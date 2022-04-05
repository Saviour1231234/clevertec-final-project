package me.isbobrenok.dto.request;

import lombok.Data;
import lombok.experimental.Accessors;

import java.time.LocalDate;

@Data
@Accessors(chain = true)
public class EmployeeRequest {

    Long id;

    String firstName;

    String lastName;

    LocalDate dateOfBirth;

    LocalDate dateOfJoining;

    Double salary;

    Long idDepartment;
}
