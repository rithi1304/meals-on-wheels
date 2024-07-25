package com.MerryMeals.Merry.Meals;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.MerryMeals.Merry.Meals.Menu;

import java.util.List;
import java.util.Set;


@Repository
public interface MenuRepository extends JpaRepository<Menu, Long> {

	//can develop - Custom query & custom method 
	 User findByUserName(String name);
}
