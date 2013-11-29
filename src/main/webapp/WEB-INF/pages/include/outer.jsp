<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="outer">
	<div class="wrapper">
		<div class="units-row">
			<div class="unit-66">

				<h2>${param.title}</h2>

				<article id="blocks">
					<dl>
						<dt><img src="${param.thumb1}" alt="" width="170" height="80"></dt>
						<dd>${param.content1}</dd>
					</dl>
					<dl>
						<dt><img src="${param.thumb2}" alt="" width="170" height="80"></dt>
						<dd>${param.content2}</dd>
					</dl>
					<dl>
						<dt><img src="${param.thumb3}" alt="" width="170" height="80"></dt>
						<dd>${param.content3}</dd>
					</dl>
					<dl>
						<dt><img src="${param.thumb4}" alt="" width="170" height="80"></dt>
						<dd>${param.content4}</dd>
					</dl>
				</article>

			</div>
			<div class="unit-33">

				<div id="feedback">
					<h3>Feedback</h3>
					<form action="" class="forms">
						<label for="">
							Name
							<input type="text" class="width-100">
						</label>
						<label for="">
							Email
							<input type="email" class="width-100">
						</label>
						<p><textarea class="width-100" style="height: 80px;"></textarea></p>
						<input type="submit" value="Send" class="btn">
					</form>
					<small>${param.feedbackdesc}</small>
				</div><!-- /end #feedback -->

			</div>
		</div>
	</div>
</div>