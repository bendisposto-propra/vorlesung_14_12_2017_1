package de.hhu.stups.propra.ziegel24.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "produkte")
public class Produkt {

	@Id
	@GeneratedValue
	private Long produktnr;

	private String bezeichnung;
	private String beschreibung;

	@Column(name = "bestand")
	private long inventar;

	private double preis;

}
