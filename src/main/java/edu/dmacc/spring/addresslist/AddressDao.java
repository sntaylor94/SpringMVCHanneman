package edu.dmacc.spring.addresslist;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import edu.dmacc.spring.addresslist.Address;

public class AddressDao {
	
	EntityManagerFactory emfactory = Persistence.createEntityManagerFactory("SpringMVCHanneman");

	public void insertAddress(Address addressToAdd) {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		em.persist(addressToAdd);
		em.getTransaction().commit();
		em.close();
	}

	public List<Address> getAllAddresses() {
		EntityManager em = emfactory.createEntityManager();
		em.getTransaction().begin();
		String q = "select a from Address a";
		TypedQuery<Address> typedQuery = em.createQuery(q,Address.class);
		List<Address> all = typedQuery.getResultList();
		return all;
	}

}
