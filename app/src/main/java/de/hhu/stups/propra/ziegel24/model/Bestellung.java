package de.hhu.stups.propra.ziegel24.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;
import lombok.ToString;

@Data
@ToString(exclude = "kunde")

@Entity
@Table(name = "bestellungen")

public class Bestellung {

	@Id
	@GeneratedValue
	private Long bestnr;

	@Temporal(TemporalType.DATE)
	private Date datum;

	@ManyToOne
	@JoinColumn(name = "kunde")
	private Kunde kunde;

	@OneToMany(mappedBy = "bestellung")
	private List<Position> positionen;

}
