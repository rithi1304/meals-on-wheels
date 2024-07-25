package com.MerryMeals.Merry.Meals;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.MerryMeals.Merry.Meals.User;



@Repository
public interface UserRepository extends JpaRepository<User, Long> {
	
    User findByUserName(String name);
}
