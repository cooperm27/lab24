package co.grandcircus.lab24.dao;
import java.util.List;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import co.grandcircus.lab24.entity.Party;
import co.grandcircus.lab24.entity.PartyOption;

public interface PartyOptionRepo extends JpaRepository<PartyOption, Long> {
	// JPQL
	@Query("from PartyOption where Name is not null")
	List<PartyOption> findAll();
	
	@Query("from PartyOption Where Votes is not 0")
	List<PartyOption> findAllWithVotes();
	
	@Query("update PartyOption set Votes = votes + 1")
	List<PartyOption> addVotes();
	
	// Named parameter "neededCapacity"
	//@Query("from Room where maxCapacity >= :neededCapacity order by name")
	//List<Party> findRoomsWithCapacityAtLeast(
	//		@Param("neededCapacity") int neededCapacity);

	//@Query("from Room where available = true and maxCapacity >= :neededCapacity"
	//		+ " order by name")
	//List<Party> findAvailableRoomsWithCapacityAtLeast(
		//	@Param("neededCapacity") int neededCapacity);

	// Derived query from method name
	//List<Party> findByAvailableIsTrue();

	//List<Party> findByMaxCapacityGreaterThanEqual(int neededCapacity);

	//List<Party> findByAvailableIsTrueAndMaxCapacityGreaterThanEqual(int neededCapacity);
}