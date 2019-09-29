package com.springmvc.mapper;

import com.springmvc.pojo.Funds;
import com.springmvc.pojo.FundsExample;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface FundsMapper {
    int countByExample(FundsExample example);

    int deleteByExample(FundsExample example);

    int deleteByPrimaryKey(Integer fundsid);

    int insert(Funds record);

    int insertSelective(Funds record);

    List<Funds> selectByExample(FundsExample example);

    Funds selectByPrimaryKey(Integer fundsid);

    int updateByExampleSelective(@Param("record") Funds record, @Param("example") FundsExample example);

    int updateByExample(@Param("record") Funds record, @Param("example") FundsExample example);

    int updateByPrimaryKeySelective(Funds record);

    int updateByPrimaryKey(Funds record);

    List<Funds> selectFundsByUserid(Integer userid);
}