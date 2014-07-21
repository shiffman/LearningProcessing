// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 17-6: Stock Ticker 

// An array of stock objects
Stock[] stocks = new Stock[6];
float totalW = 0;

PFont f; // Global font variable

void setup() {
  size(400, 200);
  f = createFont( "Arial", 16);

  // Giving the stocks names and values to display
  stocks[0] = new Stock("ZOOG", 903);
  stocks[1] = new Stock("FOR", 55);
  stocks[2] = new Stock("ELSE", 100);
  stocks[3] = new Stock("BLAH", 100);
  stocks[4] = new Stock("OF", 100);
  stocks[5] = new Stock("PROC", 92);  

  // We space the stock quotes out according to textWidth()
  float x = 0;
  for (int i = 0; i < stocks.length; i++) {
    stocks[i].setX(x);
    x = x + (stocks[i].textW());
  }
  totalW = x;
}

void draw() {
  background(255);
  fill(0);



  // Move and display all quotes
  for (int i = 0; i < stocks.length; i++) {
    stocks[i].move();
    stocks[i].display();
  }
}

