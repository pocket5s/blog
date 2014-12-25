<%include "header.gsp"%>

	<%include "menu.gsp"%>

	<div class="page-header">
		<h1>${content.title}</h1>
	</div>

	<p><em>${content.date.format("dd MMMM yyyy")}</em></p>
	<p>
		<em>Tags:</em>
		<%content.tags.each {tag->%>
			<a href="/tags/${tag.trim().replace(' ', '-')}.html">${tag}</a>
		<%}%>
	</p>
	<p>${content.body}</p>

	<hr />
	<div id="disqus_thread"></div>
	<script type="text/javascript">
	/* * * CONFIGURATION VARIABLES: EDIT BEFORE PASTING INTO YOUR WEBPAGE * * */
	var disqus_shortname = 'robertmcintosh'; // required: replace example with your forum shortname

	/* * * DON'T EDIT BELOW THIS LINE * * */
	(function() {
		var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
		dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
		(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
	})();
	</script>
	<noscript>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
	

<%include "footer.gsp"%>
