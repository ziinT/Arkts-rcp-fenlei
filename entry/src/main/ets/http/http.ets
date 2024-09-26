import { rcp } from '@kit.RemoteCommunicationKit';
import  { fists,pops1} from '../pop/pops'
const session = rcp.createSession({headers:{
  origin: 'https://minicaty-pro.pf.jd.com'
}});

export  function  https(cid:string = '2094'){
  return session.get(`https://api.m.jd.com/api?functionId=mbf_queryCategory&appid=jd-cphdeveloper-m&body=%7B%22tenantCode%22%3A%22jgm%22%2C%22bizModelCode%22%3A%225%22%2C%22loginWQBiz%22%3A%22golden-trade%22%2C%22bizModeFramework%22%3A%22h5%22%2C%22bizModeClientType%22%3A%22M%22%2C%22uuid%22%3A%226128582816932560353%22%2C%22externalLoginType%22%3A%221%22%2C%22categoryId%22%3A%22${cid}%22%7D&loginType=2`).then(r=>{
  return r.toJSON()!['data']['firstCate'] as fists[]
  })
}

export  function  httpq(cid:string = '2094'){
  return session.get(`https://api.m.jd.com/api?functionId=mbf_queryCategory&appid=jd-cphdeveloper-m&body=%7B%22tenantCode%22%3A%22jgm%22%2C%22bizModelCode%22%3A%225%22%2C%22loginWQBiz%22%3A%22golden-trade%22%2C%22bizModeFramework%22%3A%22h5%22%2C%22bizModeClientType%22%3A%22M%22%2C%22uuid%22%3A%226128582816932560353%22%2C%22externalLoginType%22%3A%221%22%2C%22categoryId%22%3A%22${cid}%22%7D&loginType=2`).then(r=>{
    return r.toJSON()!['data']['secondCate']['level1words'] as pops1[]
  })
}