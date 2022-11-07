package com.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.entities.Prime;

@Repository
public class PrimeDao {

	@Autowired
	HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	
	@Transactional
	public void savePrime(Prime prime) {
		this.hibernateTemplate.save(prime);
	}
	
	public Prime getPrime(int id) {
		Prime prime = this.hibernateTemplate.get(Prime.class, id);
		return prime;
	}
	
	public List<Prime> getAllPrime(){
		List<Prime> primeList = this.hibernateTemplate.loadAll(Prime.class);
		return primeList;
	}
	
	@Transactional
	public void deletePrime(int id) {
		Prime prime = this.hibernateTemplate.get(Prime.class, id);
		this.hibernateTemplate.delete(prime);
	}
	
}
