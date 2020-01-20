package com.cognizant.movie.model;

import java.util.List;

public class Favorite {
    private List<Movie> favoriteList;
    private int noOffFavorite;

    public Favorite() {
        // TODO Auto-generated constructor stub
    }

    public Favorite(List<Movie> favoriteList, int noOffFavorite) {
        super();
        this.favoriteList = favoriteList;
        this.noOffFavorite = noOffFavorite;
    }

    public List<Movie> getFavoriteList() {
        return favoriteList;
    }

    public void setFavoriteList(List<Movie> favoriteList) {
        this.favoriteList = favoriteList;
    }

    public int getNoOffFavorite() {
        return noOffFavorite;
    }

    public void setNoOffFavorite(int noOffFavorite) {
        this.noOffFavorite = noOffFavorite;
    }

    @Override
    public String toString() {
        return "Favorite [favoriteList=" + favoriteList + ", noOffFavorite=" + noOffFavorite + "]";
    }

}
