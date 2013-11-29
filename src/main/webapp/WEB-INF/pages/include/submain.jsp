<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="main">
	<div class="wrapper">
		<div class="units-row">
			<div class="unit-33">

				<div id="banner">
					<img src="${param.bannersrc}" title="${param.bannerdesc}" alt="${param.bannerdesc}" width="500" height="200">
				</div>

			</div>
			<div class="unit-66">
				<h3>${param.bannerheader}</h3>

				<article id="news">
					<small class="color-gray">${param.bannerdate1}</small>
					<p>${param.bannercontent1}</p>

					<small class="color-gray">${param.bannerdate2}</small>
					<p>${param.bannercontent2}</p>
				</article>
			</div>
		</div>
	</div>
</div>