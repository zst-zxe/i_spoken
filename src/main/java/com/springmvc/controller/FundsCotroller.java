package com.springmvc.controller;

import com.springmvc.pojo.Funds;
import com.springmvc.pojo.User;
import com.springmvc.service.FundsService;
import com.springmvc.service.UserService;
import com.springmvc.utils.DateUtil;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/funds")
public class FundsCotroller {


    @Autowired
    UserService userService;
    @Autowired
    FundsService fundsService;

    private static final Logger log = Logger.getLogger(FundsCotroller.class);

    @RequestMapping("/funds")
    public String funds(String userid, Model model){

        log.info("run to funds userid=" + userid);
        List<Funds> list = fundsService.selectFundsByUserid(Integer.parseInt(userid));
        User user = userService.selectUserById(Integer.parseInt(userid));
        if(list!=null) {
            model.addAttribute("fundsList", list);
            model.addAttribute("user",user);
            return "user/funds";
        }
        return "init/error";
    }

    @RequestMapping("/deleteFunds")
    public String deleteFunds(Model model,String fundsid,String userid){

        int result = fundsService.deleteFundsById(Integer.parseInt(fundsid));
        List<Funds> list = fundsService.selectFundsByUserid(Integer.parseInt(userid));
        User user = userService.selectUserById(Integer.parseInt(userid));
        if(result>0 && list!=null){
            model.addAttribute("fundsList", list);
            model.addAttribute("user",user);
            return "user/funds";
        }
        else if(result>0 && list==null){
            model.addAttribute("fundsList", null);
            model.addAttribute("user",user);
            return "user/funds";
        }
        return "init/error";
    }

    @RequestMapping("/addFunds_1")
    public String addFunds_1(Model model,String userid){

        if(!StringUtils.isEmpty(userid)){
           User user =null;
           user = userService.selectUserById(Integer.parseInt(userid));
           if (user != null){
               model.addAttribute("user",user);
               return "user/pay";
           }

        }
        return "init/error";
    }

    @RequestMapping("/addFunds")
    public String addFunds(String username,String fundsnum,String time){

        if(!StringUtils.isEmpty(username) && !StringUtils.isEmpty(fundsnum)){
            double num = Integer.parseInt(fundsnum);
            if(num > 0) {
                User user = null;
                user = userService.selectUserByName(username);
                if(user!=null){

                    double number = user.getUserfunds()+num;
                    user.setUserfunds(number);
                    int result1 = userService.updateUser(user);
                    Funds funds = new Funds();
                    funds.setFundsnum(num);
                    funds.setFundscreatetime(DateUtil.getSimpleDateFormat());
                    funds.setUserid(user.getUserid());
                    int result = fundsService.insertFunds(funds);
                    if(result > 0 && result1 > 0) {
                        log.info("add chongzhi record funds:" + funds);
                        return "redirect:/funds/funds.action?userid="+user.getUserid();

                    }

                }

            }
        }
        return "init/error";
    }
}
