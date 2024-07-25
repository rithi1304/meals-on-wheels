package com.MerryMeals.Merry.Meals;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Table(name="Donate")
public class Donate {
    @Id
    @Column(name="id")
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;


    @Column(name="Name")
    private String Name;
    
    @Column(name="Donate_Price")
    private String donateprice;

    @Column(name="DonateDateTime")
    private Date donate_date_time;

    
   

	public Donate() {
    	
    }

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getDonateprice() {
		return donateprice;
	}

	public void setDonateprice(String donateprice) {
		this.donateprice = donateprice;
	}

	public Date getDonate_date_time() {
		return donate_date_time;
	}
	
	

	public void setDonate_date_time(Date donate_date_time) {
		this.donate_date_time = donate_date_time;
	}
    
    
}