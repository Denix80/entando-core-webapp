<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/aps-core" prefix="wp" %>
<%@ taglib uri="/apsadmin-form" prefix="wpsf" %>

<h1><a href="<s:url action="viewTree" namespace="/do/Category" />" title="<s:text name="note.goToSomewhere" />: <s:text name="title.categoryManagement" />"><s:text name="title.categoryManagement" /></a></h1>

<div id="main">

<%-- CATEGORIA padre = <s:property value="getCategory(selectedNode).parent.code" />  --%>

<s:form action="delete">
	<p class="noscreen">
		<wpsf:hidden name="selectedNode" />
	</p>
	<p>
		<s:text name="note.deleteCategory.areYouSure" />&#32;<em class="important"><s:set var="categoryToDelete" value="getCategory(selectedNode)" /><s:property value="getTitle(#categoryToDelete.code, #categoryToDelete.titles)" /></em>?
		<wpsf:submit useTabindexAutoIncrement="true" value="%{getText('label.remove')}" cssClass="button" />
	</p>
</s:form>

</div>