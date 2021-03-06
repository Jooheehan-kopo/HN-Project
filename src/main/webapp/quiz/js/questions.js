

// creating an array and passing the number, questions, options, and answers
let questions = [
    {
    numb: 1,
    question: "주식에서 시작된 유행어가 아닌것은?",
    answer: "역주행",
    options: [
      "손절",
      "물타기",
      "불타기",
      "역주행"
    ]
  },
    {
    numb: 2,
    question: "국내주식에 적극적으로 투자하는 개인 투자자를 비유하는 말은?",
    answer: "동학개미",
    options: [
      "동학개미",
      "개미",
      "서학개미",
      "주린이"
    ]
  },
    {
    numb: 3,
    question: "젊은 세대를 주축으로 인기를 얻고 있는 신(新)재테크의 종류로 옳지 않은 것은?",
    answer: "주름테크",
    options: [
      "새우테크",
      "슈테크",
      "주름테크",
      "샤테크"
    ]
  },
    {
    numb: 4,
    question: "시세차익을 목적으로 매매 가격과 전세금간의 차액이 적은 집을 전세를 기고 매입하는 투자 방식을 일컫는 말은?",
    answer: "갭투자",
    options: [
      "주투자",
      "갭투자",
      "홈투자",
      "자투자"
    ]
  },
    {
    numb: 5,
    question: "기존 주식의 액면가액을 일정한 비율로 나누어 주식 수를 늘리는 것을 의미하는 용어는?",
    answer: "액면분할",
    options: [
      "액면분할",
      "단기분할",
      "비율분할",
      "증자분할"
    ]
  },
    {
    numb: 6,
    question: "다음 중 전자상거래에 해당하지 않는 것은?",
    answer: "집 앞 마트에 방문하여 과일 구입",
    options: [
      "당근마켓으로 의자 구입",
      "네이버 쇼핑으로 책 구입",
      "카카오 선물하기로 아이스크림 구입",
      "집 앞 마트에 방문하여 과일 구입"
    ]
  },
    {
    numb: 7,
    question: "퇴직금을 지급받고 증식하여 노후에 연금, 또는 일시금으로 수령할 수 있는 퇴직금/노후관리 전용계좌를 일컫는 명칭은?",
    answer: "개인형퇴직연금 IRP",
    options: [
      "개인형퇴직연금 IRP",
      "노후보장형연금 IRP",
      "개인형퇴직연금 ERP",
      "종합형퇴직연금 ARP"
    ]
  },
    {
    numb: 8,
    question: "코로나19 이후 경제위기에 대한 대응책으로 정부에서 발표한 '한국판 뉴딜'에 해당하지 않는 것은?",
    answer: "블루 뉴딜",
    options: [
      "블루 뉴딜",
      "그린 뉴딜",
      "안정망 강화",
      "디지털 뉴딜"
    ]
  },
    {
    numb: 9,
    question: "주식에서 우선주와 보통주의 설명으로 옳지 않은 것은?",
    answer: "'우선주'와 '보통주' 모두 의결권이 존재한다.",
    options: [
      "'보통주'는 기본적인 주식의 형태로, 특별한 권리 내용이 정해지지 않은 일반 주식이다.",
      "'우선주' 의결권이 없는 대신 보통주보다 먼저 배당을 받을 수 있는 권리가 부여된 주식이다.",
      "'우선주'와 '보통주' 모두 의결권이 존재한다.",
      "'우선주'는 추가배당금을 받는다."
    ]
  },
    {
    numb: 10,
    question: "ETF는 인덱스 펀드를 거래소에 상장시켜 주식처럼 거래할 수 있는 상품이다. ETF의 특성 중 올바르지 않은 것은?",
    answer: "ETF는 기초지수를 주 1회, 매주 월요일 오전 8시에 공개한다.",
    options: [
      "소액분산 투자가 가능하다",
      "실시간 거래가 가능하다",
      "운용성과 및 포트폴리오를 실시간 확인이 가능해 운용이 투명하다",
      "ETF는 기초지수를 주 1회, 매주 월요일 오전 8시에 공개한다."
    ]
  },
    {
    numb: 11,
    question: "프리어닝시즌에 나온 실적 전망치와 비교했을 때, 실제기업 실적이 낮을 경우를 일컫는 단어는?",
    answer: "어닝쇼크",
    options: [
      "어닝서프라이즈",
      "어닝쇼크",
      "어닝다운",
      "어닝브레이크"
    ]
  },
    {
    numb: 12,
    question: "개인종합자산관리계좌 ISA에 대한 설명으로 옳은 것은?",
    answer: "ISA는 하나의 계좌에서 다양한 상품을 투자하며 세제 혜택을 받을 수 있는 절세자산관리계좌이다.",
    options: [
      "ISA는 하나의 계좌에서 다양한 상품을 투자하며 세제 혜택을 받을 수 있는 절세자산관리계좌이다.",
      "소득이 있는 만 19세 이상만 가입 가능하고, 의무 보유기간 10년만 지나면 비과세 혜택을 받을 수 있다.",
      "만 15세 ~ 19세 미만은 근로소득자여도 가입이 불가능하다.",
      "중개형 ISA 계좌는 고객이 직접 주식 및 금융 상품 거래를 할 수 없다."
    ]
  },
  // you can uncomment the below codes and make duplicate as more as you want to add question
  // but remember you need to give the numb value serialize like 1,2,3,5,6,7,8,9.....

  //   {
  //   numb: 6,
  //   question: "Your Question is Here",
  //   answer: "Correct answer of the question is here",
  //   options: [
  //     "Option 1",
  //     "option 2",
  //     "option 3",
  //     "option 4"
  //   ]
  // },
];