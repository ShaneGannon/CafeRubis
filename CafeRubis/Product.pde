class Product
{
   String name;
   Float price;
  
  Product(String name, Float price)
  {
    this.name = name;
    this.price = price;
  }
  
  
  Product(TableRow column)
  {
    //assign names and prices using the positions in the table
     name = column.getString("Name");
     price = column.getFloat("Price");
  }
  
  String toString()
  {
    return name + ","
           + price;
  }
  
}