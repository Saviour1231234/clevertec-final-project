package me.isbobrenok.repository;

import me.isbobrenok.entity.Employee;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends PagingAndSortingRepository<Employee, Long> {

    @Query("select e from Employee e where upper(e.fio) like concat('%', upper(?1), '%')" +
            "or upper(e.mobileNumber) like concat('%', upper(?1), '%')"+
            "or upper(e.bio) like concat('%', upper(?1), '%')"+
            "or upper(e.email) like concat('%', upper(?1), '%')")
    Page<Employee> findByKeyword(String keyword, Pageable pageable);

}
