//Shane Gannon C16336676

void setup()
{
  size(800, 600);
  
  loadData();
  printProducts();
}

ArrayList<Product> products = new ArrayList<Product>();
ArrayList<Product> bill;

void loadData()
{
  Table table = loadTable("cafe.csv", "header");
    for(TableRow r:table.rows())
      {
        //create a new element for each row in the table
        Product product = new Product(r);
        
        //add each product into the ArrayList called products
        products.add(product);
      }
}

void printProducts()
{
  for(Product p:products)
  {
    println(p.name);
  }
  
  for(int i = 0; i > products.size(); i++)
    {
      Product p = products.get(i);
      println(p.name);
    }
}

void displayProducts()
{
  //heading
  stroke(8);
  fill(0);
  textSize(40);
  textAlign(CENTER, BOTTOM);
  text("Cafe Rubis Till System", width / 2, height - (height / 1.1));
  
  //center line
  float x = 1.2;
  line( width / 2, height - (height / x), width / 2, height - (height / 8.4));
  
  //create table for drinks and prices using a loop
  int l = width / 8;//box border lhs
  float r = height / 9;
  int i = 0;
  x = 1.2;
  for(i = 0; i < 7;  i++)
  fill(255);
  {
    rect(l, r, width / 3, height / 10);
    rect(l, 2*r, width / 3, height / 10);
    rect(l, 3*r, width / 3, height / 10);
    rect(l, 4*r, width / 3, height / 10);
    rect(l, 5*r, width / 3, height / 10);
    rect(l, 6*r, width / 3, height / 10);
    rect(l, 7*r, width / 3, height / 10);
  }
  
  //Comments for how i would have completed the menu
  /* Use a loop to read and write info from the table (name and price) and 
      using the nf text align align name and price to left and right respectively
  */
}

void displayBill()
{
  /*would have created a rectangle to hold bill and use the array list to write info 
    and used a simple addition function of total = total + new for the total of the bill
   */
}


void draw()
{
  background(128, 128,128);
  displayBill();
  displayProducts();
}