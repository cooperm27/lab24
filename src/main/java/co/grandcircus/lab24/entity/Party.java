package co.grandcircus.lab24.entity;

import java.time.LocalDate;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
// @Table(name="room") - actually "room" is default
public class Party {

	@Id @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	private String name;
	private LocalDate date;

	public Party() {
	}

	public Party(Long id, String name, LocalDate localDate) {
		super();
		this.id = id;
		this.name = name;
		this.date = localDate;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate localDate) {
		this.date = localDate;
	}


	@Override
	public String toString() {
		return "Party [id=" + id + ", name=" + name + ", localDate="
				+ date +"]";
	}
}
