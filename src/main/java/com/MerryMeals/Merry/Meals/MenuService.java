package com.MerryMeals.Merry.Meals;
import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.MerryMeals.Merry.Meals.Menu;




@Service
@Transactional
public class MenuService {
	@Autowired
	MenuRepository repo;

	@Autowired
    private MenuRepository menuRepository;

	public Menu save(Menu menu) {		
        return repo.save(menu);	
	}

	public List<Menu> listAll() {
		return (List<Menu>) repo.findAll();
	}

}
