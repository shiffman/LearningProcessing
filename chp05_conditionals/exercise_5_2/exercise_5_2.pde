// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 5-2: Examine the following code samples and determine what will appear in the message window. Write down your answer and then execute the code in Processing to compare.

int x = 75;
if (x > 50) {
  println(x + " is greater than 50! " );
} else if (x > 25) {
  println(x + " is greater than 25! " );
} else {
  println(x + " is 25 or less! " );
}

/*
OUTPUT:____________________
*/




int x = 75;
if(x > 25) {
  println(x + " is greater than 25! " );
} else if (x > 50) {
  println(x + " is greater than 50! " );
} else {
  println(x + " is 25 or less! " );
}

/*
OUTPUT:____________________
*/