package me.isbobrenok.repository;

import me.isbobrenok.entity.Department;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface DepartmentRepository extends JpaRepository<Department, Long> {

    @Query("select d from Department d where upper(d.nameOfDepartment) like concat('%', upper(?1), '%')")
    Page<Department> findByKeyword(String filter, Pageable pageable);
}