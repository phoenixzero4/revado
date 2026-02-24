	<%@ include file="common/header.jspf" %>
	<%@ include file="common/navigation.jspf" %>
	<div class="container">
			<h1>${ name.toUpperCase() } Todos</h1>
		
			<table class="table">
				<thead>
					<tr>
						
						<th>Description</th>
						<th>Target Date</th>
						<th>Complete</th>
					</tr>
				</thead>
			
				<tbody>	
					
							<tr>
								<c:forEach items="${todos}" var="todo">
							<td>${todo.description}</td>
							<td>${todo.targetDate}</td>
							<td>${todo.done.toString().toUpperCase()}</td>
						
								
						
							<td><a href="delete-todo?id=${ todo.id }" class="btn btn-warning">DELETE</a></td>
							<td><a href="update-todo?id=${ todo.id }" class="btn btn-success">UPDATE</a></td>
				
				</tr>
				</c:forEach>
				</tbody>
			</table>
		<a href="add-todo" class="btn btn-success">Add Task</a>
	</div>
	<%@ include file="common/header.jspf" %>