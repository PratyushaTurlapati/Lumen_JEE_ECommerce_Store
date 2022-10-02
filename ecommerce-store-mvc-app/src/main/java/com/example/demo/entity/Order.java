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
	private int orderId;
	private String user;
	private int productId;
	private int quantity;
}
