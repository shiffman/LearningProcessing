/**
 * Loading Tabular Data
 * by Daniel Shiffman.  
 * 
 * This example demonstrates how to use loadTable()
 * to retrieve data from a CSV file and make objects 
 * from that data.
 *
 * Here is what the CSV looks like:
 *
 x,y,diameter,name
 160,103,43.19838,Happy
 372,137,52.42526,Sad
 273,235,61.14072,Joyous
 121,179,44.758068,Melancholy
 */

// An Array of Bubble objects
Bubble[] bubbles;
// A Table object
Table table;

void setup() {
  size(480, 240);
  loadData();
}

void draw() {
  background(255);
  // Display all bubbles
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i].display();
    bubbles[i].rollover(mouseX, mouseY);
  }

  textAlign(LEFT);
  fill(0);
  text("Click to add bubbles.", 10, height-10);
}

void loadData() {
  // Load CSV file into a Table object
  // "header" option indicates the file has a header row
  table = loadTable("data.csv", "header");

  // The size of the array of Bubble objects is determined by the total number of rows in the CSV
  bubbles = new Bubble[table.getRowCount()]; 

  // You can access iterate over all the rows in a table
  for (int i = 0; i < table.getRowCount(); i++) {
    TableRow row = table.getRow(i);
    // You can access the fields via their column name (or index)
    float x = row.getFloat("x");
    float y = row.getFloat("y");
    float d = row.getFloat("diameter");
    String n = row.getString("name");
    // Make a Bubble object out of the data read
    bubbles[i] = new Bubble(x, y, d, n);
  }
}

void mousePressed() {
  // Create a new row
  TableRow row = table.addRow();
  // Set the values of that row
  row.setFloat("x", mouseX);
  row.setFloat("y", mouseY);
  row.setFloat("diameter", random(40, 80));
  row.setString("name", "Blah");

  // If the table has more than 10 rows
  if (table.getRowCount() > 10) {
    // Delete the oldest row
    table.removeRow(0);
  }

  // Writing the CSV back to the same file
  saveTable(table, "data/data.csv");
  // And reloading it
  loadData();
}

