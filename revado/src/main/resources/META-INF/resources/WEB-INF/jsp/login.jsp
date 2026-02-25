<%@ include file="common/header.jspf" %>
		<title>Welcome Page</title>		
	</head>
	<body>
<%@ include file="common/navigation.jspf" %>	
	

<div class="container">

<h1 style="color:red">Welcome Page</h1>

	<h1>Welcome ${name.toUpperCase()}</h1>	
	
	<a href="listTodos">Manage</a> Your Todo List
	</br>
	<a href="createNewList">Create</a> New Todo List
	
	
</div>

<%@ include file="common/footer.jspf" %>