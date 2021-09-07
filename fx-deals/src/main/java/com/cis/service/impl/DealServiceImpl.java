package com.cis.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cis.dao.DealDao;
import com.cis.model.Deal;
import com.cis.model.IsoCurrencyCode;
import com.cis.service.DealService;

@Service
public class DealServiceImpl implements DealService {

	@Autowired
	private DealDao dealDao;
	
	@Override
	@Transactional
	public List<IsoCurrencyCode> getIsoCurrencyCodes() {
		List<IsoCurrencyCode> codeList = dealDao.getIsoCurrencyCodes();
		return codeList.stream().map(p->{
			IsoCurrencyCode isc = new IsoCurrencyCode(p.getId(),
					p.getCountryName(),p.getCurrencyCode(),null);
			return isc;
		}).collect(Collectors.toList());
	}

	@Override
	@Transactional
	public void saveDeal(Deal dealDetails) {
		dealDao.saveDeal(dealDetails);
	}

}
