
import 'package:flutter/material.dart';
import 'package:greentech/settings/updateProfile.dart';
import 'package:provider/provider.dart';


class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {

 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff1faf1),
        appBar: AppBar(
          centerTitle: true,
          backgroundColor:  Colors.white,
       
        title: const Text(
          "Settings",
           style: TextStyle(
            color: Colors.black,
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
                                        const SizedBox(height: 10,),
                                           const Center( 
                      child: Text(
                        'My Profile',
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
                        height: 60,
                      ),
                     
                     
                  

                 SizedBox(
                  height: 55,
                  width: 390, // specific value
                 child: Container(
                         padding: const EdgeInsets.only(left: 0, right: 0, top: 0),
                             decoration: BoxDecoration(
                                color:Colors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                  color: const Color(0xff86E084),
                                ),
                              ),
                    child: ListTile(
                                                  
                                                  
                                                      
                                                       shape: const RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(20))),
                      
                                                  title: const Text(
                                               
                                                          'Personal Settings',
                                                    style: TextStyle(
                                                       color:  Colors.black,
                                                      fontFamily: 'OpenSans',
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                
                                                  
                                                  onTap: () {
                                                     
                                                         Navigator.push(
                          context,   
                          MaterialPageRoute( 
                              builder: (context) =>  MyProfile2()));
 
                                                  }
                                                ),
                      ),
                 ),

                    
                

                    
                                         
const SizedBox(
                        height: 15,
                      ),



                       SizedBox(
                  height: 55,
                  width: 390, // specific value
                 child: Container(
                         padding: const EdgeInsets.only(left: 0, right: 0, top: 0),
                             decoration: BoxDecoration(
                                color:Colors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                  color: const Color(0xff86E084),
                                ),
                              ),
                    child: ListTile(
                                                  
                                                  
                                                      
                                                       shape: const RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(20))),
                      
                                                  title: const Text(
                                               
                                                          'Pages',
                                                    style: TextStyle(
                                                       color:  Colors.black,
                                                      fontFamily: 'OpenSans',
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                
                                                  
                                                  onTap: () {
                                                     
                                                      
 
                                                  }
                                                ),
                      ),
                 ),

                     SizedBox(
                  height: 55,
                  width: 390, // specific value
                 child: Container(
                         padding: const EdgeInsets.only(left: 0, right: 0, top: 0),
                         decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                  color: const Color(0xff86E084),
                                ),
                              ),
                    child: ListTile(
                                                 
                
                                                       shape: const RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(20))),
                      
                                                  title: const Text(
                                               
                                                          'Logout',
                                                    style: TextStyle(
                                                       color: Colors.black,
                                                      fontFamily: 'OpenSans',
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                
                                                  
                                                  onTap: () {
                                                  

                                                   //  authInstance.signOut();
                                                       
 
                                                  }
                                                ),
                      ),
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