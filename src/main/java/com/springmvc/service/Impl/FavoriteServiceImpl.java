package com.springmvc.service.Impl;

import com.springmvc.mapper.FavoriteMapper;
import com.springmvc.pojo.Favorite;
import com.springmvc.service.FavoriteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FavoriteServiceImpl implements FavoriteService {

    @Autowired
    FavoriteMapper favoriteMapper;
    @Override
    public int insertFavorite(Favorite favorite) {
        return favoriteMapper.insert(favorite);
    }
}
