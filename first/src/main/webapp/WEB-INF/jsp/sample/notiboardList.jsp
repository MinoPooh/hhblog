<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
</head>
<style>
</style>
<body>
	<div id="wrap">
		<div id="header">
			<%@ include file="/WEB-INF/include/include-header.jspf"%>
		</div>
		<h2>공지 게시판 목록</h2>
		<table class="board_list">
			<colgroup>
				<col width="10%" />
				<col width="*" />
				<col width="15%" />
				<col wifth="15%" />
				<col width="20%" />
			</colgroup>
			<thead>
				<tr>
					<th scope="col">글번호</th>
					<th scope="col">제목</th>
					<th scope="col">작성자</th>
					<th scope="col">조회수</th>
					<th scope="col">작성일</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${fn:length(list) > 0}">
						<c:forEach var="row" items="${list}" varStatus="status">
							<tr>
								<td>${row.IDX }</td>
								<td class="title"><a href="#this" name="title">${row.TITLE }</a>
									<input type="hidden" id="IDX" value="${row.IDX }"></td>
								<td>${row.CREA_ID }</td>
								<td>${row.HIT_CNT }</td>
								<td>${row.CREA_DTM }</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="4">조회된 결과가 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>

		<c:if test="${not empty paginationInfo}">
			<ui:pagination paginationInfo="${paginationInfo}" type="text"
				jsFunction="fn_search" />
		</c:if>
		<input type="hidden" id="currentPageNo" name="currentPageNo" /> <br />
		<c:if test="${sessionScope.userId != null}">
			<a href="#this" class="btn" id="write">글쓰기</a>
		</c:if>
		<%@ include file="/WEB-INF/include/include-body.jspf"%>
		<script type="text/javascript">
			$(document).ready(function() {
				$("#write").on("click", function(e) { //글쓰기 버튼
					e.preventDefault();
					fn_openBoardWrite();
				});

				$("a[name='title']").on("click", function(e) { //제목
					e.preventDefault();
					fn_openBoardDetail($(this));
				});
			});

			function fn_openBoardWrite() {
				var comSubmit = new ComSubmit();
				comSubmit.addParam("BOARD_CODE", 4);
				comSubmit.setUrl("<c:url value='/sample/openBoardWrite.do' />");
				comSubmit.submit();
			}

			function fn_openBoardDetail(obj) {
				var comSubmit = new ComSubmit();
				comSubmit
						.setUrl("<c:url value='/sample/openBoardDetail.do' />");
				comSubmit.addParam("IDX", obj.parent().find("#IDX").val());
				comSubmit.addParam("BOARD_CODE", 4);
				comSubmit.submit();
			}

			function fn_search(pageNo) {
				var comSubmit = new ComSubmit();
				comSubmit.setUrl("<c:url value='/sample/openBoardList.do' />");
				comSubmit.addParam("currentPageNo", pageNo);
				comSubmit.addParam("BOARD_CODE", 4);
				comSubmit.submit();
			}
		</script>


		<div id="footer">
			<%@ include file="/WEB-INF/include/include-footer.jspf"%>
		</div>
	</div>
</body>
</html>
