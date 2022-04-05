package me.isbobrenok.dto.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;

import java.time.LocalDate;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class EmployeeResponse {

    Long id;

    String firstName;

    String lastName;

    LocalDate dateOfBirth;

    LocalDate dateOfJoining;

    Double salary;

    Long idDepartment;
}
