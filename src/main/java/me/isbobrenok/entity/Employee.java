package me.isbobrenok.entity;

import lombok.*;
import lombok.experimental.FieldDefaults;
import org.hibernate.search.annotations.Field;
import org.hibernate.search.annotations.Indexed;

import javax.persistence.*;
import java.time.LocalDate;


@Table
@Entity
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
@Indexed
public class Employee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Field
    @Column(name = "first_name")
    String firstName;
    @Field
    @Column(name = "last_name")
    String lastName;
    @Field
    @Column(name = "middle_name")
    String middleName;
    @Enumerated
    Sex sex;

    String position;

    LocalDate dateOfJoining;

    LocalDate dateOfBirth;

    String email;

    String mobileNumber;

    String bio;

    Double salary;

    @Column(name = "department_id")
    Long idDepartment;
}
