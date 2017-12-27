package de.hhu.stups.propra.ziegel24;

import org.springframework.data.repository.CrudRepository;

import de.hhu.stups.propra.ziegel24.model.Kunde;

public interface CustomerRepository extends CrudRepository<Kunde, Long> {

}
