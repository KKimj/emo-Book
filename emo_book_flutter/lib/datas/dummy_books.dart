import 'package:emo_book_flutter/models/book_model.dart';

var _jsons = [
  {
    'authors': ['기시미 이치로', '고가 후미타케'],
    'contents':
        '인간은 변할 수 있고, 누구나 행복해 질 수 있다. 단 그러기 위해서는 ‘용기’가 필요하다고 말한 철학자가 있다. 바로 프로이트, 융과 함께 ‘심리학의 3대 거장’으로 일컬어지고 있는 알프레드 아들러다. 『미움받을 용기』는 아들러 심리학에 관한 일본의 1인자 철학자 기시미 이치로와 베스트셀러 작가인 고가 후미타케의 저서로, 아들러의 심리학을 ‘대화체’로 쉽고 맛깔나게 정리하고 있다. 아들러 심리학을 공부한 철학자와 세상에 부정적이고 열등감 많은',
    'datetime': '2014-11-17T00:00:00.000+09:00',
    'isbn': '8996991341 9788996991342',
    'price': 14900,
    'publisher': '인플루엔셜',
    'sale_price': 13410,
    'status': '정상판매',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F1467038',
    'title': '미움받을 용기',
    'translators': ['전경아'],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=1467038&q=%EB%AF%B8%EC%9B%80%EB%B0%9B%EC%9D%84+%EC%9A%A9%EA%B8%B0'
  },
  {
    'authors': [
      '황순원',
      '강경애',
      '강신재',
      '계용묵',
      '김동인',
      '김유정 나도향 백신애 오영수 이상 이태준 이효석 주요섭 현진건'
    ],
    'contents':
        '『소나기』는 우리들의 책장 한편에나마 그 자리를 만들어주기 위해 엮은 책이다. 문득 그때 그 향기가 코끝을 스치면 한번쯤 꺼내어 손으로 쓸어 보고 페이지를 펼쳐 잠시 동안 옛 추억에 잠기게 만드는 책이다. 강경애, 강신재, 계용묵, 김동인, 김유정, 나도향, 백신애, 오영수, 이상, 이태준, 이효석, 주요섭, 현진건, 황순원 등 작가들의 눈부셔서 서글프고 애달파서 어여쁜 우리네 삶을 그려낸, 그립고 아름다운 스물네 가지의 이야기를 수록하였다.',
    'datetime': '2017-04-12T00:00:00.000+09:00',
    'isbn': '1187192341 9791187192343',
    'price': 15000,
    'publisher': '새움',
    'sale_price': 13500,
    'status': '정상판매',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F1640965%3Ftimestamp%3D20210523133911',
    'title': '소나기(대한민국 스토리DNA 14)(양장본 HardCover)',
    'translators': [],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=1640965&q=%EC%86%8C%EB%82%98%EA%B8%B0%28%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD+%EC%8A%A4%ED%86%A0%EB%A6%ACDNA+14%29%28%EC%96%91%EC%9E%A5%EB%B3%B8+HardCover%29'
  },
  {
    'authors': ['박웅현'],
    'contents':
        '‘넥타이와 청바지는 평등하다’, ‘나이는 숫자에 불과하다’, ‘사람을 향합니다’, ‘진심이 짓는다’, ‘생각이 에너지다’ 등 인간을 향한 따뜻한 시선이 담긴 가치 지향적 광고를 만들며 ‘인문학으로 광고하는’ 광고인으로서 자신만의 독보적인 스타일을 구축한 박웅현. 그는 말한다. 창의력의 전장인 광고계에서 30여 년간 광고를 만들 수 있었던 바탕에는 인문학이 있었고, 그 중심에는 ‘책’이 있었다고. 책을 통해 얻은 예민해진 촉수가 자신의 생업을 도왔다고',
    'datetime': '2011-10-10T00:00:00.000+09:00',
    'isbn': '8956055467 9788956055466',
    'price': 16000,
    'publisher': '북하우스',
    'sale_price': 14400,
    'status': '정상판매',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F724120%3Ftimestamp%3D20210523135048',
    'title': '책은 도끼다',
    'translators': [],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=724120&q=%EC%B1%85%EC%9D%80+%EB%8F%84%EB%81%BC%EB%8B%A4'
  },
  {
    'authors': ['푸른숲글방'],
    'contents':
        '아이들의 눈높이에 맞춰 들려주는 「요술지팡이 전래동화」 시리즈. 아기자기한 그림과 함께 재미있는 동화를 읽을 수 있습니다. 책의 말미에는 ‘쫑알쫑알’, ‘알음알음’, ‘알쏭달쏭’의 코너를 수록하여 동화에 대한 이해를 더욱 높이고, 상상력도 기를 수 있도록 도와줍니다.',
    'datetime': '2016-05-01T00:00:00.000+09:00',
    'isbn': '1158650728 9791158650728',
    'price': 6000,
    'publisher': '월드베스트',
    'sale_price': 5400,
    'status': '정상판매',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F1579238%3Ftimestamp%3D20201216143509',
    'title': '금도끼 은도끼(요술지팡이 전래동화 10)(양장본 HardCover)',
    'translators': [],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=1579238&q=%EA%B8%88%EB%8F%84%EB%81%BC+%EC%9D%80%EB%8F%84%EB%81%BC%28%EC%9A%94%EC%88%A0%EC%A7%80%ED%8C%A1%EC%9D%B4+%EC%A0%84%EB%9E%98%EB%8F%99%ED%99%94+10%29%28%EC%96%91%EC%9E%A5%EB%B3%B8+HardCover%29'
  },
  {
    'authors': ['김교문'],
    'contents':
        '저자가 살고 있는 하와이 코나는 ‘하와이 코나 월드 챔피언십’이 열리는 곳으로, 종교인들의 성지순례처럼 철인3종경기를 하는 아이언맨들에게는 인생의 버킷리스트이자 꿈의 무대이다. 매년 10월 전 세계 70여 개국에서 자신의 인생에 극한 한계를 스스로를 테스트하고 도전하려는 아이언맨들이 하와이 코나로 몰려온다. 그 지역에 16년째 살면서 코나로 오는 철인들을 도우며 수년 동안 모아 놓은 사진들을 정리하여 아이언맨의 삶과 도전정신을 이 책에 담았다. 지구상',
    'datetime': '2020-09-29T00:00:00.000+09:00',
    'isbn': '1157769403 9791157769407',
    'price': 23800,
    'publisher': '책과나무',
    'sale_price': 21420,
    'status': '정상판매',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F5478463%3Ftimestamp%3D20210424141720',
    'title': 'You are an Ironman(유 아 언 아이언맨)',
    'translators': [],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=5478463&q=You+are+an+Ironman%28%EC%9C%A0+%EC%95%84+%EC%96%B8+%EC%95%84%EC%9D%B4%EC%96%B8%EB%A7%A8%29'
  },
  {
    'authors': ['유대영', '마블 코믹스 (원작)'],
    'contents':
        '어린이를 위한, 어린이만의 아이언맨 만화 전세계 최초 출간!  《아이언맨 슈트 전쟁》은 마블코믹스 원작을 바탕으로 국내 작가가 어린이만화로 새롭게 그린 신작!  아이언맨은 히어로들 중 가장 인기가 높다. 그 비결은 멋진 슈트 때문! 아이언맨의 슈트를 놓고 펼쳐지는 흥미진진한 대결! 한시도 눈을 뗄 수 없을 정도의 긴박한 슈트전쟁! 과연 아이언맨은 슈트를 지킬 수 있을까?  [줄거리] 악당들이 아이언맨의 기술을 훔쳐 아이언맨 능력을 지닌 슈트를 개발하게',
    'datetime': '2020-04-25T00:00:00.000+09:00',
    'isbn': '1136231269 9791136231260',
    'price': 11000,
    'publisher': '대원키즈',
    'sale_price': 9900,
    'status': '정상판매',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F5352419%3Ftimestamp%3D20210522141957',
    'title': '아이언맨 슈트 전쟁(MARVEL)',
    'translators': [],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=5352419&q=%EC%95%84%EC%9D%B4%EC%96%B8%EB%A7%A8+%EC%8A%88%ED%8A%B8+%EC%A0%84%EC%9F%81%28MARVEL%29'
  },
  {
    'authors': ['스탠 리'],
    'contents':
        '미국 코믹스업계의 대표적 인물 스탠 리의 『스탠 리의 코믹스 기법』. 스파이더맨, 아이언맨, 엑스맨, 그리고 헐크 등 꾸준히 사랑받는 현대의 슈퍼 영웅을 탄생시킨 저자의 코믹스 기법을 배울 수 있다. 직접 만화를 그려보고 싶어 하는 모든 사람을 대상으로 삼았다. 21세기와 미래를 위한 만화창작의 세계로 우리를 인도한다. 아울러 미국 코믹스업계의 역사를 살펴보면서 최고의 아티스트, 잉커, 컬러리스트 등을 소개하고 있다. 미국 코믹스업계에 입문한 프로 만화가',
    'datetime': '2011-07-22T00:00:00.000+09:00',
    'isbn': '8992607792 9788992607797',
    'price': 22000,
    'publisher': '비즈앤비즈',
    'sale_price': 19800,
    'status': '정상판매',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F1375855%3Ftimestamp%3D20210512175427',
    'title': '스탠 리의 코믹스 기법',
    'translators': ['박성은'],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=1375855&q=%EC%8A%A4%ED%83%A0+%EB%A6%AC%EC%9D%98+%EC%BD%94%EB%AF%B9%EC%8A%A4+%EA%B8%B0%EB%B2%95'
  },
  {
    'authors': ['MARVEL'],
    'contents':
        '지난 2008년부터 2019년 〈어벤져스: 엔드게임〉까지. 마블 스튜디오의 중심에는 ‘아이언맨’이 있었다. 〈아이언맨〉 1편에서 아머를 입은 아이언맨이 하늘을 날던 순간부터 &lt;어벤져스&gt;에서 영웅들이 처음으로 함께 싸우던 모습, 우주적 위험에 맞서 싸운 &lt;어벤져스: 엔드게임&gt;까지 히어로들을 이끌었던 아이언맨의 멋진 아트워크와 영화 속 파이널 프레임을 모은 포스트 카드 컬렉션을 소개한다. 〈마블 스튜디오 아이언맨 엽서북 100〉은',
    'datetime': '2019-07-02T00:00:00.000+09:00',
    'isbn': ' 8809474871848',
    'price': 25000,
    'publisher': '아르누보',
    'sale_price': 22500,
    'status': '정상판매',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F4985447%3Ftimestamp%3D20210104133400',
    'title': '마블 스튜디오 아이언맨 엽서북 100',
    'translators': [],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=4985447&q=%EB%A7%88%EB%B8%94+%EC%8A%A4%ED%8A%9C%EB%94%94%EC%98%A4+%EC%95%84%EC%9D%B4%EC%96%B8%EB%A7%A8+%EC%97%BD%EC%84%9C%EB%B6%81+100'
  },
  {
    'authors': ['프란츠 카프카'],
    'contents':
        "카프카의 &lt;변신&gt;이 아르헨티나의 아티스트 루이스 스카파티의 삽화가 담긴 새로운 번역본으로 출간되었다. 루이스 스카파티는 &lt;변신&gt;의 한 장면 한 장면을 더 없이 '카프카'적으로 그려내기 위해 다른 색은 전혀 쓰지 않고 검은색으로만 처리했다. 카프카의 문학세계를 시각적으로 그려냈다고 해도 무방할 삽화들과 함께 독자들은 자기 존재와 지금의 내 현실에 대해 새로운 의문을 던지게 된다.",
    'datetime': '2011-10-07T00:00:00.000+09:00',
    'isbn': '8954600204 9788954600200',
    'price': 9500,
    'publisher': '문학동네',
    'sale_price': 8550,
    'status': '정상판매',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F689490%3Ftimestamp%3D20210523134047',
    'title': '변신(일러스트와 함께 읽는 세계명작)',
    'translators': ['이재황'],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=689490&q=%EB%B3%80%EC%8B%A0%28%EC%9D%BC%EB%9F%AC%EC%8A%A4%ED%8A%B8%EC%99%80+%ED%95%A8%EA%BB%98+%EC%9D%BD%EB%8A%94+%EC%84%B8%EA%B3%84%EB%AA%85%EC%9E%91%29'
  },
  {
    'authors': ['학연플러스'],
    'contents':
        '1일 1독해가 필요한 이유 이 책은 아이의 호기심을 자극하는 짧은 이야기가 주제별로 구성되어 있어 독서 습관을 기르는 데 효과적입니다. 또한, 읽는 것으로 끝나지 않고 문제를 푸는 것을 통해 내용을 정확하게 이해하며 읽고 있는지 확인할 수 있습니다. 매일 독해 훈련을 통해 학습 습관, 교과 지식, 독해력을 쑥쑥 키워 줍니다. 1일 1독해로 우리 아이 독해 습관을 길러 주세요.  1일 1독해가 다른 이유 (1) 학습 습관 Up　 -15분 이내에 읽을',
    'datetime': '2018-04-02T00:00:00.000+09:00',
    'isbn': '1129701794 9791129701794',
    'price': 7900,
    'publisher': '메가스터디북스',
    'sale_price': 7110,
    'status': '정상판매',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F1534562%3Ftimestamp%3D20210523134554',
    'title': '1일 1독해 세계 명작 이야기 Level. 2(메가스터디 초등 독해)',
    'translators': [],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=1534562&q=1%EC%9D%BC+1%EB%8F%85%ED%95%B4+%EC%84%B8%EA%B3%84+%EB%AA%85%EC%9E%91+%EC%9D%B4%EC%95%BC%EA%B8%B0+Level.+2%28%EB%A9%94%EA%B0%80%EC%8A%A4%ED%84%B0%EB%94%94+%EC%B4%88%EB%93%B1+%EB%8F%85%ED%95%B4%29'
  },
  {
    'authors': ['허먼 멜빌'],
    'contents':
        '&lt;모비 딕&gt;과 더불어 허먼 멜빌의 3대 걸작 중 하나로 꼽히는 중단편 『필경사 바틀비』. 1853년에 발표된 이 작품은 당시 미국 금융경제의 중심에 있던 월 스트리트를 배경으로 타협적인 화자와 비타협적인 주인공을 대비시켰다. 고층 빌딩에 둘러싸인 삭막한 월 스트리트. 안락하고 원만하게 살아온 성공한 변호사 앞에 기이한 필경사 바틀비가 나타난다. 음울한 분위기에 말이 없는 이 필사원은 어느 날 \"안 하는 편을 택하겠습니다\"라며 업무를 거부',
    'datetime': '2011-04-15T00:00:00.000+09:00',
    'isbn': '8954614442 9788954614443',
    'price': 11000,
    'publisher': '문학동네',
    'sale_price': 9900,
    'status': '정상판매',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F690750%3Ftimestamp%3D20210523135136',
    'title': '필경사 바틀비(일러스트와 함께 읽는 세계명작)',
    'translators': ['공진호'],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=690750&q=%ED%95%84%EA%B2%BD%EC%82%AC+%EB%B0%94%ED%8B%80%EB%B9%84%28%EC%9D%BC%EB%9F%AC%EC%8A%A4%ED%8A%B8%EC%99%80+%ED%95%A8%EA%BB%98+%EC%9D%BD%EB%8A%94+%EC%84%B8%EA%B3%84%EB%AA%85%EC%9E%91%29'
  },
  {
    'authors': ['김용희'],
    'contents':
        '교과서에 나오는 동시조와 현대 동시조 모음집『분이네 살구나무』. 이 책에는 우리나라 최초 동시조 동인회「쪽배」에서 활동하고 있는 시인들의 동시조 64편이 재미있고 아름다운 그림과 함께 실려 있다. 교과서에 실려 있는 동시조뿐만 아니라 현대 동시조까지 엄선하여 엮은 이 한 권의 책으로 우리나라 동시조가 걸어온 발자취를 볼 수 있다.',
    'datetime': '2010-04-12T00:00:00.000+09:00',
    'isbn': '8992826338 9788992826334',
    'price': 11000,
    'publisher': '리젬',
    'sale_price': 9900,
    'status': '정상판매',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F1382271%3Ftimestamp%3D20210523133204',
    'title': '분이네 살구나무(명작 동시조 감상)',
    'translators': [],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=1382271&q=%EB%B6%84%EC%9D%B4%EB%84%A4+%EC%82%B4%EA%B5%AC%EB%82%98%EB%AC%B4%28%EB%AA%85%EC%9E%91+%EB%8F%99%EC%8B%9C%EC%A1%B0+%EA%B0%90%EC%83%81%29'
  },
  {
    'authors': ['이지현'],
    'contents':
        '『플래시 구연 동화(명작)』는 장화 신은 고양이, 성냥팔이 소녀, 미운 아기 오리 등 세계명작 동화를 담고 있다. 오랫동안 사람들의 마음 속에 남아 사랑받고 있는 명작 이야기 속에는 재미뿐만 아니라 삶의 지혜도 함께 들어있다. 의성어·의태어를 강조한 글의 구성으로 마치 글자들이 살아 움직이는 듯 통통 튀어나오는 이야기가 펼쳐진다.',
    'datetime': '2010-05-15T00:00:00.000+09:00',
    'isbn': '8992830602 9788992830607',
    'price': 15000,
    'publisher': '아이앤북',
    'sale_price': 13500,
    'status': '정상판매',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F1382312%3Ftimestamp%3D20210430143844',
    'title': '플래시 구연 동화(명작)(CD1장포함)(양장본 HardCover)',
    'translators': [],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=1382312&q=%ED%94%8C%EB%9E%98%EC%8B%9C+%EA%B5%AC%EC%97%B0+%EB%8F%99%ED%99%94%28%EB%AA%85%EC%9E%91%29%28CD1%EC%9E%A5%ED%8F%AC%ED%95%A8%29%28%EC%96%91%EC%9E%A5%EB%B3%B8+HardCover%29'
  },
  {
    'authors': ['고소영', '고연지', '정지호', '최완식'],
    'contents':
        '- 독자대상 : 한국사 학습자 - 구성 및 특징 : ① 2019학년도 6월 모의평가까지 총 7회의 평가원 시험의 한국사를 빠짐없이 반영 ② 아직 출제된 적이 없는 문항들을 각 회차마다 5문제씩(2점 2문항, 3점 3문항) 출제',
    'datetime': '2018-08-20T00:00:00.000+09:00',
    'isbn': '1187602833 9791187602835',
    'price': 12200,
    'publisher': '병아리북스',
    'sale_price': 10980,
    'status': '정상판매',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F1649028%3Ftimestamp%3D20200222130206',
    'title': '고등 한국사영역 한국사 Final 모의고사(8회분)(2019)(봉투형)(명작)',
    'translators': [],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=1649028&q=%EA%B3%A0%EB%93%B1+%ED%95%9C%EA%B5%AD%EC%82%AC%EC%98%81%EC%97%AD+%ED%95%9C%EA%B5%AD%EC%82%AC+Final+%EB%AA%A8%EC%9D%98%EA%B3%A0%EC%82%AC%288%ED%9A%8C%EB%B6%84%29%282019%29%28%EB%B4%89%ED%88%AC%ED%98%95%29%28%EB%AA%85%EC%9E%91%29'
  },
  {
    'authors': ['앤서니 브라운'],
    'contents':
        '아이들은 쉽게 친구가 될 수 있어요!  세계적인 그림책 작가 앤서니 브라운이 전하는 가슴 따뜻한 친구 이야기『우리 친구하자』. 공원으로 산책을 나간 스미스 씨와 스미드 부인은 서로를 못 본 채 하지만, 아이들은 금방 친구가 되어 즐겁게 노는 상반된 모습을 통해 사람들 사이의 소외와 소통의 부재를 다룬다. 한 장면에서 사계절을 동시에 표현하기도 하고, 풀밭에 토끼가 숨어 있고, 숲 속에선 로빈훗이 활 연습을 하는 등 세밀하면서도 이색적인 그림들이',
    'datetime': '2011-01-18T00:00:00.000+09:00',
    'isbn': '8996570710 9788996570714',
    'price': 10500,
    'publisher': '현북스',
    'sale_price': -1,
    'status': '',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F1474984%3Ftimestamp%3D20210501144604',
    'title': '우리 친구하자(알이알이 명작그림책 1)(양장본 HardCover)',
    'translators': ['하빈영'],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=1474984&q=%EC%9A%B0%EB%A6%AC+%EC%B9%9C%EA%B5%AC%ED%95%98%EC%9E%90%28%EC%95%8C%EC%9D%B4%EC%95%8C%EC%9D%B4+%EB%AA%85%EC%9E%91%EA%B7%B8%EB%A6%BC%EC%B1%85+1%29%28%EC%96%91%EC%9E%A5%EB%B3%B8+HardCover%29'
  },
  {
    'authors': ['그림 형제', '어린이문화연구회 (엮음)'],
    'contents':
        '『그림자 극장』은 펼쳐서 세우면 책이 입체적인 그림자 극장 무대로 바뀌어 엄마와 아이가 그림자로 된 다양한 등장인물과 다양한 배경으로 그림자 극장 무대에서 재미있게 그림자놀이를 즐길 수 있도록 한 책이다. 어린이들이 가장 사랑하는 동화 미녀와 야수, 개구리 왕자, 빨간 모자 이야기 전편을 한 편의 시나리오처럼 대화식으로 구성하여, 읽는 즉시 생생하게 그림자 극장 무대에서 실연해 볼 수 있다.',
    'datetime': '2013-05-30T00:00:00.000+09:00',
    'isbn': '8996147850 9788996147855',
    'price': 12000,
    'publisher': '북스토리아이',
    'sale_price': 10800,
    'status': '정상판매',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F1456215%3Ftimestamp%3D20210522143250',
    'title': '그림자 극장(쉿 불을 끄면 펼쳐지는)(그림자놀이책 세계명작 편)',
    'translators': [],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=1456215&q=%EA%B7%B8%EB%A6%BC%EC%9E%90+%EA%B7%B9%EC%9E%A5%28%EC%89%BF+%EB%B6%88%EC%9D%84+%EB%81%84%EB%A9%B4+%ED%8E%BC%EC%B3%90%EC%A7%80%EB%8A%94%29%28%EA%B7%B8%EB%A6%BC%EC%9E%90%EB%86%80%EC%9D%B4%EC%B1%85+%EC%84%B8%EA%B3%84%EB%AA%85%EC%9E%91+%ED%8E%B8%29'
  },
  {
    'authors': ['괴테'],
    'contents': '',
    'datetime': '2006-05-15T00:00:00.000+09:00',
    'isbn': '8954601529 9788954601528',
    'price': 13000,
    'publisher': '문학동네',
    'sale_price': 11700,
    'status': '정상판매',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F689615%3Ftimestamp%3D20210523134047',
    'title': '파우스트(일러스트와 함께 읽는 세계명작)',
    'translators': ['이인웅'],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=689615&q=%ED%8C%8C%EC%9A%B0%EC%8A%A4%ED%8A%B8%28%EC%9D%BC%EB%9F%AC%EC%8A%A4%ED%8A%B8%EC%99%80+%ED%95%A8%EA%BB%98+%EC%9D%BD%EB%8A%94+%EC%84%B8%EA%B3%84%EB%AA%85%EC%9E%91%29'
  },
  {
    'authors': ['셀린느 라빅네뜨'],
    'contents':
        '우리나라의 절기 중 하나인 칠석에 얽힌 옛이야기 『견우와 직녀』 그림책. 한국의 이야기를 프랑스어로 가장 아름답게 표현할 수 있는 프랑스 작가 셀린느 라빅네뜨와 한국의 정서를 가장 잘 표현하는 한국의 그림작가 김동성이 만났다. 프랑스인의 감성이 그대로 녹아 있는 글은 견우와 직녀의 사랑을 더욱 아름답게 표현했고, 한국 고유의 정서를 잘 살리면서 독창적인 작품 활동을 하고 있다고 인정받는 김동성의 그림은 하늘나라와 인간 세상을 오가는 견우와 직녀',
    'datetime': '2011-11-01T00:00:00.000+09:00',
    'isbn': '8997175041 9788997175048',
    'price': 12000,
    'publisher': '현북스',
    'sale_price': 10800,
    'status': '정상판매',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F1480371%3Ftimestamp%3D20210324161647',
    'title': '견우와 직녀(알이알이 명작그림책 9)(양장본 HardCover)',
    'translators': ['이경혜'],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=1480371&q=%EA%B2%AC%EC%9A%B0%EC%99%80+%EC%A7%81%EB%85%80%28%EC%95%8C%EC%9D%B4%EC%95%8C%EC%9D%B4+%EB%AA%85%EC%9E%91%EA%B7%B8%EB%A6%BC%EC%B1%85+9%29%28%EC%96%91%EC%9E%A5%EB%B3%B8+HardCover%29'
  },
];

List<Book> DummyMainBooks = [for (var json in _jsons) Book.fromJson(json)];

List<String> DummyMainBookISBNs = [
  '9791162241998',
  '9788968482755',
];

// List<Book> DummyMainBooks = [
//   Book.fromJson(_jsons[0]),
//   Book.fromJson(_jsons[1]),
//   Book.fromJson(_jsons[2]),
//   Book.fromJson(_jsons[3]),
//   Book.fromJson(_jsons[4]),
//   Book.fromJson(_jsons[5]),
//   Book.fromJson(_jsons[6]),
//   Book.fromJson(_jsons[7]),
//   Book.fromJson(_jsons[8]),
//   Book.fromJson(_jsons[9]),
//   Book.fromJson(_jsons[10]),
//   Book.fromJson(_jsons[11]),
// ];
