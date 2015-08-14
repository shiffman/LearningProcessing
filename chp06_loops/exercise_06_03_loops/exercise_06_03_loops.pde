// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 6-3: Following are some additional examples 
// of loops. Match the appropriate screenshot with the 
// loop structure. Each example assumes the same four 
// lines of initial code.

size(300,300); // Just setting up the size
background(255); // White background
stroke(0); // Shapes have black lines
noFill(); // Shapes are not filled in

for (int i = 0; i < 10; i++) {
  rect(i*20,height/2, 5, 5);
}

//int i = 0;
//while (i < 10) {
  //ellipse(width/2,height/2, i*10, i*20);
  //i++;
//}

//for (float i = 1.0; i < width; i *= 1.1) {
  //rect(0,i,i,i*2);
//}

//int x = 0;
//for (int c = 255; c > 0; c -= 15) {
  //fill(c);
  //rect(x,height/2,10,10);
  //x = x + 10;
//}
