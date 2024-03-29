<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"href="<%=request.getContextPath()%>/css/reset.css" />
<link rel="stylesheet"href="<%=request.getContextPath()%>/css/common.css" />
<link rel="stylesheet"href="<%=request.getContextPath()%>/css/member_a.css" />
<link rel="stylesheet"href="<%=request.getContextPath()%>/css/member_b.css" />
<link rel="stylesheet"href="<%=request.getContextPath()%>/css/layout.css" />
<link rel="stylesheet"href="<%=request.getContextPath()%>/css/index.css" />
<link rel="stylesheet"href="<%=request.getContextPath()%>/css/board.css" />
<link rel="stylesheet"href="<%=request.getContextPath()%>/css/boardWrite.css" />

<script src="<%=request.getContextPath()%>/js/jquery-3.6.1.js"></script>
<script src="<%=request.getContextPath()%>/js/header.js"></script>

<title>1:1 문의하기</title>
<style>
.mainTopSildeWrap, .mainTopSildeWrap .mainTopSilde .wideImages,
	.mainTopSildeWrap .mainTopSilde .slick-slide {
	height: 675px;
	overflow: hidden;
}
@media screen and (max-width:1240px) {
	.mainTopSildeWrap, .mainTopSildeWrap .mainTopSilde .wideImages,
		.mainTopSildeWrap .mainTopSilde .slick-slide {
		height: 600px;
	}
}

@media screen and (max-width:1140px) {
	.mainTopSildeWrap, .mainTopSildeWrap .mainTopSilde .wideImages,
		.mainTopSildeWrap .mainTopSilde .slick-slide {
		height: 540px;
	}
}

@media screen and (max-width:1024px) {
	.mainTopSildeWrap, .mainTopSildeWrap .mainTopSilde .wideImages,
		.mainTopSildeWrap .mainTopSilde .slick-slide {
		height: 500px;
	}
}

@media screen and (max-width:960px) {
	.mainTopSildeWrap, .mainTopSildeWrap .mainTopSilde .wideImages,
		.mainTopSildeWrap .mainTopSilde .slick-slide {
		height: 420px;
	}
}
</style>

</head>
<body>
	<%@include file="/WEB-INF/view/header.jsp"%>
    <div id="container" class="subPageContainer">
      <div id="contents">
        <!-- 본문 시작 -->
        <div class="sub_content">
          <div class="content">
            <div class="board_zone_sec">
              <div class="board_zone_tit">
                <h2>1:1문의</h2>
              </div>
              <div class="board_zone_cont">
                <form
                  name="frmWrite"
                  id="frmWrite"
                  action="./board_ps.php"
                  method="post"
                  enctype="multipart/form-data"
                  class="frmWrite"
                  novalidate="novalidate"
                >
                  <input type="hidden" name="bdId" value="qa" />
                  <input type="hidden" name="sno" value="" />
                  <input type="hidden" name="mode" value="write" />
                  <input type="hidden" name="returnUrl" value="bdId=qa" />

                  <div class="board_zone_write">
                    <div class="board_write_box">
                      <table class="board_write_table">
                        <colgroup>
                          <col style="width: 15%" />
                          <col style="width: 85%" />
                        </colgroup>
                        <tbody>
                          <tr>
                            <th scope="row">말머리</th>
                            <td>
                              <div class="category_select">
                                <select
                                  class="tune"
                                  id="category"
                                  name="category"
                                  style="width: 127px"
                                >
                                  <option value="">문의내용</option>
                                  <option value="회원/정보관리">
                                    회원/정보관리
                                  </option>
                                  <option value="주문/결제">주문/결제</option>
                                  <option value="배송">배송</option>
                                  <option value="반품/환불/교환/AS">
                                    반품/환불/교환/AS
                                  </option>
                                  <option value="영수증/증빙서류">
                                    영수증/증빙서류
                                  </option>
                                  <option value="상품/이벤트">
                                    상품/이벤트
                                  </option>
                                  <option value="기타">기타</option>
                                </select>
                              </div>
                            </td>
                          </tr>
                          <tr>
                            <th scope="row">작성자</th>
                            <td>
                              <input
                                type="text"
                                class="text"
                                name="writerNm"
                                value=""
                              />
                            </td>
                          </tr>
                          <tr>
                            <th scope="row">비밀번호</th>
                            <td>
                              <input
                                type="password"
                                class="text"
                                name="writerPw"
                              />
                            </td>
                          </tr>
                          <tr>
                            <th scope="row">제목</th>
                            <td>
                              <input type="text" name="subject" value="" />
                            </td>
                          </tr>
                          <tr>
                            <th scope="row">본문</th>                                                        
                            <td class="write_editor">
                                <textarea
                                    id="editor"
                                    name="contents"
                                    cols="170"
                                    rows="10">
                                </textarea>
                            </td>
                          </tr>
                          <tr>
                            <th scope="row">첨부파일</th>
                            <td id="uploadBox">
                              <div class="file_upload_sec">
                                <label for="attach1">
                                  <input
                                    type="text"
                                    class="file_text"
                                    title="파일 첨부하기"
                                    readonly="readonly"
                                  />
                                </label>
                                <div class="btn_upload_box">
                                  <button
                                    type="button"
                                    class="btn_upload"
                                    title="찾아보기"
                                  >
                                    <em>찾아보기</em>
                                  </button>
                                  <input
                                    type="file"
                                    id="attach1"
                                    name="upfiles[]"
                                    class="file"
                                    title="찾아보기"
                                  />
                                  <span class="btn_gray_list"
                                    ><button
                                      type="button"
                                      id="addUploadBtn"
                                      class="btn_gray_big"
                                    >
                                      <span>+ 추가</span>
                                    </button></span
                                  >
                                </div>
                              </div>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                    <!-- //board_write_box -->
                  </div>
                  <!-- //board_zone_write -->
                  <div class="btn_center_box">
                    <button
                      type="button"
                      class="btn_before"
                      onclick="javascript:history.back()"
                    >
                      <strong>이전</strong>
                    </button>
                    <button type="submit" class="btn_write_ok">
                       <strong>저장</strong>
                    </button>
                  </div>
                </form>
              </div>
              <!-- //board_zone_cont -->
            </div>
            <!-- //board_zone_sec -->
          </div>
          <!-- //content -->
        </div>
        <!-- //sub_content -->
      </div>
      <!-- //본문 끝 contents -->
    </div>
	<%@include file="/WEB-INF/view/footer.jsp"%>
</body>
</html>