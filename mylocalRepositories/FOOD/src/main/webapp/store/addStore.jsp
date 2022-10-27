<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.store.model.*"%>

<%
StoreVO storeVO = (StoreVO) request.getAttribute("storeVO");
%>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>���a��Ʒs�W - addStore.jsp</title>

<style>
table#table-1 {
	background-color: lightyellow;
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
	word-break: keep-all;
	word-wrap: break-word;
	border: 0px solid #CCCCFF;
}

th, td {
	padding: 1px;
}
</style>

</head>
<body bgcolor='white'>

	<table id="table-1">
		<tr>
			<td>
				<h3>���a��Ʒs�W</h3>
			</td>
			<td>
				<h4>
					<a href="select_page.jsp">�^����</a>
				</h4>
			</td>
		</tr>
	</table>

	<h3>��Ʒs�W:</h3>

	<%-- ���~��C --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">�Эץ��H�U���~:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<FORM METHOD="post" ACTION="store.do" name="form1">
		<table>
			<tr>
				<td>�|���b��:</td>
				<td><input type="TEXT" name="storeAcc" size="55"
					placeholder="�п�J�b��"
					value="<%=(storeVO == null) ? "" : storeVO.getStoreAcc()%>" /></td>
			</tr>
			<tr>
				<td>�|���K�X:</td>
				<td><input type="password" name="storePwd" size="55"
					placeholder="�ܤ֤@�ӼƦr,�@�Ӥp�g�^��r��,�@�Ӥj�g�^��r��,���� 6 ~ 16�r��"
					value="<%=(storeVO == null) ? "" : storeVO.getStorePwd()%>" /></td>
			</tr>
			<tr>
				<td>�|���W��:</td>
				<td><input type="TEXT" name="storeName" size="55"
					placeholder="�п�J�|���W��"
					value="<%=(storeVO == null) ? "" : storeVO.getStoreName()%>" /></td>
			</tr>
			<tr>
				<td>�|���νs:</td>
				<td><input type="TEXT" name="storeGui" size="55"
					placeholder="�п�J�νs"
					value="<%=(storeVO == null) ? "" : storeVO.getStoreGui()%>" /></td>
			</tr>
			<tr>
				<td>�t�d�H:</td>
				<td><input type="TEXT" name="storeRep" size="55"
					placeholder="�п�J�t�d�H"
					value="<%=(storeVO == null) ? "" : storeVO.getStoreRep()%>" /></td>
			</tr>
			<tr>
				<td>���a�q��:</td>
				<td><input type="TEXT" name="storeTel" size="55"
					placeholder="�п�J�q��"
					value="<%=(storeVO == null) ? "" : storeVO.getStoreTel()%>" /></td>
			</tr>
			<tr>
				<td>���a�ǯu:</td>
				<td><input type="TEXT" name="storeFax" size="55"
					placeholder="�п�J�ǯu���X"
					value="<%=(storeVO == null) ? "" : storeVO.getStoreFax()%>" /></td>
			</tr>
			<tr>
				<td>���a�a�}:</td>
				<td><div id="twzipcode"></div>
					<input type="TEXT" name="storeAd" size="10" placeholder="�п�J���a�a�}"
					value="<%=(storeVO == null) ? "" : storeVO.getStoreAd()%>" /></td>

			</tr>
			<tr>
				<td>�p���H:</td>
				<td><input type="TEXT" name="storeCon" size="55"
					placeholder="�п�J�p���H"
					value="<%=(storeVO == null) ? "" : storeVO.getStoreCon()%>" /></td>
			</tr>
			<tr>
				<td>�p���H�q��:</td>
				<td><input type="TEXT" name="storeConTel" size="55"
					placeholder="�п�J�p���H�q��"
					value="<%=(storeVO == null) ? "" : storeVO.getStoreConTel()%>" /></td>
			</tr>
			<tr>
				<td>�p���H�a�}:</td>
				<td><input type="TEXT" name="storeConAd" size="55"
					placeholder="�п�J�p���H�a�}"
					value="<%=(storeVO == null) ? "" : storeVO.getStoreConAd()%>" /></td>
			</tr>
			<tr>
				<td>���a�H�c:</td>
				<td><input type="TEXT" name="storeEmail" size="55"
					placeholder="�п�J�H�c"
					value="<%=(storeVO == null) ? "" : storeVO.getStoreEmail()%>" /></td>
			</tr>

		</table>
		<br> <input type="hidden" name="storeId" value="1"> <input
			type="hidden" name="action" value="insert"> <input
			type="submit" value="�e�X�s�W">
	</FORM>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery-twzipcode@1.7.14/jquery.twzipcode.min.js"></script>
	<script>
		$("#twzipcode").twzipcode();
		$("input[name='zipcode']").hide();
	</script>
</body>