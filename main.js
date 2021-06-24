const express = require('express');
const user = require('../routes/auth');
// 데이터 값 연결 user.nick과 user.email로 로그인한 사용자 데이터 불러오기 가능
const db = require('../models/index');
const router = express.Router();

var postdata; 
var intro;
var name;
var id;
router.get('/', (req, res) => {
  res.render('main');                               
  });

router.route('/Teammates')

  .get((req,res) =>{
    res.render('Teammates',{user});  
  })

  .post(async(req,res)=> {

    await db.Team.findAll()
    .then((result) =>{
      // console.log(result.id);
      var data = result;
      res.send(data);
    })
  
  });

  

router.get('/post', async(req,res) => {
          await db.Post.findAll({raw : true})
          .then((results) =>{
            postdata = results;
          }).catch ((err)=>{
           console.error(err);
          });
          res.redirect('/main/QnA');
});
       
router.get('/QnA' ,(req,res) => {
  res.render('QnA' , {postdata});
})                       


router.get('/introduction',(req,res)=>{
  res.render('introduction',{user})
})

router.post('/introduction/wdb', async(req,res)=> {
  name =req.body.name;
  id = req.body.id;
  console.log(name);
  await db.Wdb.findAll({
    raw : true,
    where :{list:name}
  })
  .then((result) =>{
    
  console.log(result);
    res.send(result);
  })

})
router.route('/Introduction/update')
.get(async(req,res)=>{
  console.log(name);
  await db.Wdb.findAll({
    raw : true,
    where: {list:name}
}).then((result) => {
  intro = result;
  console.log(result);
  res.end();
}).catch((error) => {
  console.log(error);
  return next(error);
});

})
.post(async(req,res)=>{
var content = req.body.content;
  console.log([id]);
          await db.Wdb.update({content:content},{where:{id}})
          res.render('introduction',{user,intro});
})
router.get('/Introduction/updatewrite' ,(req,res)=>{
  console.log(id);
  res.render('updata2',{user,intro});
})
router.post('/Introduction/delete', async(req,res)=>{
  await db.Wdb.destroy({where:{list:name}});
  res.end();
})
  module.exports = router;
