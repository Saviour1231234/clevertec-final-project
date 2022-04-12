package me.isbobrenok.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import me.isbobrenok.entity.Employee;
import me.isbobrenok.entity.Sex;
import me.isbobrenok.repository.EmployeeRepository;
import me.isbobrenok.service.EmployeeService;
import me.isbobrenok.service.SearchService;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockHttpServletRequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@WebMvcTest(EmployeeController.class)
class EmployeeControllerTest {

    @Autowired
    MockMvc mockMvc;

    @Autowired
    ObjectMapper objectMapper;

    @MockBean
    SearchService searchService;

    @MockBean
    EmployeeRepository employeeRepository;

    @MockBean
    EmployeeService employeeService;

    Employee employee = new Employee(1L, "Qwerty Qwerty Qwerty", Sex.MEN, "qwqw", LocalDate.ofEpochDay(2022 - 4 - 11),
            LocalDate.ofEpochDay(2022 - 4 - 11), "qweqwe@gmail.com", "qweqweqwe","sad",22222.00, null);

    Employee employee2 = new Employee(1L, "Qwerty Qwerty Qwerty", Sex.MEN, "qwqw",LocalDate.ofEpochDay(2022 - 4 - 11),
            LocalDate.ofEpochDay(2022 - 4 - 11), "qweqwe@gmail.com", "qweqweqwe","sad" ,22222.00, null);

    Employee employee3 = new Employee(1L, "Qwerty Qwerty Qwerty", Sex.MEN, "qwqw", LocalDate.ofEpochDay(2022 - 4 - 11),
            LocalDate.ofEpochDay(2022 - 4 - 11), "qweqwe@gmail.com", "qweqweqwe","sad" , 22222.00, null);


    @Test
    public void getAllEmployees_success() throws Exception {
        List<Employee> records = new ArrayList<>(Arrays.asList(employee, employee2, employee3));

        Mockito.when(employeeRepository.findAll()).thenReturn(records);

        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/employees")
                        .contentType(MediaType.APPLICATION_JSON))
                .andDo(print())
                .andExpect(status().isOk());
    }

    @Test
    public void getEmployeesById_success() throws Exception {
        Mockito.when(employeeRepository.findById(employee.getId())).thenReturn(java.util.Optional.of(employee));

        mockMvc.perform(MockMvcRequestBuilders
                        .get("/api/employees/1")
                        .contentType(MediaType.APPLICATION_JSON))
                .andDo(print())
                .andExpect(status().isOk());
    }

    @Test
    public void createDepartment_success() throws Exception {
        Employee employeeCreate = Employee.builder()
                .id(1L)
                .fio("String")
                .sex(Sex.MEN)
                .position("string")
                .dateOfJoining(LocalDate.ofEpochDay(2022 - 4 - 11))
                .dateOfBirth(LocalDate.ofEpochDay(2022 - 4 - 11))
                .email("string")
                .mobileNumber("string")
                .bio("string")
                .salary(1234.00)
                .idDepartment(null)
                .build();

                Mockito.when(employeeRepository.save(employeeCreate)).thenReturn(employeeCreate);

        MockHttpServletRequestBuilder mockRequest = MockMvcRequestBuilders.post("/api/employees/create")
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .content(this.objectMapper.writeValueAsString(employeeCreate));

        mockMvc.perform(mockRequest)
                .andDo(print())
                .andExpect(status().isOk());
    }

    @Test
    public void updateEmployee_success() throws Exception {
        Employee employeeUpdate = Employee.builder()
                .id(1L)
                .fio("String")
                .sex(Sex.MEN)
                .position("string")
                .dateOfJoining(LocalDate.ofEpochDay(2022 - 4 - 11))
                .dateOfBirth(LocalDate.ofEpochDay(2022 - 4 - 11))
                .email("string")
                .mobileNumber("string")
                .bio("string")
                .salary(1234.00)
                .idDepartment(null)
                .build();

        Mockito.when(employeeRepository.findById(employee.getId())).thenReturn(Optional.of(employee));
        Mockito.when(employeeRepository.save(employeeUpdate)).thenReturn(employeeUpdate);

        MockHttpServletRequestBuilder mockRequest = MockMvcRequestBuilders
                .patch("/api/employees/1/update")
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .content(this.objectMapper.writeValueAsString(employeeUpdate));

        mockMvc.perform(mockRequest)
                .andDo(print())
                .andExpect(status().isOk());
    }

    @Test
    public void updateEmployee_nullId() throws Exception {
        Employee employeeUpdate = Employee.builder()
                .fio("String")
                .sex(Sex.MEN)
                .position("string")
                .dateOfJoining(LocalDate.ofEpochDay(2022 - 4 - 11))
                .dateOfBirth(LocalDate.ofEpochDay(2022 - 4 - 11))
                .email("string")
                .mobileNumber("string")
                .bio("string")
                .salary(1234.00)
                .idDepartment(null)
                .build();

        MockHttpServletRequestBuilder mockRequest = MockMvcRequestBuilders
                .patch("/api/employees/{employeesId}/update", employeeUpdate.getId())
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .content(this.objectMapper.writeValueAsString(employeeUpdate));

        mockMvc.perform(mockRequest)
                .andExpect(status().isNotFound());
    }

    @Test
    public void updateEmployee_recordNotFound() throws Exception {
        Employee employeeUpdate = Employee.builder()
                .fio("String")
                .sex(Sex.MEN)
                .position("string")
                .dateOfJoining(LocalDate.ofEpochDay(2022 - 4 - 11))
                .dateOfBirth(LocalDate.ofEpochDay(2022 - 4 - 11))
                .email("string")
                .mobileNumber("string")
                .bio("string")
                .salary(1234.00)
                .idDepartment(null)
                .build();

        Mockito.when(employeeRepository.findById(employeeUpdate.getId())).thenReturn(null);

        MockHttpServletRequestBuilder mockRequest = MockMvcRequestBuilders
                .patch("/api/employees/{employeesId}/update", employeeUpdate.getId())
                .contentType(MediaType.APPLICATION_JSON)
                .accept(MediaType.APPLICATION_JSON)
                .content(this.objectMapper.writeValueAsString(employeeUpdate));

        mockMvc.perform(mockRequest)
                .andExpect(status().isNotFound());
    }

    @Test
    public void deleteEmployeeById_success() throws Exception {
        Mockito.when(employeeRepository.findById(employee2.getId())).thenReturn(Optional.of(employee2));

        mockMvc.perform(MockMvcRequestBuilders
                        .delete("/api/employees/2")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isOk());
    }

    @Test
    public void deleteEmployeeById_notFound() throws Exception {
        Mockito.when(employeeRepository.findById(101L)).thenReturn(null);

        mockMvc.perform(MockMvcRequestBuilders
                        .delete("/api/employees/101L")
                        .contentType(MediaType.APPLICATION_JSON))
                .andExpect(status().isBadRequest());
    }
}