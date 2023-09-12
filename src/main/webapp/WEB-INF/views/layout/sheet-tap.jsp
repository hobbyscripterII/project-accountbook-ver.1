<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<body>
<div class="div-account-book-list">
    <input class="btn btn-success" type="button" value="가계부 추가" data-bs-toggle="modal" data-bs-target="#modal-month-create">
    <input class="btn btn-danger" type="button" value="가계부 삭제" data-bs-toggle="modal" data-bs-target="#modal-month-delete">
    <c:forEach var="l" items="${list}">
        <input type="hidden" name="m_id" value="${l.m_id}">
        <input type="button" class="btn btn-primary" name="a_code" value="${l.a_code}" onclick="location.href = `/accountbook/mt/${l.m_id}/${l.a_code}`">
    </c:forEach>
</div>

<div class="modal" id="modal-month-create" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">알림</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div>
                    <p>추가할 가계부의 년월을 입력해주세요.</p>
                    <input type="text" class="form-control" id="a_code_create" name="a_code_create" pattern="[0-9]{6}" placeholder="'-' 생략한 6자리 년월 (202309)" />
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" id="month-create-flag" class="btn btn-danger">확인</button>
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">취소</button>
            </div>
        </div>
    </div>
</div>

<div class="modal" id="modal-month-delete" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">알림</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div>
                    <p>삭제할 가계부의 년월을 선택해주세요.</p>
                    <select class="form-control" id="a_code_delete">
                        <option class="form-control" value="null"> </option>
                        <c:forEach var="l" items="${list}">
                            <option value="${l.a_code}">${l.a_code}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" id="month-delete-flag" class="btn btn-danger">확인</button>
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">취소</button>
            </div>
        </div>
    </div>
</div>
</body>

<script>
    $(document).on('click', '#month-create-flag', function() {
        if(confirm('생성할 가계부 코드는 [' + $('#a_code_create').val() + ']입니다. 확인 버튼을 눌러주세요.')) {
            $.ajax({
                type: 'post',
                url: '/accountbook/ac/insert',
                data: {'a_code' : $('#a_code_create').val()},
                success(data) {
                    alert('추가가 완료되었습니다.');
                    location.reload();
                }
            })
        } else {
            alert('등록이 취소되었습니다.');
        }
    })

    $(document).on('click', '#month-delete-flag', function() {
        if(confirm('삭제할 가계부 코드는 [' + $('#a_code_delete').val() + ']입니다. 확인 버튼을 눌러주세요.')) {
            $.ajax({
                type: 'post',
                url: '/accountbook/ac/delete',
                data: {'a_code' : $('#a_code_delete').val()},
                success(data) {
                    alert('삭제가 완료되었습니다.');
                    location.reload();
                }
            })
        } else {
            alert('삭제가 취소되었습니다.');
        }
    })
</script>
</html>
