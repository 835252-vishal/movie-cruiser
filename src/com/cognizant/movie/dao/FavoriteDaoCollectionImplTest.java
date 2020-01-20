package com.cognizant.movie.dao;

import java.util.List;

import com.cognizant.movie.model.Movie;

public class FavoriteDaoCollectionImplTest {
    static FavoriteDao FavoriteDao = new FavoriteDaoCollectionImpl();

    public static void main(String[] args) {
        testAddFavorites();
        testGetAllFavorites();
        testRemoveFavorites();
        testGetAllFavorites();

    }

    public static void testAddFavorites() {
        System.out.println("Movies added into favorite\n");
        FavoriteDao.addFavoritesById(1, 2);
        FavoriteDao.addFavoritesById(1, 3);
    }

    public static void testGetAllFavorites() {
        try {

            System.out.println("Retrieving all the movies from Favorite\n");
            List<Movie> list = FavoriteDao.getAllFavorites(1).getFavoriteList();
            for (Movie movie : list) {
                System.out.println(movie);
            }
            System.out.println(
                    "Number of favorites : " + FavoriteDao.getAllFavorites(1).getNoOffFavorite());
        } catch (FavoriteEmptyException e) {
            System.err.println(e);
        }
    }

    public static void testRemoveFavorites() {
        System.out.println("Remove Favorite\n");
        FavoriteDao.removeFavoritesById(1, 3);
    }
}
