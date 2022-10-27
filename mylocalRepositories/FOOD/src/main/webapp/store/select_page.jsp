<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>����</title>

<style>
table#table-1 {
	width: 450px;
	background-color: lightyellow;
	margin-top: 5px;
	margin-bottom: 10px;
	border: 3px ridge Gray;
	height: 80px;
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
</head>
<body bgcolor='white'>

	<table id="table-1">
		<tr>
			<td><h3>����</h3></td>
		</tr>
	</table>

	<h3>���a�j�M:</h3>

	<%-- ���~��C --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">�Эץ��H�U���~:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>

	<ul>
		<li><a href='listAllStore.jsp'>���a�`��</a><br> <br></li>


		<li>
			<FORM METHOD="post" ACTION="store.do">
				<b>��J���a�s�� :</b> <input type="text" name="storeId"
					placeholder="�п�J���a�s��"> <input type="hidden" name="action"
					value="getOne_For_Display"> <input type="submit" value="�e�X">
			</FORM>
		</li>

		<jsp:useBean id="storeSvc" scope="page"
			class="com.store.model.StoreService" />

		<li>
			<FORM METHOD="post" ACTION="store.do">
				<b>��ܩ��a�s��:</b> <select size="1" name="storeId">
					<option disabled selected>�п�ܩ��a�s��</option>
					<c:forEach var="storeVO" items="${storeSvc.all}">
						<option value="${storeVO.storeId}">${storeVO.storeId}
					</c:forEach>
				</select> <input type="hidden" name="action" value="getOne_For_Display">
				<input type="submit" value="�e�X">
			</FORM>
		</li>

		<li>
			<FORM METHOD="post" ACTION="store.do">
				<b>��ܩ��a�W��:</b> <select size="1" name="storeId">
					<option disabled selected>�п�ܩ��a�W��</option>
					<c:forEach var="storeVO" items="${storeSvc.all}">
						<option value="${storeVO.storeId}">${storeVO.storeName}
					</c:forEach>
				</select> <input type="hidden" name="action" value="getOne_For_Display">
				<input type="submit" value="�e�X">
			</FORM>
		</li>
		<li>
			<FORM METHOD="post" ACTION="store.do">
				<b>��ܩ��a�a��:</b>
				<div id="twzipcode"></div>
			    <input type="hidden" name="action" value="getOne_For_Display">
				<input type="submit" value="�e�X">
			</FORM>
		</li>
		
	</ul>



	<h3>���a�޲z</h3>

	<ul>
		<li><a href='addStore.jsp'>�s�W���a</a></li>
	</ul>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-twzipcode@1.7.14/jquery.twzipcode.min.js"></script>
	<script>
		$("#twzipcode").twzipcode();
		$("input[name='zipcode']").hide();
	</script>
</body>
</html>