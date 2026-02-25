
<%@ include file="common/header.jspf"%>

<title>Add Task</title>
</head>
<body>
	<%@ include file="common/navigation.jspf"%>

	<div class="container">
		<h1 style="color: purple">Add Task Page</h1>

		<h2>Enter Task</h2>

		<form:form method="post" modelAttribute="todo">

			<fieldset class="mb-3">
				<form:label path="description">Description</form:label>
				<form:input type="text" path="description" required="required" />
				<form:errors path="description" style="color:red"
					cssErrorClass="text-error" />
			</fieldset>

			<fieldset class="mb-3">
				<form:label path="targetDate">Target Date</form:label>
				<form:input type="text" path="targetDate" required="required" />
				<form:errors path="targetDate" style="color:red"
					cssErrorClass="text-error" />
			</fieldset>
			
			<fieldset class="mb-3">
				<form:label path="done">Completed</form:label>
				<form:input type="text" path="done" required="required" />
				<form:errors path="done" style="color:red"
					cssErrorClass="text-error" />
			</fieldset>

			<input type="submit" class="btn btn-success" />
		</form:form>

	</div>
	<%@ include file="common/footer.jspf"%>
	<script type="text/javascript">
		$('#targetDate').datepicker({
			format : 'dd-MM-yyyy'
		});
	</script>