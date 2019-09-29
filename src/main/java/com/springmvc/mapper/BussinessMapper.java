package com.springmvc.mapper;

import com.springmvc.pojo.Bussiness;
import com.springmvc.pojo.BussinessExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BussinessMapper {
    int countByExample(BussinessExample example);

    int deleteByExample(BussinessExample example);

    int deleteByPrimaryKey(Integer bussinessid);

    int insert(Bussiness record);

    int insertSelective(Bussiness record);

    List<Bussiness> selectByExample(BussinessExample example);

    Bussiness selectByPrimaryKey(Integer bussinessid);

    int updateByExampleSelective(@Param("record") Bussiness record, @Param("example") BussinessExample example);

    int updateByExample(@Param("record") Bussiness record, @Param("example") BussinessExample example);

    int updateByPrimaryKeySelective(Bussiness record);

    int updateByPrimaryKey(Bussiness record);
}