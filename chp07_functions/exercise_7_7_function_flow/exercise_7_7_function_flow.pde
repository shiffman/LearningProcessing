// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 7-7: Predict the output of this program by 
// writing out what would appear in the message window.

void setup() {
  println( "a" );
  function1();
  println( "b" );
}

void draw() {
  println("c");
  function2();
  println("d");
  function1();
  // New! noLoop() is a built-in function in Processing that stops draw() 
  // from looping. In this case, we can use it to ensure that draw() only 
  // executes one time. We could restart it at some other point in the code 
  // by calling the function loop().
  noLoop();
}

void function1() {
  println("e");
  println("f");
}

void function2() {
  println("g");
  // It is perfectly reasonable to call a function from within a function.
  // In fact, we do this all the time whenever we call any function from 
  // inside of setup() or draw().  
  function1(); 
  println("h");
}
