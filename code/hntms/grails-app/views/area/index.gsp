
<%@ page import="com.xpi.settle.sys.Area" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'area.label', default: 'Area')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-area" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-area" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="code" title="${message(code: 'area.code.label', default: 'Code')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'area.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="spell" title="${message(code: 'area.spell.label', default: 'Spell')}" />
					
						<g:sortableColumn property="level" title="${message(code: 'area.level.label', default: 'Level')}" />
					
						<g:sortableColumn property="reserve1" title="${message(code: 'area.reserve1.label', default: 'Reserve1')}" />
					
						<g:sortableColumn property="reserve2" title="${message(code: 'area.reserve2.label', default: 'Reserve2')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${areaInstanceList}" status="i" var="areaInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${areaInstance.id}">${fieldValue(bean: areaInstance, field: "code")}</g:link></td>
					
						<td>${fieldValue(bean: areaInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: areaInstance, field: "spell")}</td>
					
						<td>${fieldValue(bean: areaInstance, field: "level")}</td>
					
						<td>${fieldValue(bean: areaInstance, field: "reserve1")}</td>
					
						<td>${fieldValue(bean: areaInstance, field: "reserve2")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${areaInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
