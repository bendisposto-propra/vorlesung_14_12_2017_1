package de.hhu.stups.propra.ziegel24.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "kunden")
public class Kunde {

	@Id
	@GeneratedValue
	@Column(name = "kdnr")
	private Long kundenNummer;

	private String name;
	private String adresse;

	@OneToMany(mappedBy = "kunde")
	private List<Bestellung> bestellungen;

}
