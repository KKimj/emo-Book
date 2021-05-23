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
    'authors': ['편집부'],
    'contents': '',
    'datetime': '2020-06-09T00:00:00.000+09:00',
    'isbn': ' 2090000071313',
    'price': 16500,
    'publisher': '(주)에스엠라이프디자인그룹',
    'sale_price': -1,
    'status': '',
    'thumbnail': '',
    'title': '아이언맨 & 헐크 (1 DISC)',
    'translators': [],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=5392618&q=%EC%95%84%EC%9D%B4%EC%96%B8%EB%A7%A8+%26+%ED%97%90%ED%81%AC+%281+DISC%29'
  },
  {
    'authors': ['편집부'],
    'contents': '',
    'datetime': '2020-06-09T00:00:00.000+09:00',
    'isbn': ' 2090000072587',
    'price': 13800,
    'publisher': '월트디즈니',
    'sale_price': -1,
    'status': '',
    'thumbnail': '',
    'title': '아이언맨 3 (1 DISC)',
    'translators': [],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=5392580&q=%EC%95%84%EC%9D%B4%EC%96%B8%EB%A7%A8+3+%281+DISC%29'
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
    'authors': ['편집부'],
    'contents': '',
    'datetime': '2020-06-09T00:00:00.000+09:00',
    'isbn': ' 2090000072532',
    'price': 13800,
    'publisher': '월트디즈니',
    'sale_price': -1,
    'status': '',
    'thumbnail': '',
    'title': '아이언맨 2 (1 DISC) <재발매>',
    'translators': [],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=5392532&q=%EC%95%84%EC%9D%B4%EC%96%B8%EB%A7%A8+2+%281+DISC%29+%3C%EC%9E%AC%EB%B0%9C%EB%A7%A4%3E'
  },
  {
    'authors': ['삼성출판사 편집부'],
    'contents':
        '『내가 만들자 캐릭터. 2: 아이언맨3』은 아이언맨 이야기를 읽고 슈트와 악당들을 직접 만들 수 있다. 떼고, 접고, 끼우면 완성되는 아이언맨 장난감 17개가 들어있다.',
    'datetime': '2013-04-01T00:00:00.000+09:00',
    'isbn': ' 8809256422190',
    'price': 11800,
    'publisher': '삼성출판사',
    'sale_price': -1,
    'status': '',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F5097621%3Ftimestamp%3D20210303153734',
    'title': '내가 만들자 아이언맨3(내가 만들자 캐릭터 장난감 시리즈 2)(보드북)',
    'translators': [],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=5097621&q=%EB%82%B4%EA%B0%80+%EB%A7%8C%EB%93%A4%EC%9E%90+%EC%95%84%EC%9D%B4%EC%96%B8%EB%A7%A83%28%EB%82%B4%EA%B0%80+%EB%A7%8C%EB%93%A4%EC%9E%90+%EC%BA%90%EB%A6%AD%ED%84%B0+%EC%9E%A5%EB%82%9C%EA%B0%90+%EC%8B%9C%EB%A6%AC%EC%A6%88+2%29%28%EB%B3%B4%EB%93%9C%EB%B6%81%29'
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
    'authors': ['브라이언 마이클 벤디스'],
    'contents':
        '새로운 아머, 새로운 빌런들. 세상에서 가장 인기 있는 슈퍼 히어로 앞에 완전히 새로운 우주가 펼쳐진다!  새로운 조연과 새로운 삶의 목적을 얻은 토니 스타크는 자신의 역사를 새로 쓸 도전을 받아들인다! 마블 유니버스를 크게 변화시킬 예상 밖의 사건에서 아이언 맨은 오랜 적수 마담 마스크와의 싸움을 앞두고 충격적인 새로운 아군을 얻는다. 괴로워하는 휘트니 프로스트는 그 어느 때보다 강력해졌고, 특별한 원한을 품었다. 충격과 공포를 선사할 이 이야기',
    'datetime': '2019-04-29T00:00:00.000+09:00',
    'isbn': ' 9788952799616',
    'price': 8400,
    'publisher': '시공사',
    'sale_price': -1,
    'status': '정상판매',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F4937139',
    'title': '인빈시블 아이언맨 Vol. 1',
    'translators': [],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=4937139&q=%EC%9D%B8%EB%B9%88%EC%8B%9C%EB%B8%94+%EC%95%84%EC%9D%B4%EC%96%B8%EB%A7%A8+Vol.+1'
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
    'authors': ['세바스찬 알바라도'],
    'contents':
        '마블 유니버스에서 설정하고 있는 가상의 과학을 분석하고 현실에서 진행된 그와 닮은 연구를 소개한다. 저자는 과학자의 눈으로 마블의 각종 설정을 바라보며 리얼한 현실 과학을 풀어놓는다.  그의 눈을 통해 우리는 현존하는 과학과 상상력의 유사도를 비교하며 오랫동안 꿈꾸던 미래가 이뤄지고 있음을 실감한다. 과학을 알면 우리에게 오고 있는 어떤 미래를 충분히 이해하고 만끽할 수 있다.',
    'datetime': '2020-01-30T00:00:00.000+09:00',
    'isbn': ' 9791190149167',
    'price': 500,
    'publisher': '다온북스',
    'sale_price': -1,
    'status': '정상판매',
    'thumbnail':
        'https://search1.kakaocdn.net/thumb/R120x174.q85/?fname=http%3A%2F%2Ft1.daumcdn.net%2Flbook%2Fimage%2F5228409',
    'title': '마블이 설계한 사소하고 위대한 과학-아이언맨',
    'translators': ['박지웅'],
    'url':
        'https://search.daum.net/search?w=bookpage&bookId=5228409&q=%EB%A7%88%EB%B8%94%EC%9D%B4+%EC%84%A4%EA%B3%84%ED%95%9C+%EC%82%AC%EC%86%8C%ED%95%98%EA%B3%A0+%EC%9C%84%EB%8C%80%ED%95%9C+%EA%B3%BC%ED%95%99-%EC%95%84%EC%9D%B4%EC%96%B8%EB%A7%A8'
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
