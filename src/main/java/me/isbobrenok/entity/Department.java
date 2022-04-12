package me.isbobrenok.entity;

import lombok.*;
import lombok.experimental.FieldDefaults;
import org.hibernate.search.annotations.Field;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Table
@Entity
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Department {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long id;

    @Field
    @NonNull
    String nameOfDepartment;

    @Field
    @NonNull
    String fullNameOfDep;

    @OneToMany
    @JoinColumn(name = "department_id")
    List<Employee> employeeList = new ArrayList<>();


}
