<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>	

<div class="container">
	<h1>Welcome ${name.toUpperCase()}</h1>
	
	<p>Create a new Todo list</p>
	
	<a href="list-todos">Manage</a> your todos
	
</div>

<%@ include file="common/footer.jspf" %>