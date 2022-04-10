package me.isbobrenok.dto.response;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.Accessors;
import me.isbobrenok.entity.Sex;

import java.time.LocalDate;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
public class EmployeeResponse {

    Long id;

    String fio;

    Sex sex;

    String position;

    LocalDate dateOfJoining;

    LocalDate dateOfBirth;

    String email;

    String mobileNumber;

    String bio;

    Double salary;

    Long idDepartment;
}
