<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'role.label', default: 'Role')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="create-role" class="top10 content scaffold-create" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${roleInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${roleInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:roleInstance, action:'save']" 
                class='form-horizontal'>
                <g:render template="form"/>
				<div class="form-group">
                    <div class='col-xs-2 col-xs-offset-4'>
					<g:submitButton name="create" class="btn btn-primary"
                        value="${message(code: 'default.button.create.label')}" />
                    </div>
                <div class='col-xs-2'>
					<g:submitButton type='reset' name="reset" 
                        class="btn btn-primary" 
                        value="${message(code: 'default.button.reset.label')}" />
                </div>
				</div>
			</g:form>
		</div>
	</body>
</html>
