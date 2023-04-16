import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class MyProfile2 extends StatefulWidget {
  const MyProfile2({Key? key}) : super(key: key);

  @override
  _MyProfile2State createState() => _MyProfile2State();
}

class _MyProfile2State extends State<MyProfile2> {

 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color(0xfff1faf1),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor:   Colors.white,
       
        title: const Text(
          "Profile",
           style: TextStyle(
            color:  Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                              
                            ),
        ),
      ),

        body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[


            ListView.builder(
        padding: const EdgeInsets.only(top: 20),
                          itemBuilder: (context, index){
                            return Container(
                             
                              margin: const EdgeInsets.symmetric(horizontal: 22),
                              padding: const EdgeInsets.all(16),
                             height: 640.41,
                              width: 438.34,
                            
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(40)),
                                border: Border.all(
                                  color: const Color(0xff86E084),
                                )
                              ),
                              child: Row(
                                children: <Widget>[
                                   const SizedBox(width: 16,),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        const SizedBox(height: 16,),
                                           const Center( 
                      child: Text(
                        'My Profile ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                         
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          letterSpacing: 0.0,
                           color: Color(0xff008EC3),
                        ),
                      ),
                    
                        ),


                            const SizedBox(
                        height: 10,
                      ),
                          Container(
                          
                            
                          
                               
                        ),
        
                       

                  

        

                          const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
               
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: Text( "Name",
                        style: TextStyle(
                           color:  Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                           ),),
                    ),
                  ),
              ),

                       Container(
                                padding: const EdgeInsets.all(10),
                               child: TextFormField(
                                 //controller: accountnoController,
                                style: const TextStyle(fontSize: 10),
                                validator: (val) => val?.length == 0 ? 'Name Required' : null,                             
                                // controller: amount,
                               
                                keyboardType: TextInputType.text,
                                decoration: const InputDecoration(
                                  hintText: 'Name',
                                
                                  hintStyle: TextStyle(color: Colors.black),
                                  filled: true,
                                  fillColor: Colors.white70,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                    borderSide: BorderSide(color: Color(0xff86E084), width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                    borderSide: BorderSide( color: Color(0xff86E084), width: 2),
                                  ),
                                ),)
                              ),

const SizedBox(
                        height: 15,
                      ),


                                 const Padding(

                padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
               
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(0),
                      child: Text( "Password",
                        style: TextStyle(
                           color:  Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                           ),),
                    ),
                  ),
              ),



               Container(
                                padding: const EdgeInsets.all(10),
                               child: TextFormField(
                                 //controller: accountnoController,
                                style: const TextStyle(fontSize: 10),
                                validator: (val) => val?.length == 0 ? 'Password Required' : null,                             
                                // controller: amount,
                               
                                keyboardType: TextInputType.text,
                                decoration: const InputDecoration(
                                  hintText: 'password',
                                
                                  hintStyle: TextStyle(color: Colors.black),
                                  filled: true,
                                  fillColor: Colors.white70,
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                    borderSide: BorderSide(color: Color(0xff86E084), width: 2),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                                    borderSide: BorderSide( color: Color(0xff86E084), width: 2),
                                  ),
                                ),)
                              ),

                      

                                        
                              const SizedBox(
                        height: 50,
                      ),

                       SizedBox(
                  height: 55,
                  width: 390, // specific value
                 child:   Container(
          decoration: BoxDecoration(
                                color:Colors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                  color: const Color(0xff86E084),
                                ),
                              ),
        margin: const EdgeInsets.only(right:4),
        child: TextButton(
          child: const Text('UPDATE'),
          
          onPressed: (){
           
                              
          },)
      ),
                 ),  
               const SizedBox(
                        height: 10,
                      ),

                                      
                                       ],
                                    ),
                                  ),
                                  
   const SizedBox(width: 16,),

                     



    
                                 
                                ],
                              ),
                            );
                          },
                          shrinkWrap: true,
                          itemCount: 1,
                          
                          controller: ScrollController(keepScrollOffset: false),
                        ),


             

           

          ]
        )
    )
      
    );
      }
    
  
  }
