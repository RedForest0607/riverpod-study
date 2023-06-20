const List ruleList = [
  {"id": "standard", "name": "기본", "yieldIncrement": 1, "terraformingRate": 20},
  {
    "id": "corporateEra",
    "name": "대기업시대",
    "yieldIncrement": 0,
    "terraformingRate": 20
  },
  {"id": "solo", "name": "솔로", "yieldIncrement": 1, "terraformingRate": 14}
];

const List corporationList = [
  {
    "corporationId": "beginnerCorporation",
    "corporationName": "초보자용 기업",
    "expansionId": "original",
    "terraformingRate": 0,
    "megaCreditStock": 42,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "credicor",
    "corporationName": "크레디코르",
    "expansionId": "original",
    "terraformingRate": 0,
    "megaCreditStock": 57,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "ecoline",
    "corporationName": "에코라인",
    "expansionId": "original",
    "terraformingRate": 0,
    "megaCreditStock": 36,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 3,
    "plantsYield": 2,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "helion",
    "corporationName": "헬리온",
    "expansionId": "original",
    "terraformingRate": 0,
    "megaCreditStock": 42,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 3
  },
  {
    "corporationId": "interplanetaryCinematics",
    "corporationName": "인터플래너터리 시네마틱스",
    "expansionId": "original",
    "terraformingRate": 0,
    "megaCreditStock": 30,
    "megaCreditYield": 0,
    "steelStock": 20,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "inventrix",
    "corporationName": "인벤트릭스",
    "expansionId": "original",
    "terraformingRate": 0,
    "megaCreditStock": 45,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "miningGuild",
    "corporationName": "광업협동조합",
    "expansionId": "original",
    "terraformingRate": 0,
    "megaCreditStock": 30,
    "megaCreditYield": 0,
    "steelStock": 5,
    "steelYield": 1,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "Phobolog",
    "corporationName": "포볼로그",
    "expansionId": "original",
    "terraformingRate": 0,
    "megaCreditStock": 23,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 10,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "tharsisRepublic",
    "corporationName": "타르시스 공화국",
    "expansionId": "original",
    "terraformingRate": 0,
    "megaCreditStock": 40,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "thorgate",
    "corporationName": "토르게이트",
    "expansionId": "original",
    "terraformingRate": 0,
    "megaCreditStock": 48,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 1,
    "heatYield": 0
  },
  {
    "corporationId": "unitedNationsMarsInitiative",
    "corporationName": "UNMI",
    "expansionId": "original",
    "terraformingRate": 0,
    "megaCreditStock": 40,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "saturnSystems",
    "corporationName": "새턴 시스템",
    "expansionId": "corporateEra",
    "terraformingRate": 0,
    "megaCreditStock": 42,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 1,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "teractor",
    "corporationName": "테랙터",
    "expansionId": "corporateEra",
    "terraformingRate": 0,
    "megaCreditStock": 60,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "aphrodite",
    "corporationName": "아프로디테",
    "expansionId": "venusNext",
    "terraformingRate": 0,
    "megaCreditStock": 47,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 1,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "celestic",
    "corporationName": "셀레스틱",
    "expansionId": "venusNext",
    "terraformingRate": 0,
    "megaCreditStock": 42,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "manutech",
    "corporationName": "매뉴테크",
    "expansionId": "venusNext",
    "terraformingRate": 0,
    "megaCreditStock": 35,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 1,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "morningStarInc",
    "corporationName": "모닝스타 인코퍼레이션",
    "expansionId": "venusNext",
    "terraformingRate": 0,
    "megaCreditStock": 50,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "viron",
    "corporationName": "바이론",
    "expansionId": "venusNext",
    "terraformingRate": 0,
    "megaCreditStock": 48,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "cheungShingMars",
    "corporationName": "쳉싱 마스",
    "expansionId": "prelude",
    "terraformingRate": 0,
    "megaCreditStock": 44,
    "megaCreditYield": 3,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "pointLuna",
    "corporationName": "포인트 루나",
    "expansionId": "prelude",
    "terraformingRate": 0,
    "megaCreditStock": 38,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 1,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "robinsonIndustries",
    "corporationName": "로빈슨 인더스트리",
    "expansionId": "prelude",
    "terraformingRate": 0,
    "megaCreditStock": 47,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "valleyTrust",
    "corporationName": "밸리 트러스트",
    "expansionId": "prelude",
    "terraformingRate": 0,
    "megaCreditStock": 37,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "vitor",
    "corporationName": "비토르",
    "expansionId": "prelude",
    "terraformingRate": 0,
    "megaCreditStock": 45,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "arklight",
    "corporationName": "아크라이트",
    "expansionId": "colonies",
    "terraformingRate": 0,
    "megaCreditStock": 45,
    "megaCreditYield": 2,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "aridor",
    "corporationName": "아리도르",
    "expansionId": "colonies",
    "terraformingRate": 0,
    "megaCreditStock": 40,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "polyphemos",
    "corporationName": "폴리페모스",
    "expansionId": "colonies",
    "terraformingRate": 0,
    "megaCreditStock": 50,
    "megaCreditYield": 5,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 5,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "poseidon",
    "corporationName": "포세이돈",
    "expansionId": "colonies",
    "terraformingRate": 0,
    "megaCreditStock": 45,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "stormCraftIncorporated",
    "corporationName": "스톰크래프트",
    "expansionId": "colonies",
    "terraformingRate": 0,
    "megaCreditStock": 48,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "lakefrontResorts",
    "corporationName": "레이크프론트 리조트",
    "expansionId": "turmoil",
    "terraformingRate": 0,
    "megaCreditStock": 54,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "pristar",
    "corporationName": "프리스타",
    "expansionId": "turmoil",
    "terraformingRate": -2,
    "megaCreditStock": 53,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "septemTribus",
    "corporationName": "셉템 트리부스",
    "expansionId": "turmoil",
    "terraformingRate": 0,
    "megaCreditStock": 36,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "terralabsResearch",
    "corporationName": "테라랩스",
    "expansionId": "turmoil",
    "terraformingRate": -1,
    "megaCreditStock": 14,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "utopiaInvest",
    "corporationName": "유토피아",
    "expansionId": "turmoil",
    "terraformingRate": 0,
    "megaCreditStock": 40,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 1,
    "titaniumStock": 0,
    "titaniumYield": 1,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "recyclon",
    "corporationName": "리사이클론",
    "expansionId": "promotion",
    "terraformingRate": 0,
    "megaCreditStock": 38,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 1,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "spliceTacticalGenomics",
    "corporationName": "스플라이스",
    "expansionId": "promotion",
    "terraformingRate": 0,
    "megaCreditStock": 44,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "arcadianCommunities",
    "corporationName": "아카디아 공동체",
    "expansionId": "promotion",
    "terraformingRate": 0,
    "megaCreditStock": 40,
    "megaCreditYield": 0,
    "steelStock": 10,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "monsInsurance",
    "corporationName": "몬스 손해보험",
    "expansionId": "promotion",
    "terraformingRate": 0,
    "megaCreditStock": 48,
    "megaCreditYield": 4,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "factorum",
    "corporationName": "팩토럼",
    "expansionId": "promotion",
    "terraformingRate": 0,
    "megaCreditStock": 37,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 1,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "philares",
    "corporationName": "필레어스",
    "expansionId": "promotion",
    "terraformingRate": 0,
    "megaCreditStock": 47,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "astrodrillEnterprise",
    "corporationName": "아스트로드릴 엔터프라이즈",
    "expansionId": "promotion",
    "terraformingRate": 0,
    "megaCreditStock": 38,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  },
  {
    "corporationId": "pharmacyUnion",
    "corporationName": "파머시 유니온",
    "expansionId": "promotion",
    "terraformingRate": 0,
    "megaCreditStock": 54,
    "megaCreditYield": 0,
    "steelStock": 0,
    "steelYield": 0,
    "titaniumStock": 0,
    "titaniumYield": 0,
    "plantsStock": 0,
    "plantsYield": 0,
    "energyYield": 0,
    "heatYield": 0
  }
];
