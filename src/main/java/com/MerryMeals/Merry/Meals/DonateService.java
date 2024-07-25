package com.MerryMeals.Merry.Meals;
import java.util.HashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.MerryMeals.Merry.Meals.Donate;




@Service
@Transactional
public class DonateService {
	@Autowired
	DonateRepository repo;

	@Autowired
    private DonateRepository donateRepository;

	public Donate save(Donate donate) {		
        return repo.save(donate);	
	}

	public List<Donate> listAll() {
		return (List<Donate>) repo.findAll();
	}

}
