// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Exercise 10-4: The raindrop catching game

Catcher catcher;    // One catcher object
Timer timer;        // One timer object
Drop[] drops;       // An array of drop objects
int totalDrops = 0; // totalDrops

// A boolean to let us know if the game is over
boolean gameOver = false;

// Variables to keep track of score, level, lives left
int score = 0;      // User's score
int level = 1;      // What level are we on
int lives = 10;     // 10 lives per level (10 raindrops can hit the bottom)
int levelCounter = 0;

PFont f;

void setup() {
  size(400,400);
  smooth();
  catcher = new Catcher(32); // Create the catcher with a radius of 32
  drops = new Drop[50];    // Create 50 spots in the array (each level now just has 25 drops)
  timer = new Timer(300);   // Create a timer that goes off every 2 seconds
  timer.start();             // Starting the timer

  f = createFont("Arial",12,true); // A font to write text on the screen
}

void draw() {
  background(255);

  // If the game is over
  if (gameOver) {
    textFont(f,48);
    textAlign(CENTER);
    fill(0);
    text("GAME OVER",width/2,height/2);
  } 
  else {

    // Set catcher location
    catcher.setLocation(mouseX,mouseY); 
    // Display the catcher
    catcher.display(); 

    // Check the timer
    if (timer.isFinished()) {
      // Deal with raindrops
      // Initialize one drop
      if (totalDrops < drops.length) {
        drops[totalDrops] = new Drop();
        // Increment totalDrops
        totalDrops++;
      }
      timer.start();
    }

    // Move and display all drops
    for (int i = 0; i < totalDrops; i++ ) {
      if (!drops[i].finished) {
        drops[i].move();
        drops[i].display();
        if (drops[i].reachedBottom()) {
          levelCounter++;
          drops[i].finished(); 
          // If the drop reaches the bottom a live is lost
          lives--;
          // If lives reach 0 the game is over
          if (lives <= 0) {
            gameOver = true; 
          }
        } 

        // Everytime you catch a drop, the score goes up
        if (catcher.intersect(drops[i])) {
          drops[i].finished();
          levelCounter++;
          score++;
        }
      }
    }


    // If all the drops are done, that leve is over!
    if (levelCounter >= drops.length) {
      // Go up a level
      level++;
      // Reset all game elements
      levelCounter = 0;
      lives = 10;
      timer.setTime(constrain(300-level*25,0,300));
      totalDrops = 0; 
    }





    // Display number of lives left
    textFont(f,14);
    fill(0);
    text("Lives left: " + lives,10,20);
    rect(10,24,lives*10,10);

    text("Level: " + level,300,20);
    text("Score: " + score,300,40);
  }


}






