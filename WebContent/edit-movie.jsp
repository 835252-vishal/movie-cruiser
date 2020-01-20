<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<title>Edit Movie</title>
<link rel="shortcut icon" href="images/logo.png" />
<link rel="stylesheet" type="text/css" href="styles/style.css" />
<script src="js/script.js"></script>


</head>
<body>
	<c:set var="movie" value="${movie}"></c:set>
	<header>
		<h2 class="head">
			<span>Movie Cruiser</span>
		</h2>
		<img class="logo" src="images\logo.png" alt="logos" width=50 height=50 />
		<nav>
			<a class="nav-movies" href="ShowMovieListAdmin">Movies</a>
		</nav>
	</header>
	<form name="movieForm" method="post" action="EditMovie"
		onsubmit="return validateMovieForm()">
		<input type="hidden" name="movieId" value="${movie.getMovieId()}" />
		<table cellspacing="7">
			<tr>
				<th colspan="4"><h1>Edit Movie</h1></th>
			</tr>
			<tr>
				<td colspan="4"><b><label for="name">Title</label></b></td>
			</tr>
			<tr>
				<td colspan="4"><input type="text" id="name"
					value="${movie.getTitle()}" name="title" size="75"
					autocomplete="off" /></td>
				<span id="movie-name"></span>
			</tr>
			<tr>
				<td colspan="4"></td>
			</tr>
			<tr>
				<td><b><label for="price">Gross ($)</label></b></td>
				<td><b><label for="active1">Active</label></b></td>
				<td><b><label for="date">Date of Launch</label></b></td>
				<td><b><label>Genre</label></b></td>
			</tr>
			<tr>
				<td><input id="price" type="text"
					value="${movie.getBoxOffice()}" name="boxOffice" autocomplete="off" /><span
					id="movie-price"></span></td>
				<td><c:choose>
						<c:when test="${movie.isActive()==true}">
							<input id="active1" type="radio" name="active" value="Yes"
								checked="checked" />Yes
					<input id="active1" type="radio" name="active" value="No" />No</c:when>
						<c:otherwise>
							<input id="active1" type="radio" name="active" value="Yes" />Yes
					<input id="active1" type="radio" name="active" value="No" checked />No</c:otherwise>
					</c:choose></td>
				<td><f:formatDate value="${movie.getDateOfLaunch()}"
						pattern="dd/MM/yyyy" var="dateOfLaunch" /> <input id="date"
					type="text" name="dateOfLaunch" size="15" value="${dateOfLaunch}" /><span
					id="dname"></span></td>
				<span id="movie-date"></span>
				<td><select id=gen name="genre">
						<option value="${movie.getGenre()}">${movie.getGenre()}</option>
						<option value="Science Fiction">Science Fiction</option>
						<option value="Superhero">Superhero</option>
						<option value="Romance">Romance</option>
						<option value="Comedy">Comedy</option>
						<option value="Adventure">Adventure</option>
						<option value="Thriller">Thriller</option>
				</select><span id="movie-genre"></span></td>
			</tr>
			<tr>
				<td colspan="4"></td>
			</tr>
			<tr>
				<td colspan="4"><c:choose>
						<c:when test="${movie.isHasTeaser()==true}">
							<input class="teaser" type="checkbox" value="Yes"
								name="hasTeaser" checked="checked" />
						</c:when>
						<c:otherwise>
							<input class="teaser" type="checkbox" value="No" name="hasTeaser" />
						</c:otherwise>
					</c:choose><label class="has"><b>Has Teaser</b></label></td>
			</tr>
			<tr>
				<td colspan="4"></td>
			</tr>
			<tr>
				<td colspan="2"><input class="submit" type="submit"
					name="submit" value="Save" class="submit" /></td>
			</tr>
		</table>
	</form>
	<footer>
		<p>Copyright&nbsp;&copy;&nbsp;2019</p>
	</footer>
</body>
</html>