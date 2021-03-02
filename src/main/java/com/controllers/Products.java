package com.controllers;

import java.sql.Blob;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Products {
   @Id
   private int id;
   private String category;
   private String name;
   private Blob image;
   private int price;
   private int quantity;
   private String Base64;
   private String description;
   private String parent_id;
   private String child_id;
   public String getBase64() {
   return Base64;
}
public void setBase64(String base64) {
	Base64 = base64;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getCategory() {
	return category;
}
public void setCategory(String category) {
	this.category = category;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public Blob getImage() {
	return image;
}
public void setImage(Blob image) {
	this.image = image;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public String getDescription() {
	return description;
}
public void setDescription(String description) {
	this.description = description;
}
public String getParent_id() {
	return parent_id;
}
public void setParent_id(String parent_id) {
	this.parent_id = parent_id;
}
public String getChild_id() {
	return child_id;
}
public void setChild_id(String child_id) {
	this.child_id = child_id;
}
   
  
}
