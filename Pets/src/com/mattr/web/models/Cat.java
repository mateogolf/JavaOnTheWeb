package com.mattr.web.models;

public class Cat extends Animal implements Pet{
	public Cat(String name,String breed,int weight) {
		this.setName(name);
		this.setBreed(breed);
		this.setWeight(weight);
	}

	@Override
	public String showAffection() {
		return "Your " + this.getBreed() + " cat, looked at you with some affection...You think...";
	}
}
