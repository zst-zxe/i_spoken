package com.springmvc.controller;

import com.springmvc.pojo.Favorite;
import com.springmvc.pojo.Funds;
import com.springmvc.pojo.User;
import com.springmvc.service.FavoriteService;
import com.springmvc.service.FundsService;
import com.springmvc.service.UserService;
import com.springmvc.utils.DateUtil;
import com.springmvc.utils.MD5Util;
import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    UserService userService;
    @Autowired
    FundsService fundsService;
    @Autowired
    FavoriteService favoriteService;

    private static final Logger log = Logger.getLogger(UserController.class);

    @RequestMapping("/regist")
    public String register(Model model, User user, MultipartFile pic) throws IOException {
        System.out.println("0.0");
        Funds funds = new Funds();
        Favorite favorite = new Favorite();
        if(StringUtils.isNotBlank(pic.getOriginalFilename())) {
            String oldname = pic.getOriginalFilename();//获取图片全名
            String prename = "tx_" + UUID.randomUUID().toString();
            String sufname = oldname.substring(oldname.lastIndexOf("."));
            String newName = prename + sufname;
            File file = new File("D:\\Program Files\\idea_workspace\\i_spoken\\src\\main\\webapp\\pictrue\\" + newName);
            pic.transferTo(file);
            user.setPicturename(newName);
        }
        String pwd = MD5Util.MD5Encode(user.getUserpassword(),"utf-8");
        user.setUserpassword(pwd);
        user.setUsercreatetime(DateUtil.getSimpleDateFormat());
        user.setUserfunds(0.0);
        user.setIsmember(0);
        int result = userService.insertUser(user);

        funds.setUserid(user.getUserid());
        funds.setFundscreatetime(user.getUsercreatetime());
        funds.setFundsnum(0.0);
        int result1 = fundsService.insertFunds(funds);

        favorite.setUserid(user.getUserid());
        int result2 = favoriteService.insertFavorite(favorite);
        if(result>0 && result1 > 0 && result2 >0){
            log.info("success request: user/regist, user:" +user.toString());
            model.addAttribute("user",user);
            return "init/index_1";
        }
        else{
            log.info("fault requet:user/regist,user:"+user.toString());
            model.addAttribute("user",user);
            model.addAttribute("msg","注册失败，请重新填写信息");
            return "init/error";
        }

    }

    @RequestMapping("/jump")
    public String jumpTo(Model model){
        return "init/jump";
    }

    @ResponseBody
    @RequestMapping("/check")
    public User checkUser(@RequestBody User user, String id) {

        System.out.println("id="+id);
        String psd = MD5Util.MD5Encode(user.getUserpassword(), "utf-8");
        System.out.println(psd);
        User myuser = userService.selectUserByName(user.getUsername());
        if (id.equals("1")) {
            if (myuser == null) {
                log.info("regist check successful!");
                return null;
            } else {
                log.info("regist check successful:user="+myuser);
                return myuser;
            }

        }
        if (id.equals("2")) {
            if (myuser != null && psd.equals(myuser.getUserpassword())) {

                log.info("login check successful. user=["+myuser+"]");
                return myuser;
            } else {
                log.info("login check successful. user=["+myuser+"]");
                return null;
            }
        }
        log.info("error check!");
        return null;
    }

    @RequestMapping("/login")
    public String login(User user, Model model, HttpSession session){
        User myUser = null;
        myUser = userService.selectUserByName(user.getUsername());
        if(myUser!=null) {
            session.setAttribute("user",myUser);
            log.info("logging success user:" + myUser);
            model.addAttribute("user", myUser);
            return "init/index_1";
        }
        return "init/error";
    }

    @RequestMapping("/information")
    public String information(Model model,String name){

        User user = null;
        user = userService.selectUserByName(name);
        if(user!=null) {
            log.info("show my information:"+user);
            model.addAttribute("user", user);
            return "user/information";
        }
        return "init/error";
    }

    @RequestMapping("/update")
    public String updataUser(User user,Model model,String sex,String member,MultipartFile picture) throws IOException {

        System.out.println("updata user:" + user+sex+member+picture);
        if (StringUtils.isNotBlank(picture.getOriginalFilename())) {
           log.info("update my picture...");
            String oldname = picture.getOriginalFilename();
            String pre = "tx_" + UUID.randomUUID().toString();
            String suf = oldname.substring(oldname.lastIndexOf("."));
            String picturename = pre + suf;
            File file = new File("D:\\Program Files\\idea_workspace\\i_spoken\\src\\main\\webapp\\pictrue\\"+picturename);
            picture.transferTo(file);
            user.setPicturename(picturename);
        }
        if(sex.equals("男")){
            user.setUsersex(1);
        }
        if(sex.equals("女")){
            user.setUsersex(0);
        }
        if(member.equals("会员")){
            user.setIsmember(1);
        }
        if(member.equals("否")){
            user.setIsmember(0);
        }

        user.setUsercreatetime(DateUtil.getSimpleDateFormat());
       if(userService.updateUser(user)>0) {
           User myuser = userService.selectUserByName(user.getUsername());
           log.info("update success user:"+myuser);
           model.addAttribute("user",myuser);
           return "init/index_1";
       }
       else {
           log.info("error update");
           model.addAttribute("msg", "请求出错");
           return "init/error";
       }
    }

    @RequestMapping("/tobemember_1")
    public String tobemember_1(String userid){


        return null;
    }

}
