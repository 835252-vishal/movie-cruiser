package com.cognizant.movie.dao;

import java.util.List;

import com.cognizant.movie.model.Movie;
import com.cognizant.movie.util.DateUtil;

public class MovieDaoCollectionImplTest {
    static MovieDao movieDao = new MovieDaoCollectionImpl();

    public static void main(String[] args) {
        testGetMovieListAdmin();
        testGetMovieListCustomer();
        testEditMovie();
        testGetMovieListAdmin();
        testGetMovie();
    }

    public static void testEditMovie() {
        System.out.println("Modify Movie\n");
        Movie movieList = new Movie(1, "Blood Diamond", 1299997654L, true,
                DateUtil.convertToDate("12/12/2022"), "Drama", false);
        movieDao.modifyMovieList(movieList);
    }

    public static void testGetMovieListAdmin() {
        System.out.println("Admin View\n");
        List<Movie> menu = movieDao.getMovieListAdmin();
        System.out.printf("%-15s%-25s%-20s%-15s%-20s%-20s%-15s\n", "MovieId", "Title", "BoxOffice",
                "Active", "Date Of Launch", "Genre", "Has Teaser");
        for (Movie movie : menu) {
            System.out.println(movie);// invoke toString
        }
    }

    public static void testGetMovieListCustomer() {
        System.out.println("Customer View\n");
        List<Movie> menu = movieDao.getMovieListCustomer();
        System.out.printf("%-15s%-25s%-20s%-15s%-20s%-20s%-15s\n", "MovieId", "Title", "BoxOffice",
                "Active", "Date Of Launch", "Genre", "Has Teaser");
        for (Movie movie : menu) {

            System.out.println(movie);
        }
    }

    public static void testGetMovie() {
        System.out.println("Get Movie\n");
        System.out.printf("%-15s%-25s%-20s%-15s%-20s%-20s%-15s\n", "MovieId", "Title", "BoxOffice",
                "Active", "Date Of Launch", "Genre", "Has Teaser");
        Movie movieList = movieDao.getMovieById(2);
        System.out.println(movieList);
    }
}
