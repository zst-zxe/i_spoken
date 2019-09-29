package com.springmvc.service.Impl;

import com.springmvc.mapper.FundsMapper;
import com.springmvc.pojo.Funds;
import com.springmvc.service.FundsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class FundsServiceImpl implements FundsService {

    @Autowired
    FundsMapper fundsMapper;
    @Override
    public int insertFunds(Funds funds) {
        return fundsMapper.insert(funds);
    }

    @Override
    public List<Funds> selectFundsByUserid(Integer userid) {
        return fundsMapper.selectFundsByUserid(userid);
    }

    @Override
    public int deleteFundsById(Integer id) {
        return fundsMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int updateFundsByUserid(Funds funds) {
        return fundsMapper.updateByPrimaryKeySelective(funds);
    }

}
