int fieldWidth = 800;        // Set the width of the field
int fieldHeight = 600;       // Set the height of the field

int ballWidth = 100;          // Set the width of the ball
int ballHeight = 100;         // Set the height of the ball

int ballX = 10;              // Inital x position of the ball
int ballY = 10;              // Inital y position of the ball

int xDir = 1;                // Inital x direction of the ball
int yDir = 0;                // Inital y direction of the ball

int startX;                  // Remember the starting X position of the ball
int startY;                  // Remember the starting Y position of the ball

void setup() {

  ballX = ballX+(ballWidth/2);                   // Make sure the ball starts on an edge
  ballY = ballY+(ballHeight/2);                  // Make sure the ball starts on an edge

  size(fieldWidth, fieldHeight);                 // Set the dimensions of the field
  frameRate(500);                                // Set the speed
}

void draw() { 
  switch(xDir) {                                 // Which way horizontally should we move the ball?
  case 0:
    ballX++;                                     // Move the ball right
    break;
  case 1:
    ballX--;                                     // Move the ball left
    break;
  }

  switch(yDir) {                                 // Which way vertically should we move the ball?
  case 0:
    ballY++;                                     // Move the ball up
    break;
  case 1:
    ballY--;                                     // Move the ball down
    break;
  }

  if (ballX==(fieldWidth-(ballWidth/2))) {       // If the ball reaches the right edge...
    xDir = 1;                                    // Move the ball left
  }

  if (ballX==(ballWidth/2)) {                    // if the ball reaches the left edge...
    xDir = 0;                                    // Start moving the ball right
  }

  if (ballY==(fieldHeight-(ballHeight/2))) {     // If the ball reaches the top edge...
    yDir = 1;                                    // Start moving the ball down
  }

  if (ballY==(ballHeight/2)) {                   // If the ball reaches the bottom edge...
    yDir = 0;                                    // Start moving the ball up
  }

  // Draw stuff
  colorMode(HSB);                                // HSB color mode
  background(100, 155, 155);                     // Make the field a nice green

  noStroke();                                    // Remove stroke from the ball
  ellipse(ballX, ballY, ballWidth, ballHeight);  // Draw the ball
}

