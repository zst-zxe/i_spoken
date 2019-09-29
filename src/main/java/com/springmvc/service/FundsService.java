package com.springmvc.service;

import com.springmvc.pojo.Funds;

import java.util.List;
import java.util.Map;

public interface FundsService {

    int insertFunds(Funds funds);
    List<Funds> selectFundsByUserid(Integer userid);
    int deleteFundsById(Integer id);
    int updateFundsByUserid(Funds funds);

}
