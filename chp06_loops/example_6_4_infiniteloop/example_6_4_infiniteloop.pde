// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 6-4: Infinite loop. Don't do this!

int x = 0;
while (x < 10) {
  println(x);
  // Decrementing x results in an infinite loop here because the value of x will never be 10 or greater. 
  // Be careful!
  x = x - 1; 
  
  // This line quits the loop so that this sketch does not crash
  // Comment it out to see Processing crash! (save everything else first!)
  break; 
  
}
