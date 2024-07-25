package com.MerryMeals.Merry.Meals;

import java.util.Arrays;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.MerryMeals.Merry.Meals.RoleRepository;
import com.MerryMeals.Merry.Meals.UserRepository;
import com.MerryMeals.Merry.Meals.User;

import java.util.HashSet;

@Service
@Transactional
public class UserService {
	@Autowired
	UserRepository repo;

	@Autowired
    private RoleRepository roleRepository;
	
	public void save(User user) {	
		
		String user_identity=user.getIdentity();
		System.out.println("User Identity is "+user_identity);
		
		if(user_identity.equals("3")) {
			user.setRoles(new HashSet<>(roleRepository.findBySpecificRoles("Caregiver")));
		}
		
		if(user_identity.equals("2")) {
			user.setRoles(new HashSet<>(roleRepository.findBySpecificRoles("Users")));
		}
		
	
		
		 
        repo.save(user);	
	}

	public List<User> listAll() {
		return (List<User>) repo.findAll();
	}

	public User get(Long id) {
		return repo.findById(id).get();
	}

	public void delete(Long id) {
		repo.deleteById(id);
	}
	
	public User getUserByName(String username) {
		return repo.findByUserName(username);
	}
	
	
}