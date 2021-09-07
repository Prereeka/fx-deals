package com.cis.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cis.dao.DealDao;
import com.cis.model.Deal;
import com.cis.model.IsoCurrencyCode;

@Repository
public class DealDaoImpl implements DealDao{

	@Autowired
    private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<IsoCurrencyCode> getIsoCurrencyCodes() {
		return sessionFactory.getCurrentSession()
                .createQuery("from IsoCurrencyCode")
                .getResultList();
	}

	@Override
	public void saveDeal(Deal dealDetails) {
		try {
			sessionFactory.getCurrentSession().saveOrUpdate(dealDetails);
		} catch(Exception e) {
			
		}
		
	}

}
