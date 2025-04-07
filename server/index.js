require('dotenv').config();
const express = require('express');
const bcrypt = require('bcryptjs');
const db = require('./db');
const authRouter = require('./routes/auth');

const cors = require('cors');


//const mongoose = require('mongoose');
//const mysql = require('mysql2');



const PORT = process.env.PORT || 3001;

const app = express();

app.use(express.json());
app.use(authRouter);
app.use(cors({
  origin: 'http://your-flutter-app-ip:port',
  credentials: true
}));


//const DB = "mongodb+srv://ampaul136:asdfg@1210@cluster0.vwil6.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

//mongoose.connect(DB).then(()=>{
  //  console.log("Connection successful");
//}).catch((e)=>console.log("No connection"));
//const db = mysql.createConnection({
   // host: process.env.DB_HOST,
   // user: process.env.DB_USER,
   // password: process.env.DB_PASSWORD,
  //  database: process.env.DB_NAME
//});
//db.connect((err)=>{
    //if(err){
    //    console.error("database connection failed: ",err);
   // }
   // else{
        //console.log("database connection successful");
   // }
//});

app.listen(PORT, "0.0.0.0",()=>{
    console.log(`Server is running on port ${PORT}`);
});