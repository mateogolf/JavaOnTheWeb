package com.mattr.web.models;

public class Dog extends Animal implements Pet{
	public Dog(String name,String breed,int weight) {
		this.setName(name);
		this.setBreed(breed);
		this.setWeight(weight);
	}

	@Override
	public String showAffection() {
		if(this.getWeight() < 30) {
			return this.getName() + " jumped into you lap!";
		}else {
			return this.getName() + " curl up next to you!";
		}
	}

	
	
}
