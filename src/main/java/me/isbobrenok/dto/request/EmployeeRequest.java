package me.isbobrenok.dto.request;

import lombok.Data;
import lombok.experimental.Accessors;
import me.isbobrenok.entity.Sex;
import org.hibernate.search.annotations.Field;

import javax.persistence.Column;
import javax.persistence.Enumerated;
import javax.validation.constraints.NotBlank;
import java.time.LocalDate;

@Data
@Accessors(chain = true)
public class EmployeeRequest {

    Long id;
    @NotBlank(message = "firstName must not be blank")
    String firstName;
    @NotBlank(message = "lastName must not be blank")
    String lastName;
    @NotBlank(message = "middleName must not be blank")
    String middleName;

    Sex sex;

    String position;

    LocalDate dateOfJoining;

    LocalDate dateOfBirth;
    @NotBlank(message = "email must not be blank")
    String email;
    @NotBlank(message = "mobileNumber must not be blank")
    String mobileNumber;
    @NotBlank(message = "bio must not be blank")
    String bio;

    Double salary;

    Long idDepartment;
}
