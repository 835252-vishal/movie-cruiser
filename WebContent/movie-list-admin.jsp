<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<title>Movie List Admin</title>
<link rel="shortcut icon" href="images/logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
	<header>
		<h2 class="head">Movie Cruiser</h2>
		<img class="logo" src="images\logo.png" alt="logos" width=50 height=50 />
		<nav>
			<a class="nav-movies" href="ShowMovieListAdmin">Movies</a>
		</nav>
	</header>
	<table cellspacing="5" cellpadding="5">
		<col width="250">
		<tr>
			<th><h1>Movies</h1></th>
		</tr>
		<tr>
			<th class="name"><label>Title</label></th>
			<th class="box-office"><label>Box Office</label></th>
			<th align="center"><label>Active</label></th>
			<th align="center"><label>Date of Launch</label></th>
			<th align="center"><label>Genre</label></th>
			<th align="center"><label>Has Teaser</label></th>
			<th align="center">Action</th>
		</tr>
		<c:forEach items="${movie}" var="movie">
			<tr>
				<td align="center" class="avatar">${movie.getTitle()}</td>
				<td align="center" class="price1"><f:formatNumber
						type="currency" value="${movie.getBoxOffice()}"
						maxFractionDigits="0" /></td>
				<td align="center"><c:choose>
						<c:when test="${movie.isActive()==true}">Yes</c:when>
						<c:otherwise>No</c:otherwise>
					</c:choose></td>
				<td align="center"><f:formatDate
						value="${movie.getDateOfLaunch()}" pattern="dd/MM/yyyy"></f:formatDate></td>
				<td align="center">${movie.getGenre()}</td>
				<td align="center"><c:choose>
						<c:when test="${movie.isHasTeaser()==true}">Yes</c:when>
						<c:otherwise>No</c:otherwise>
					</c:choose></td>
				<td align="center"><a
					href="ShowEditMovie?movieId=${movie.getMovieId()}">Edit</a></td>
			</tr>
		</c:forEach>
	</table>
	<footer>
		<p>Copyright&nbsp;&copy;&nbsp;2019</p>
	</footer>
</body>
</html>
