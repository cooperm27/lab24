package co.grandcircus.lab24.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import java.util.List;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import co.grandcircus.lab24.entity.Rsvp;

public interface RsvpRepo extends JpaRepository<Rsvp, Long> {
	@Query("from Rsvp")
	List<Rsvp> findAll();
	
	@Query("from Rsvp where party_id = :id")
		List<Rsvp> findRsvps(
			@Param("id") long id);

}
