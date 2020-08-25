package co.grandcircus.lab24.dao;
import java.util.List;


import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import co.grandcircus.lab24.entity.Party;

public interface PartyRepo extends JpaRepository<Party, Long> {
	// JPQL
	@Query("from Party")
	List<Party> findAll();

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