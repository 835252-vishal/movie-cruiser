<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<title>Favorites</title>
<link rel="shortcut icon" href="images/logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
	<header>
		<h2 class="head">Movie Cruiser</h2>
		<img class="logo" src="images\logo.png" alt="logos" width=50 height=50 />
		<nav>
			<a class="nav-movies" href="ShowMovieListCustomer">Movies</a><a
				class="nav-favorite" href="ShowFavorite">Favorites</a>
		</nav>
	</header>
	<c:set var="favorite" value="${favorite}"></c:set>
	<table cellspacing="7" cellpadding="5">
		<col width="250">
		<tr>
			<th><h1>Favorites</h1></th>
		</tr>
		<tr>
			<td colspan="4"><c:if test="${removeFavoriteStatus==true}">
					<h2 align="center">Movie removed from Favorite successfully</h2>
				</c:if></td>
		</tr>
		<tr>
			<th align="center" class="name"><label>Title</label></th>
			<th align="center" class="box-office"><label>Box-Office</label></th>
			<th align="center"><label>Genre</label></th>
		</tr>
		<c:forEach items="${movieList}" var="movie">
			<tr>
				<td align="center" class="name">${movie.getTitle()}</td>
				<td align="center" class="box-office"><f:formatNumber
						type="currency" value="${movie.getBoxOffice()}"
						maxFractionDigits="0" /></td>
				<td>${movie.getGenre()}</td>
				<td align="center"><a
					href="RemoveFavorite?movieId=${movie.getMovieId()}">Delete</a></td>
			</tr>
		</c:forEach>
		<tr>
			<td></td>
		</tr>
		<tr>
			<td align="left"><b>No. of Favorites: </b><b>${favorite.getNoOffFavorite()}</b></td>
		</tr>
	</table>
	<footer>
		<p>Copyright&nbsp;&copy;&nbsp;2019</p>
	</footer>
</body>
</html>