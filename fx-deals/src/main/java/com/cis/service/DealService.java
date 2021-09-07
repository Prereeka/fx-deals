package com.cis.service;

import java.util.List;

import com.cis.model.Deal;
import com.cis.model.IsoCurrencyCode;

public interface DealService {

	List<IsoCurrencyCode> getIsoCurrencyCodes();

	void saveDeal(Deal dealDetails);

}
