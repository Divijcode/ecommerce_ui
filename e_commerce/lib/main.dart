import 'package:flutter/material.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: ShoppingScreen(),
    );
  }
}


class ShoppingScreen extends StatefulWidget {
  @override
  _ShoppingScreenState createState() => _ShoppingScreenState();
}

class _ShoppingScreenState extends State<ShoppingScreen> with SingleTickerProviderStateMixin{
   double bodyopacity=1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Home'),
        leading: Icon(Icons.wrap_text),
      ),
      body: SafeArea(
        child: Opacity(
          opacity: bodyopacity,
          child: Container(

            color: Colors.teal.shade50,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:20,left:20,right: 20),
                  child: TextField(
                    cursorColor: Colors.teal,

                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Search',

                      contentPadding:
                      const EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                        disabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(25.7),
                        ),

                      border:   OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            borderSide: BorderSide(width: 1,color: Colors.blue),


          ),
                      suffixIcon: Icon(Icons.search,color: Colors.grey,)
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right:20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Text(
                              'Our',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontStyle: FontStyle.italic,
                                  fontSize: 18.0,
                                    color:Colors.grey.shade700,
                                  fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                                'Products',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontSize: 23.0,
                                  fontStyle: FontStyle.italic,

                                  fontWeight: FontWeight.bold
                              ),
                            ),

                          ],
                        ),
                      ),
                      Align(
                          alignment: Alignment.centerRight,child: Text('View all >',
                        style: TextStyle(


                           color: Colors.teal.shade700
                        ),
                      )),
                    ],
                  ),
                ),
                SizedBox(height: 6,),
                Padding(
                  padding: const EdgeInsets.only(left:20.0,right:20),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Card(
                          elevation: 20,
                          color: Colors.teal,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Trousers',style: TextStyle(
                              fontWeight: FontWeight.w600,
                            color: Colors.white,
                            letterSpacing: 1),),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Card(
                          color: Colors.yellow.shade600,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Shirts',style: TextStyle(
                              fontWeight: FontWeight.w500, letterSpacing: 1),),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(80),
                        ),
                        child: Card(
                          color: Colors.yellow.shade600,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Accessories',style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: ListView(
    scrollDirection: Axis.horizontal,
                              children: <Widget>[
                               Padding(
                                 padding: const EdgeInsets.all(8.0),
                                 child: Container(
                                   height: 300,
                                   width: 250,
                                   child: Card(
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(40.0),
                                     ),
                                     elevation: 5,


                                     child: Padding(
                                       padding: const EdgeInsets.all(30.0),
                                       child: Column(
                                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                         children: [
                                          Expanded(
                                            child: Image.network("https://versatylwear.com/wp-content/uploads/2018/07/01-versatyl-stretchable-joggers-jeans-dark-blue.jpg",
                                            ),
                                          ),
                                           Text('Pepe Jeans A59',
                                             textAlign: TextAlign.right,
                                             style: TextStyle(
                                                 fontSize: 22.0,

                                                 fontWeight: FontWeight.bold,
                                             ),),
                                           SizedBox(
                                             height:15,
                                           ),
                                           Align(
                                             alignment: Alignment.centerRight,
                                             child: Text('\$ 300.0',
                                               textAlign: TextAlign.right,
                                               style: TextStyle(
                                                   fontSize: 20.0,
                                              color: Colors.teal.shade700,
                                                   fontWeight: FontWeight.bold
                                               ),),
                                           ),
                                           SizedBox(
                                             height: 10,
                                           ),
                                           Material(
                                             color: Colors.yellow.shade600,
                                             borderRadius: BorderRadius.circular(30.0),
                                             child: MaterialButton(onPressed: null, child: Padding(
                                               padding: const EdgeInsets.only(right:25.0,left: 25),
                                               child: Text(
                                                 'Add to Cart',
style: TextStyle(
  fontSize: 17.0,
  color: Colors.white,
  fontWeight: FontWeight.bold
),
                                               ),
                                             ),

                                             ),
                                           ),
                                         ],
                                       ),
                                     ),
                                   ),
                                 ),
                               ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    height: 300,
                                    width: 250,
                                    child: Card(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40.0),
                                      ),
                                      elevation: 5,


                                      child: Padding(
                                        padding: const EdgeInsets.all(30.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Expanded(
                                              child: Image.network("https://st.depositphotos.com/1875497/3838/i/950/depositphotos_38385237-stock-photo-jeans-pants-isolated-white-background.jpg",
                                              ),
                                            ),
                                            Text('Trousers #15',
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                  fontSize: 23.0,

                                                  fontWeight: FontWeight.bold
                                              ),),
                                            SizedBox(
                                              height:15,
                                            ),
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: Text('\$ 300.0',
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                    fontSize: 20.0,
                                                    color: Colors.teal.shade700,
                                                    fontWeight: FontWeight.w200
                                                ),),
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Material(
                                              color: Colors.yellow.shade600,
                                              borderRadius: BorderRadius.circular(30.0),
                                              child: MaterialButton(onPressed: null, child: Text(
                                                'Add to Cart',
                                                style: TextStyle(
                                                    fontSize: 25.0,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),

                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            ),
                  ),
                Container(
                  height: 70,
                ),


              ],

            ),
          ),
        ),

      ),
            bottomSheet: SolidBottomSheet(

              
    maxHeight: 400,

    headerBar: GestureDetector(
      onTap: (){

      },

      child: Container(
        decoration: BoxDecoration(
            color: Colors.teal.shade400,
            borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft:Radius.circular(20))
        ),

      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,



        children:[
          CircleAvatar(
            backgroundColor: Colors.teal,
            child: Image.network("https://versatylwear.com/wp-content/uploads/2018/07/01-versatyl-stretchable-joggers-jeans-dark-blue.jpg",
            ),
          ),
          SizedBox(width: 10,),
          CircleAvatar(
            backgroundColor: Colors.teal,
            child: Image.network("https://www.pngarts.com/files/5/Plain-Red-T-Shirt-PNG-Image-Transparent-Background.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right:15.0,top:15,bottom:15,left:150),
            child: Material(

              color: Colors.yellow.shade600,
              borderRadius: BorderRadius.circular(30.0),
              child: MaterialButton(onPressed: null,

                child: Text(
                'Cart',
                style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),

              ),
            ),
          ),
        ]

      ),
      ),
    ),
              body: Container(

                  color: Colors.teal.shade50,


                  child: Column(
                    children: [

                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: ListTile(

                            leading: Image.network("https://versatylwear.com/wp-content/uploads/2018/07/01-versatyl-stretchable-joggers-jeans-dark-blue.jpg",
                            ),
                            title: Text('Trousers #15',style: TextStyle(
                                fontSize: 18.0,

                                fontWeight: FontWeight.bold
                            ),),
                            subtitle: Text('\$ 300.00',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.teal.shade700,

                                  fontWeight: FontWeight.bold
                              ),),
                            trailing: CircleAvatar(
                                backgroundColor: Colors.teal.shade100,
                                child: Icon(Icons.plus_one_rounded,color: Colors.black)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          child: ListTile(

                            leading: Image.network("https://www.pngarts.com/files/5/Plain-Red-T-Shirt-PNG-Image-Transparent-Background.png",
                            ),
                            title: Text('Nike T-Shirt e93',style: TextStyle(
                                fontSize: 18.0,

                                fontWeight: FontWeight.bold
                            ),),
                            subtitle: Text('\$ 220.00',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.teal.shade700,

                                  fontWeight: FontWeight.bold
                              ),),
                            trailing: CircleAvatar(
                                backgroundColor: Colors.teal.shade100,
                                child: Icon(Icons.plus_one_rounded,color: Colors.black,)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Divider(
                          height: 10,
                          thickness: 2,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('2 items',style: TextStyle(
                              color: Colors.grey.shade600,

                            ),),
                          ),
                            Padding(
                              padding: const EdgeInsets.all(17.0),
                              child: Text('\$ 520.00',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  fontStyle: FontStyle.italic,

                                ),),
                            ),
                        ],
                      ),
                        SizedBox(height: 45,),
                        Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.teal.shade400,
                              borderRadius: BorderRadius.circular(35),
                            ),
                            width:MediaQuery.of(context).size.width,


                            child: Center(
                              child: Text(
                                'Make Order',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                  color: Colors.white,
                                ),

                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
              ),

            ),
    );
  }
}
