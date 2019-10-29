package com.msita.hostel.bo;

import org.apache.tomcat.util.codec.binary.Base64;
public class Room {
	private int idRoom;
	private int idAddress;
	private String road;
	private int totalRoom;
	private float area;
	private int maxPeople;
	private float price;
	private byte[] image;
	private int idUser;
	private String stringImage;
	private String address;
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getIdRoom() {
		return idRoom;
	}
	public void setIdRoom(int idRoom) {
		this.idRoom = idRoom;
	}
	public int getIdAddress() {
		return idAddress;
	}
	public void setIdAddress(int address) {
		this.idAddress = address;
	}
	public String getRoad() {
		return road;
	}
	public void setRoad(String road) {
		this.road = road;
	}
	public int getTotalRoom() {
		return totalRoom;
	}
	public void setTotalRoom(int totalRoom) {
		this.totalRoom = totalRoom;
	}
	public float getArea() {
		return area;
	}
	public void setArea(float area) {
		this.area = area;
	}
	public byte[] getImage() {
		return image;
	}
	public void setImage(byte[] image) {
		this.image = image;
	}
	public int getMaxPeople() {
		return maxPeople;
	}
	public void setMaxPeople(int maxPeople) {
		this.maxPeople = maxPeople;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getIdUser() {
		return idUser;
	}
	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}
	public String getStringImage() {
		return stringImage;
	}
	public void setStringImage(String strImage) {
		stringImage = strImage;
	}
}
