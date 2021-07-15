import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Binary Calculator Flutter Application',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black//const Color(0xFFEFEFEF),
        //primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Calculator App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String finalanswer="0";

  String result="0";
  double value1=0.00;
  double value2=0.00;
  String operand= "";


  calc(String valueonbutton){
    if(valueonbutton=="CLEAR"){
        result="0";
        value1=0.00;
        value2=0.00;
        operand="";

    }else if(valueonbutton=="+"||valueonbutton=="-"||valueonbutton=="/"||valueonbutton=="x"){
      value1=double.parse(finalanswer);
      operand=valueonbutton;
      result="0";

    }else if(valueonbutton=="."){
      if(result.contains(".")){
        print("ERROR!");
        }else{
          result =result + valueonbutton;  
          
        }

      

    }else if(valueonbutton=="="){
      value2=double.parse(finalanswer);

      if(operand=="+"){
        result=(value1+value2).toString();
      }
      if(operand=="-"){
        result=(value1-value2).toString();
      }
      if(operand=="x"){
        result=(value1*value2).toString();
      }
      if(operand=="/"){
        result=(value1/value2).toString();
      }
      value1=0.00;
      value2=0.00;
      //result="0";
      operand="";
    }else {
      result= result+ valueonbutton;
    }

    print(result);

    setState(() {
      finalanswer=double.parse(result).toString();
    });
    
    //print(valueonbutton);
  }
  

  @override
  Widget build(BuildContext context) {
    Widget calcbutton (String valueonbutton){
    return Expanded(
    
    child: MaterialButton(
      padding:EdgeInsets.all(20),
      color:Colors.black,
      textColor:Colors.white,
      onPressed: (){
        //buttonPressed(bubut
        //buttonPressed(buttonText);
        calc(valueonbutton);
      }, 
      child:Text(valueonbutton,
      
      style:TextStyle(
        fontSize:25,
        fontWeight:FontWeight.bold,
        
        ),),
                ),
              );}


    return Scaffold(
      appBar: AppBar(
        toolbarHeight:90,
        backgroundColor: Colors.white,
        title: Text(widget.title,style: TextStyle(
          color: Colors.black,
          fontSize: 55,
          letterSpacing: 3,
          fontWeight: FontWeight.bold,
          fontFamily: 'Oswald',

        ),),
        centerTitle:true,

      ),

      body: Container(
        
        child: Column(
          
          //mainAxisAlignment:Alignment.,
          //crossAxisAlignment:Alignment.,
          children: <Widget>[
            Container(
            //margin: EdgeInsets.all(100),
            padding:EdgeInsets.all(20),
              //color:Colors.blue,


              child: Text(finalanswer,style:TextStyle(
                color: Colors.white,

                fontSize:50,
                
                fontWeight:FontWeight.bold, ))
              ),
            Expanded(
              child: Divider(),),
          Row(
            //mainAxisAlignment:Alignment,
            children:<Widget> [
              calcbutton("7"),
              calcbutton("8"),
              calcbutton("9"),
              Expanded(

                child: MaterialButton(
                  padding:EdgeInsets.all(20),
                  color:Colors.black,
                  textColor:Colors.red,
                  onPressed: (){
                    //buttonPressed(bubut
                    //buttonPressed(buttonText);
                    calc("x");
                  },
                  child:Text("x",

                    style:TextStyle(
                      fontSize:25,
                      fontWeight:FontWeight.bold,

                    ),),
                ),
              ),
              //calcbutton("x"),


            ],
          ),
          Row(
            //mainAxisAlignment:Alignment,
            children:<Widget> [
              calcbutton("4"),
              calcbutton("5"),
              calcbutton("6"),
              Expanded(

                child: MaterialButton(
                  padding:EdgeInsets.all(20),
                  color:Colors.black,
                  textColor:Colors.red,
                  onPressed: (){
                    //buttonPressed(bubut
                    //buttonPressed(buttonText);
                    calc("/");
                  },
                  child:Text("/",

                    style:TextStyle(
                      fontSize:25,
                      fontWeight:FontWeight.bold,

                    ),),
                ),
              ),
              //calcbutton("/"),


            ],
          ),
          Row(
            //mainAxisAlignment:Alignment,
            children:<Widget> [
              calcbutton("1"),
              calcbutton("2"),
              calcbutton("3"),
              Expanded(

                child: MaterialButton(
                  padding:EdgeInsets.all(20),
                  color:Colors.black,
                  textColor:Colors.red,
                  onPressed: (){
                    //buttonPressed(bubut
                    //buttonPressed(buttonText);
                    calc("-");
                  },
                  child:Text("-",

                    style:TextStyle(
                      fontSize:25,
                      fontWeight:FontWeight.bold,

                    ),),
                ),
              ),
              //calcbutton("-"),



            ],
          ),
          Row(
            //mainAxisAlignment:Alignment,
            children:<Widget> [
              calcbutton("."),
              calcbutton("0"),
              calcbutton("00"),
              Expanded(

                child: MaterialButton(
                  padding:EdgeInsets.all(20),
                  color:Colors.black,
                  textColor:Colors.red,
                  onPressed: (){
                    //buttonPressed(bubut
                    //buttonPressed(buttonText);
                    calc("+");
                  },
                  child:Text("+",

                    style:TextStyle(
                      fontSize:25,
                      fontWeight:FontWeight.bold,

                    ),),
                ),
              ),
              //calcbutton("+"),


            ],
          ),
          Row(
            //mainAxisAlignment:Alignment,
            children:<Widget> [
              Expanded(

                child: MaterialButton(
                  padding:EdgeInsets.all(20),
                  color:Colors.red,
                  textColor:Colors.black,
                  onPressed: (){
                    //buttonPressed(bubut
                    //buttonPressed(buttonText);
                    calc("CLEAR");
                  },
                  child:Text("CLEAR",

                    style:TextStyle(
                      fontSize:25,
                      fontWeight:FontWeight.bold,

                    ),),
                ),
              ),
              Expanded(

                child: MaterialButton(
                  padding:EdgeInsets.all(20),
                  color:Colors.black,
                  textColor:Colors.red,
                  onPressed: (){
                    //buttonPressed(bubut
                    //buttonPressed(buttonText);
                    calc("=");
                  },
                  child:Text("=",

                    style:TextStyle(
                      fontSize:25,
                      fontWeight:FontWeight.bold,

                    ),),
                ),
              ),
              //calcbutton("="),


              
            ],
          ),
          
          
        ],),
      )
      );
  }
}
