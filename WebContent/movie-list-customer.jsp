<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<title>Movie List Customer</title>
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
	<table cellspacing="7" cellpadding="5">
		<col width="250">
		<tr>
			<th><h1>Movies</h1></th>
		</tr>
		<tr>
			<td colspan="5"><c:if test="${addFavoriteStatus==true}">
					<h2 align="center">Movie added to favorite successfully</h2>
				</c:if></td>

		</tr>
		<tr>
			<th align="center" class="name"><label>Title</label></th>
			<th align="center" class="box-office"><label>Box Office</label></th>
			<th align="center"><label>Genre</label></th>
			<th align="center"><label>Has Teaser</label></th>
			<th align="center">Action</th>
		</tr>
		<c:forEach items="${movie}" var="movie">
			<tr>
				<td align="center" class="name">${movie.getTitle()}</td>
				<td align="center" class="box-office"><f:formatNumber
						type="currency" value="${movie.getBoxOffice()}"
						maxFractionDigits="0" /></td>
				<td align="center">${movie.getGenre()}</td>
				<td align="center"><c:choose>
						<c:when test="${movie.isHasTeaser()==true}">Yes</c:when>
						<c:otherwise>No</c:otherwise>
					</c:choose></td>
				<td align="center"><a
					href="AddToFavorite?movieId=${movie.getMovieId()}" id="edit">Add
						to Favorite</a></td>
			</tr>
		</c:forEach>
	</table>
	<footer>
		<p>Copyright&nbsp;&copy;&nbsp;2019</p>
	</footer>
</body>
</html>
