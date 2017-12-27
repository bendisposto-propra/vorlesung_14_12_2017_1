package de.hhu.stups.propra.ziegel24.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import lombok.Data;
import lombok.ToString;

@Data
@ToString(exclude = "bestellung")

@Entity
@Table(name = "positionen")
public class Position {

	@Id
	@GeneratedValue
	private Long id;

	private Long anzahl;

	@ManyToOne
	@JoinColumn(name = "bestellung")
	private Bestellung bestellung;

	@OneToOne
	@JoinColumn(name = "produkt")
	private Produkt produkt;

}
