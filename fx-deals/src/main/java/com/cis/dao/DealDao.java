package com.cis.dao;

import java.util.List;

import com.cis.model.Deal;
import com.cis.model.IsoCurrencyCode;

public interface DealDao {

	List<IsoCurrencyCode> getIsoCurrencyCodes();

	void saveDeal(Deal dealDetails);

}
