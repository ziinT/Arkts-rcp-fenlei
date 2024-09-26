import { https,httpq } from '../http/http'
import  {fists,pops,pops1}from  '../pop/pops'
@Entry
@Component
struct Index {
@State listdata:number[] = [1,2,3,4,5,6,7,8,9,11,21,31,41,51,61,71,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9]
@State listabout:fists[]=  []
@State leve:pops1[]=  []
@State Ziin :string ='2094'

  aboutToAppear(): void {
  https().then(r=>{
    this.listabout = r
  })
  httpq().then(r=>{
    this.leve= r
  })
  }


  build() {
Row(){
   List(){
  ForEach(this.listabout,(item:fists)=>{
    ListItem(){
      Column(){
         Text(item.title)
           .backgroundColor(this.Ziin === item.paneKey?'#fff':'')
           .textAlign(TextAlign.Center)
           .width('100%')
           .height(50)
           .onClick(()=>{
             this.Ziin = item.paneKey
             httpq(item.paneKey).then(r=>{
               this.leve= r
             })

           },)
      }
      .width('100%')
      .height(50)
    }
  })
   }
   .width('20%')
   .height('100%')
  .backgroundColor('#fff8f8f8')

    List(){
   ForEach(this.leve,(item:pops1)=>{
   ListItem(){
     Column(){
       Text(item.keyword)
         .margin({
           bottom:10,
           top:10
         })
         .fontWeight(500)
         .fontSize(21)
         .textAlign(TextAlign.Start)
         .width('100%')
         .fontColor(Color.Black)
       List(){
       ForEach(item.level2words,(items:pops)=>{
        ListItem(){
          Column(){
            Image(items.imageUrl)
              .width(50)
              .height(60)
              .margin(17)
          }
        }
       },(items:pops)=>items.keywordId)
       }
       .lanes(3)
     }
     .width('100%')

   }
    },(item:pops1)=>item.keywordid)
    }
    .height('100%')
     .width('80%')
  }
  .width('100%')
  }
}