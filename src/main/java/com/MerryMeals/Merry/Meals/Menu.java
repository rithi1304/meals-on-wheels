package com.MerryMeals.Merry.Meals;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.Date;

@Entity
@Table(name="Menu")
public class Menu {
    @Id
    @Column(name="id")
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="user_id")
    private User user;

    @Column(name="Food_Name")
    private String Food;
    
    @Column(name="Adress")
    private String adress;

    @Column(name="OderDateTime")
    private Date oder_date_time;
    
    @Column(name="food_type")
    private String food_type;
    
   public String getFood_type() {
		return food_type;
	}

	public void setFood_type(String food_type) {
		this.food_type = food_type;
	}

public Menu(){
	   
   }

public Long getId() {
	return id;
}

public void setId(Long id) {
	this.id = id;
}

public User getUser() {
	return user;
}

public void setUser(User user) {
	this.user = user;
}

public String getFood() {
	return Food;
}

public void setFood(String food) {
	Food = food;
}

public String getAdress() {
	return adress;
}

public void setAdress(String adress) {
	this.adress = adress;
}

public Date getOder_date_time() {
	return oder_date_time;
}

public void setOder_date_time(Date oder_date_time) {
	this.oder_date_time = oder_date_time;
}
    
}