package com.example.demo.entity;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Id;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;

@FieldDefaults(level =AccessLevel.PRIVATE)
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Order {
	private int id;
	private String customerName;
	private int productId;
	private LocalDate date;
	private int quantity;
	public int getOrderId() {
		// TODO Auto-generated method stub
		return 0;
	}
}
