  export  interface lists{
    areaId: string
    cateType: string
    areaName: string
    labelEndTime: string
    patternEndTime: string
    patternStartTime: string
    paneKey: string
    keywordId: string
    catId: string
    keyword: string
    url: string
    imageUrl: string
  }
  export  interface fists{
      title: string
      paneKey: string
  }

  export interface  pops{
      keywordId: string
      catId: string
      keyword: string
      url: string
      imageUrl: string
  }
  export  interface  pops1{
        level2words:pops[]
        keyword: string
        keywordid: string
        secCateName: string
        adGroupId: string
  }