FSM game;

State attractMode = new State(this, "enterAttract", "doAttract", "exitAttract");
State playMode = new State(this, "enterPlay", "doPlay", "exitPlay");

void setup() {
  game = new FSM(attractMode);
}

void draw() {
  game.update();
}

void enterAttract() {
  println("enter attract");
}

void doAttract() {
  background(255, 0, 0);
}

void exitAttract() {
  println("exit Attract");
}

void enterPlay() {
  println("enter play");
}

void doPlay() {
  background(0, 255, 0);
}

void exitPlay() {
  println("exit play");
}

void mousePressed() {
  if (game.isInState(attractMode)) {
    game.transitionTo(playMode);
  } 
  else if(game.isInState(playMode)) {
    game.transitionTo(attractMode);
  }
}

