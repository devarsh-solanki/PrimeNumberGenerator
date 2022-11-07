package com.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.PrimeDao;
import com.entities.Prime;

@Service
public class PrimeService {

	@Autowired
	PrimeDao primeDao;

	public PrimeDao getPrimeDao() {
		return primeDao;
	}

	public void setPrimeDao(PrimeDao primeDao) {
		this.primeDao = primeDao;
	}
	
	public void save(Prime prime) {
		this.primeDao.savePrime(prime);
	}
	
	public Prime get(int id) {
		Prime prime = this.primeDao.getPrime(id);
		return prime;
	}
	
	public List<Prime> getAll(){
		List<Prime> primeList = this.primeDao.getAllPrime();
		return primeList;
	}
	
	public void delete(int id) {
		this.primeDao.deletePrime(id);
	}
	
}
