<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>World of L4 - Jeju</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0">
     <link rel="stylesheet" href="../../CSS/all.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>

<body class="pt-5">
    <!-- HEADER : NAV-->
    <%@ include file = "header.jsp" %>

    <!-- Main-->
    <main class="container mt-5 pt-5 py-sm-5 py-md-0 px-5 px-lg-5">
<c:set var="form_action" value="update"/>
<c:if test="${empty resultMap}">
<c:set var="form_action" value="insert"/>
        <div class="pt-5 pt-sm-0 text-center mb-3 border-bottom">
            <div class="">
                <p class="fw-bold fs-1">Welcome to the World of L4 Hotel!</p>
                <p class="fs-4">Sign up for the new loyalty program, L4 World.</p>
                <p>
                    It's a program full of meticulous benefits, bonds, and wonderful experiences, and you're the main
                    character.
                </p>
                <p>
                    With great location, luxurious rooms and premium amenities, L4 World lets you meet people
                    from all over the world, visit special places, and share stories.
                </p>
            </div>
</c:if>

        ${form_action == "update" ? '<div class = "fs-2 text-center"> 회원 정보 수정 </div>' : '' }
        </div>

        <!-- Form -->
        <form class="pb-5" action="/${form_action}" method="post">
            <div class="row justify-content-center">
            <input type="hidden" name="USER_ID" value="${resultMap.USER_ID}">
                <div class="form-group col-12 col-md-4 my-3">
                    <label for="email">Email address</label>
                    <input type="email" class="form-control" id="email" name="EMAIL" aria-describedby="emailHelp"
                        placeholder="email@email.com"  value="${resultMap.EMAIL}" required ${form_action == "update" ? "readonly" : ''}>
                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone
                        else.</small>
                </div>
                <div class="form-group col-12 col-md-4 my-3">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="PASSWORD" value ="{${resultMap.PASSWORD}}" required>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="form-group col-12 col-md-4 my-3">
                    <label for="firstName">Frist Name</label>
                    <input type="text" class="form-control" id="firstName" name="FRIST_NAME" value="${resultMap.FRIST_NAME}" required>
                </div>
                <div class="form-group col-12 col-md-4 my-3">
                    <label for="lastName">Last Name</label>
                    <input type="text" class="form-control" id="lastName" name="LAST_NAME" value="${resultMap.LAST_NAME}" required>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="form-group col-12 col-md-4 my-3">
                    <label for="titleOfHonor">Title of honor</label>
                    <input type="text" class="form-control" id="titleOfHonor" name="TITLE_OF_HONOR"
                        placeholder="Mr / Mrs / Ms / Miss / ..." value="${resultMap.TITLE_OF_HONOR}" required>
                </div>
                <div class="form-group col-12 col-md-4 my-3">
                    <label for="birthday">Birthday</label>
                    <input type="date" class="form-control" id="birthday" name="BIRTHDAY" value="${resultMap.BIRTHDAY}"required>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="form-group col-12 col-md-2 my-3">
                    <label for="country">Country</label>
                    <input type="text" class="form-control" id="country" name="COUNTRY" value="${resultMap.COUNTRY}" required>
                </div>
                <div class="form-group col-12 col-md-3 my-3">
                    <label for="state">State</label>
                    <input type="text" class="form-control" id="state" name="STATE"value="${resultMap.STATE}" required>
                </div>
                <div class="form-group col-12 col-md-3 my-3">
                    <label for="city">City</label>
                    <input type="text" class="form-control" id="city" name="CITY" value="${resultMap.CITY}"required>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="form-group col-12 col-md-8 my-3">
                    <label for="addr">Address</label>
                    <input type="text" class="form-control" id="addr" name="ADDRESS" value="${resultMap.ADDRESS}" required>
                </div>
            </div>

 ${form_action == "update" ?  "" : '
            <div class="row justify-content-center">
                <div class="form-group col-12 col-md-8 my-3">
                    <input type="checkbox" name="agree" id="agree" required data-bs-toggle="modal"
                        data-bs-target="#staticBackdrop">
                    <label for="agree">
                        <p data-bs-toggle="modal" data-bs-target="#staticBackdrop">I accept the terms and conditions of
                            personal information collection</p>
                    </label>
                </div>
            </div>


           
            <!-- 개인정보 약관 modal-->
            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h1 class="modal-title fs-5" id="staticBackdropLabel">개인정보 이용/수집 약관</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <!-- 개인정보 약관 text -->
                        <div class="modal-body text-lg-start text-bg-secondary opacity-50">
                            1. 수집하는 개인정보<br>
                            (1) 회사는 최초 회원 가입시 원활한 고객상담, 서비스 제공을 위해 아래와 같은 최소한의 개인정보를 필수항목으로 수집하고 있습니다.
                            <br>
                            필수항목 : 이메일 주소, 이름(닉네임), 비밀번호<br>
                            선택항목 : 프로필 사진, 회사/단체 이름, 회사/단체 규모, 산업군, 부서, 유형(개인/기업/단체), 지역, 전화번호 등
                            (3) 서비스 이용 과정이나 사업처리 과정에서 아래와 같은 정보들이 추가로 수집될 수 있습니다.<br>
                            거래정보 : 개인의 경우 생년월일(정기결제에 한함), 신용카드정보(신용카드번호, 유효기간, 비밀번호 앞 두 자리), 세금계산서 발행을 위한 회계 담당자
                            정보(이름, 연락처, 이메일주소) 등<br>
                            서비스 이용 정보 : 서명 요청자 및 참여자 정보 (이름, 이메일 주소, 전화번호), 전화번호, IP 주소, 쿠키, 방문 일시, 서비스 이용 기록,
                            불량 이용
                            기록, 브라우저 정보, 운영체제 정보(OS), 사용 기기 정보, MAC 주소, 방문 일시 등<br>
                            2. 개인정보의 수집 및 이용목적<br>
                            (1) 회원관리
                            <br>
                            회원제 서비스 제공 및 개선, 개인식별, 이용약관 위반 회원에 대한 이용제한 조치, 서비스의 원활한 운영에 지장을 미치는 행위 및 서비스 부정이용 행위
                            제재,
                            가입의사 확인, 가입 및 가입횟수 제한, 만14세 미만 아동의 개인정보 수집 시 법정 대리인 동의여부 확인, 추후 법정 대리인 본인확인, 분쟁 조정을
                            위한
                            기록보존, 불만처리 등 민원처리, 고지사항 전달, 회원탈퇴 의사의 확인 등
                            <br>
                            (2) 신규 서비스 개발 및 마케팅·광고에의 활용
                            <br>
                            신규 서비스 개발 및 맞춤 서비스 제공, 통계학적 특성에 따른 서비스 제공 및 광고 게재, 서비스의 유효성 확인, 자사 및 제휴 이벤트 정보 및
                            참여기회
                            제공, 광고성 정보 제공, 접속빈도 파악, 회원의 서비스이용에 대한 통계분석 등
                            <br>
                            (3) 서비스 제공에 관한 계약 이행 및 유료서비스 제공에 따른 요금정산
                            <br>
                            전자서명 서비스 제공, 콘텐츠 제공, 특정 맞춤 서비스 제공, 유료서비스 이용에 대한 과금, 구매 및 요금 결제, 본인인증, 물품배송 또는 청구서 등
                            발송,
                            요금 추심 등
                            (4) 법적 증거로 활용
                            <br>
                            법적 분쟁시 증거자료 제출
                            <br>
                            3. 개인정보의 보유 및 이용기간
                            이용자의 개인정보는 원칙적으로 개인정보의 수집 및 이용목적이 달성되면 지체 없이 파기합니다. 단, 상법, 전자상거래 등에서의 소비자보호에 관한 법률 등
                            관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령에서 정한 일정한 기간 동안 회원 정보를 보관합니다. 이 경우 회사는 보관하는 정보를
                            그
                            보관의 목적으로만 이용하며 보존기간은 아래와 같습니다.
                            (1) 계약 또는 청약철회 등에 관한 기록<br>
                            보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률<br>
                            보존 기간 : 5년<br>
                            (2) 대금결제 및 재화 등의 공급에 관한 기록<br>
                            보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률<br>
                            보존 기간 : 5년<br>
                            (3) 소비자의 불만 또는 분쟁처리에 관한 기록<br>
                            보존 이유 : 전자상거래 등에서의 소비자보호에 관한 법률<br>
                            보존 기간 : 3년<br>
                            (4) 웹사이트 방문기록<br>
                            보존 이유 : 통신비밀보호법<br>
                            보존 기간 : 3개월<br>
                        </div>
                        <!-- modal Agree & close Button -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-dark" data-bs-dismiss="modal">Agree</button>
                        </div>
                    </div>
                </div>
            </div>
            '}
            <!-- Restet button -->

            <div class="row justify-content-center pt-5">
            ${form_action == "update" ?  "" : '
                <div class="form-group col-3 my-3 text-center">
                    <button type="reset" class="btn btn-outline-dark w-100">Restet</button>
                </div>'}
                <!-- subit Button trigger modal -->
                <div class="form-group col-3 my-3 text-center">
                    <input type="text" class="btn btn-dark w-100" data-bs-toggle="modal" value="Submit"
                        data-bs-target="#exampleModal">
                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                        aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Subscription progress</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                ${form_action == "update" ?  ' 입력해주신 정보로 수정되었습니다.' : '
                                    L4 Hotel에 가입해주신 것을 환영합니다.
                                    <br>
                                    입력해주신 정보로 가입이 진행됩니다.
                                    <hr>
                                    Welcome to the L4 Hotel.
                                    <br>
                                    The registration will proceed with the information you entered.'}
                                
                                </div>
                                <div class="modal-footer">
                                    <button type="submit" class="btn btn-dark" data-bs-dismiss="modal">
                                    ${form_action == "update" ?  'Thank you':'Enjoying the L4
                                        Hotel'}</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </form>
    </main>
    
    <!-- Footer-->
    <%@ include file = "footer.jsp" %>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>

</html>