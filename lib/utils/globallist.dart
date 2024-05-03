List productlist =[

  {
    'name' : 'Ordinary Burgers',
    'category' :1,
    'price' : 200,
    'image' :'assets/burger2.webp',
  },
  {
    'name' : 'Burger With Meat',
    'category' :1,
    'price' : 300,
    'image' :'assets/meat.jpg',
  },

  {
    'name' : 'Meat mania Bu',
    'category' :1,
    'price' : 400,
    'image' :'assets/meat.png',
  },
  {
    'name' : ' Cheese Burger',
    'category' :1,
    'price' : 500,
    'image' :'assets/cheese.png',
  },

];
List cartList = [];

int count = 0;

double amount = 0;
double Total = 0;









// bottomNavigationBar: GestureDetector(
// onTap: () {
// for(int i=0; i<cartList.length; i++)
// {
// count=(count+cartList[i]['qut']).toInt();
// amount = amount + cartList[i]['price'];
//
// }
// Total = ((amount * 18 )/100)+ amount;
// Navigator.of(context).pushNamed('/Check');
// },
// child: BottomAppBar(
// height: 70,
// color: Colors.grey.shade800,
// child: Container(
// alignment: Alignment.center,
// height: 20,
// width: double.infinity,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// ),
// child: Text('CheckOut',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
// ),
// ),
// ),