package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "notes")
public class Note {
	@Id
	private int id;
	private String title;
	@Column(length = 1500)
	private String content;
	private Date addedDate;

	public Note(String title, String content, Date addedDate) {
		this.addedDate = addedDate;
		this.content = content;
		this.title = title;
		this.id = new Random().nextInt(1000);
	}

}
