package me.isbobrenok.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import me.isbobrenok.entity.Department;
import me.isbobrenok.repository.DepartmentRepository;
import me.isbobrenok.service.DepartmentService;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@WebMvcTest(DepartmentController.class)
class DepartmentControllerTest {

    @Autowired
    MockMvc mockMvc;

    @Autowired
    ObjectMapper objectMapper;

    @MockBean
    DepartmentRepository departmentRepository;

    @MockBean
    DepartmentService departmentService;

    Department department = new Department(1L, "QWERTY", "QWERTY", null);
    Department department2 = new Department(2L, "QWERTY2", "QWERTY2", null);
    Department department3 = new Department(3L, "QWERTY3", "QWERTY3", null);




    @Test
    public void getAllDepartments_success() throws Exception {
        List<Department> records = new ArrayList<>(Arrays.asList(department, department2, department3));

        Mockito.when(departmentRepository.findAll()).thenReturn(records);

        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/departments")
                        .contentType(MediaType.APPLICATION_JSON))
                .andDo(print())
                .andExpect(status().isOk());
    }

    @Test
    public void getDepartmentsById_success() throws Exception {
        Mockito.when(departmentRepository.findById(department.getId())).thenReturn(java.util.Optional.of(department));

        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/departments/1")
                        .contentType(MediaType.APPLICATION_JSON))
                .andDo(print())
                .andExpect(status().isOk());
    }

    @Test
    public void createDepartment_success() throws Exception {
        Department departmentCreate = Department.builder()
                .nameOfDepartment("clever")
                .fullNameOfDep("Clevertec")
                .build();

        Mockito.when(departmentRepository.save(departmentCreate)).thenReturn(departmentCreate);

        MockHttpServletRequestBuilder mockRequest = MockMvcRequestBuilders.post("/api/departments/create")
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .content(this.objectMapper.writeValueAsString(departmentCreate));

        mockMvc.perform(mockRequest)
                .andDo(print())
                .andExpect(status().isOk());
    }

    @Test
    public void updateDepartment_success() throws Exception {
        Department departmentUpdate = Department.builder()
                .id(1L)
                .nameOfDepartment("clever")
                .fullNameOfDep("Clevertec")
                .build();

        Mockito.when(departmentRepository.findById(department.getId())).thenReturn(Optional.of(department));
        Mockito.when(departmentRepository.save(departmentUpdate)).thenReturn(departmentUpdate);

        MockHttpServletRequestBuilder mockRequest = MockMvcRequestBuilders.patch("/api/departments/1/update")
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .content(this.objectMapper.writeValueAsString(departmentUpdate));

        mockMvc.perform(mockRequest)
                .andDo(print())
                .andExpect(status().isOk());
    }

    @Test
    public void updateDepartment_nullId() throws Exception {
        Department departmentUpdate = Department.builder()
                .nameOfDepartment("clever2")
                .fullNameOfDep("Clevertec2")
                .build();

        MockHttpServletRequestBuilder mockRequest = MockMvcRequestBuilders
                .patch("/api/departments/{departmentId}/update", departmentUpdate.getId())
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .content(this.objectMapper.writeValueAsString(departmentUpdate));

        mockMvc.perform(mockRequest)
                .andExpect(status().isNotFound());

    }

    @Test
    public void updateDepartment_recordNotFound() throws Exception {
        Department departmentUpdate = Department.builder()
                .nameOfDepartment("clever2")
                .fullNameOfDep("Clevertec2")
                .build();

        Mockito.when(departmentRepository.findById(departmentUpdate.getId())).thenReturn(null);

        MockHttpServletRequestBuilder mockRequest = MockMvcRequestBuilders
                .patch("/api/departments/{departmentId}/update", departmentUpdate.getId() )
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .content(this.objectMapper.writeValueAsString(departmentUpdate));

        mockMvc.perform(mockRequest)
                .andExpect(status().isNotFound());
    }

    @Test
    public void deleteDepartmentById_success() throws Exception {
        Mockito.when(departmentRepository.findById(department2.getId())).thenReturn(Optional.of(department2));

        mockMvc.perform(MockMvcRequestBuilders
                        .delete("/api/departments/2")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
    }

    @Test
    public void deleteDepartmentById_notFound() throws Exception {
        Mockito.when(departmentRepository.findById(101L)).thenReturn(null);

        mockMvc.perform(MockMvcRequestBuilders
                        .delete("/api/departments/101L")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isBadRequest());
    }



}