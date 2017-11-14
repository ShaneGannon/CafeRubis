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
  
}

void displayProducts()
{

}

void draw()
{
  background(128, 128,128);
  stroke(0);
  displayProducts();
}