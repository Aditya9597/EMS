package com.project.ems.service.impl;

import com.project.ems.model.Employee;
import com.project.ems.repository.EmployeeRepository;
import com.project.ems.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;

	public List<Employee> getAllEmployees() {
		return employeeRepository.findAll();
	}

	public Employee saveEmployee(Employee employee) {
		return employeeRepository.save(employee);
	}

	public Employee getEmployeeById(Long id) {
		return employeeRepository.findById(id).orElse(null);
	}

	public void deleteEmployee(Long id) {
		employeeRepository.deleteById(id);
	}

	public Employee updateEmployee(Long id, Employee updatedEmployee) {
		Optional<Employee> optional = employeeRepository.findById(id);
		if (optional.isPresent()) {
			Employee existing = optional.get();
			existing.setName(updatedEmployee.getName());
			existing.setEmail(updatedEmployee.getEmail());
			existing.setDepartment(updatedEmployee.getDepartment());
			existing.setSalary(updatedEmployee.getSalary());
			return employeeRepository.save(existing);
		}
		return null;
	}
}
