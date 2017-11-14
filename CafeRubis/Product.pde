class Product
{
   String name;
   Float price;
  
  Product(TableRow column)
  {
     name = column.getString("name");
     price = column.getFloat("price");
  }
  
  
}