
	<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
		<h1>Enter Task</h1>

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

			<input type="submit" class="btn btn-success" />
		</form:form>

		</div>
			<%@ include file="common/footer.jspf" %>
		<script type="text/javascript">
		$('#targetDate').datepicker({
		    format: 'dd-MM-yyyy'
		});
		</script>	