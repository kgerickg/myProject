<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.store.model.*"%>

<%
  StoreVO storeVO = (StoreVO) request.getAttribute("storeVO"); 
%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
<title>�|����ƭק�</title>

<style>
  table#table-1 {
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

<style>
  table {
	width: 450px;
	background-color: white;
	margin-top: 1px;
	margin-bottom: 1px;
  }
  table, th, td {
    border: 0px solid #CCCCFF;
  }
  th, td {
    padding: 1px;
  }
</style>

</head>
<body bgcolor='white'>

<table id="table-1">
	<tr><td>
		 <h3>�|����ƭק�</h3>
		 <h4><a href="select_page.jsp">�^����</a></h4>
	</td></tr>
</table>

<h3>��ƭק�:</h3>

<%-- ���~��C --%>
<c:if test="${not empty errorMsgs}">
	<font style="color:red">�Эץ��H�U���~:</font>
	<ul>
		<c:forEach var="message" items="${errorMsgs}">
			<li style="color:red">${message}</li>
		</c:forEach>
	</ul>
</c:if>

<FORM METHOD="post" ACTION="store.do" name="form1">
<table>
	<tr>
		<td>���u�s��:<font color=red><b>*</b></font></td>
		<td><%=storeVO.getStoreId()%></td>
	</tr>
	<tr>
		<td>�|���b��:</td>
		<td><input type="TEXT" name="storeAcc" size="45" 
			 value="<%= (storeVO==null)? "aaa" : storeVO.getStoreAcc()%>" /></td>
	</tr>
	<tr>
		<td>�|���K�X:</td>
		<td><input type="TEXT" name="storePwd" size="45"
			 value="<%= (storeVO==null)? "asdfg1234" : storeVO.getStorePwd()%>" /></td>
	</tr>
	<tr>
		<td>�|���W��:</td>
		<td><input type="TEXT" name="storeName" size="45"
			 value="<%= (storeVO==null)? "aaa" : storeVO.getStoreName()%>" /></td>
	</tr>
	<tr>
		<td>�|���νs:</td>
		<td><input type="TEXT" name="storeGui" size="45"
			 value="<%= (storeVO==null)? "12345678" : storeVO.getStoreGui()%>" /></td>
	</tr>
	<tr>
		<td>�t�d�H:</td>
		<td><input type="TEXT" name="storeRep" size="45"
			 value="<%= (storeVO==null)? "aaa" : storeVO.getStoreRep()%>" /></td>
	</tr>
	<tr>
		<td>���a�q��:</td>
		<td><input type="TEXT" name="storeTel" size="45"
			 value="<%= (storeVO==null)? "25252525" : storeVO.getStoreTel()%>" /></td>
	</tr>
	<tr>
		<td>���a�ǯu:</td>
		<td><input type="TEXT" name="storeFax" size="45"
			 value="<%= (storeVO==null)? "25252525" : storeVO.getStoreFax()%>" /></td>
	</tr>
	<tr>
		<td>���a�a�}:</td>
		<td><input type="TEXT" name="storeAd" size="45"
			 value="<%= (storeVO==null)? "���O���c��xxx��" : storeVO.getStoreAd()%>" /></td>
	</tr>
	<tr>
		<td>�p���H:</td>
		<td><input type="TEXT" name="storeCon" size="45"
			 value="<%= (storeVO==null)? "bbb" : storeVO.getStoreCon()%>" /></td>
	</tr>
	<tr>
		<td>�p���H�q��:</td>
		<td><input type="TEXT" name="storeConTel" size="45"
			 value="<%= (storeVO==null)? "25252525" : storeVO.getStoreConTel()%>" /></td>
	</tr>
	<tr>
		<td>�p���H�a�}:</td>
		<td><input type="TEXT" name="storeConAd" size="45"
			 value="<%= (storeVO==null)? "25252525" : storeVO.getStoreConAd()%>" /></td>
	</tr>
	<tr>
		<td>���a�H�c:</td>
		<td><input type="TEXT" name="storeEmail" size="45"
			 value="<%= (storeVO==null)? "aaa@yahoo.com.tw" : storeVO.getStoreEmail()%>" /></td>
	</tr>

	

</table>
<br>
<input type="hidden" name="action" value="update">
<input type="hidden" name="storeId" value="<%=storeVO.getStoreId()%>">
<input type="submit" value="�e�X�ק�"></FORM>
</body>