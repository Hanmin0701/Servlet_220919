<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>

<%
// 아티스트 정보 

Map<String, Object> artistInfo = new HashMap<>();
artistInfo.put("name", "아이유");
artistInfo.put("debute", 2008);
artistInfo.put("agency", "EDAM엔터테인먼트");
artistInfo.put("photo", "https://pbs.twimg.com/profile_images/1374979417915547648/vKspl9Et_400x400.jpg");

// 아이유 노래 리스트 
List<Map<String, Object>> musicList = new ArrayList<>();

Map<String, Object> musicInfo = new HashMap<>();
musicInfo.put("id", 1);
musicInfo.put("title", "팔레트");
musicInfo.put("album", "Palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 2);
musicInfo.put("title", "좋은날");
musicInfo.put("album", "Real");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
musicInfo.put("time", 233);
musicInfo.put("composer", "이민수");
musicInfo.put("lyricist", "김이나");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 3);
musicInfo.put("title", "밤편지");
musicInfo.put("album", "palette");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
musicInfo.put("time", 253);
musicInfo.put("composer", "제휘,김희원");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 4);
musicInfo.put("title", "삐삐");
musicInfo.put("album", "삐삐");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://ww.namu.la/s/5ea8ba97baf8af3cc13f2972d9d23bcd17e19b8b8a96ce86d50c4bd03ad4df30321fc7e012738ad4b00c50642195ef7a68ff484ad760b15ff46bb1dc45ffb3fc399e4345c5d4dd2240820b59f3a573a57f84b8a6a2e4fb26ce5e81ad66d85f77debc979900275f6cf7a51386c8c39aa9");
musicInfo.put("time", 194);
musicInfo.put("composer", "이종훈");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 5);
musicInfo.put("title", "스물셋");
musicInfo.put("album", "CHAT-SHIRE");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://w.namu.la/s/4a817b8f4ec9caca4027a6991651a401d683a7691f1926bd60e59908f306d439f7cc251af5ef263a6f0a249e831d5d9cf641855bf590dadd86869ff941aad8dc236bc91bac89f84cff60c981d8d6c85f57a2ff4df00b5efe3bbc10e9745ce13571eda48f1912435423317450475d6ffe");
musicInfo.put("time", 194);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);

musicInfo = new HashMap<>();
musicInfo.put("id", 6);
musicInfo.put("title", "Blueming");
musicInfo.put("album", "Love poem");
musicInfo.put("singer", "아이유");
musicInfo.put("thumbnail",
		"https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
musicInfo.put("time", 217);
musicInfo.put("composer", "아이유,이종훈,이채규");
musicInfo.put("lyricist", "아이유");
musicList.add(musicInfo);
%>

<%
// 상세 정보를 보여줄 target 세팅
Map<String, Object> target = null;

// 1. 목록에서 클릭한 경우 (id값)
if (request.getParameter("id") != null) {
	Integer paramId = Integer.valueOf(request.getParameter("id"));
	//out.print(":::::::::::##########" + paramId);
	for (Map<String, Object> music : musicList) {
		Integer id = (Integer) music.get("id");
		if (id.equals(paramId)) {
	target = music;
	break;
		}
	}
}

// 2. 상단에서 검색한 경우 (search값)
if (request.getParameter("search") != null) {
	String paramSearch = request.getParameter("search");
	// out.print("::::::::::: " + paramSearch);
	for (Map<String, Object> music : musicList) {
		String title = (String) music.get("title");
		if (title.equals(paramSearch)) {
	target = music;
	break;
		}
	}
}

//out.print(target);
%>


<section class="contents">
	<%
	if (target != null) { //-- if문 시작
		Integer time = (Integer) target.get("time");
	%>

	<h4 class="mt-4">곡 정보</h4>
	<div class="d-flex  border border-success p-3">
		<div class="music-info">
			<img class="album-size"
				src="https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg">
		</div>
		<div class="ml-4">
			<div class="display-4"><%=target.get("title")%></div>
			<div class="font-weight-bold text-success"><%=target.get("singer")%></div>
			<div class="d-flex mt-3 music-info">
				<div class="text-dark">
					앨범 <br> 재생시간 <br> 작곡가 <br> 작사가
				</div>
				<div class="ml-4">
					<%=target.get("album")%>
					<br>
					<%=time / 60%>:<%=time % 60%>
					<br>
					<%=target.get("composer")%>
					<br>
					<%=target.get("lyricist")%>
				</div>
			</div>
		</div>
	</div>

	<h4 class="mt-4">가사</h4>
	<hr>
	<div>가사 정보 없음</div>
</section>

<%
} else { //-- if문 종료, else문 시작 => target이 없는 경우
%>
<section>
	<h1>정보 없음</h1>
</section>
<%
}
%>