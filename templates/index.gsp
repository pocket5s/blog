<%include "header.gsp"%>

	<%include "menu.gsp"%>

	<div class="page-header">
		<h1>My Blog</h1>
	</div>
	<%published_posts.each {post ->%>
		<a href="${post.uri}"><h1>${post.title}</h1></a>
		<p>${post.date.format("dd MMMM yyyy")}</p>
		<p>
		  <em>Tags:</em>
		  <%post.tags.each {tag->%>
			<a href="/tags/${tag.trim().replace(' ', '-')}.html">${tag}</a>
			<%}%>
		</p>
		<p>${post.body}</p>
		<p><a href="${post.uri}#disqus_thread">Comments</a></p>
  	<%}%>

	<hr />

	<p>Older posts are available in the <a href="/${config.archive_file}">archive</a>.</p>

<%include "footer.gsp"%>
