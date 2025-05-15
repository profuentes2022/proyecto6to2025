const express=require("express");
const mysql=require("mysql");
const jwt=require("jsonwebtoken");
const app=express();
app.use(express.urlencoded({extend:false}));

app.get("/usuarios",(req,rep)=>{
    
    var datostoken={
        usuario:"maria"
    }

    var token=jwt.sign(datostoken,'videosxxx',{
        expiresIn:60*60*24
    })

    rep.send(token);

});



app.get("/verificar",(req,rep)=>{
let token=req.body.tock;
jwt.verify(token,'videosxxx',function(err,dato){
rep.send(dato);
});
});

app.listen(5555,()=>{
    console.log("seridor en linea ");
});