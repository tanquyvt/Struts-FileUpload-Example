<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Example</title>
</head>
<body>

	<h1>
		<bean:message key="label.common.title" />
	</h1>

	<html:messages id="err_name" property="common.file.err">
		<div style="color: red">
			<bean:write name="err_name" />
		</div>
	</html:messages>

	<html:messages id="err_name" property="common.file.err.ext">
		<div style="color: red">
			<bean:write name="err_name" />
		</div>
	</html:messages>

	<html:messages id="err_name" property="common.file.err.size">
		<div style="color: red">
			<bean:write name="err_name" />
		</div>
	</html:messages>

	<html:form action="/Upload" method="post" enctype="multipart/form-data">
		<br>

		<bean:message key="label.common.file.label" /> : 
		<html:file property="file" size="50" />

		<br>
		<br>

		<html:submit>
			<bean:message key="label.common.button.submit" />
		</html:submit>

	</html:form>

</body>
</html>