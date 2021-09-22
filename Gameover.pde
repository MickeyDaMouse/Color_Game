void gameover()
{
  //compairing if score is higher than highscore
  if(score > highscore)
  {
    highscore = score;
  }
  
  //drawing the gameover screen and displaying highscore + score
  background(red);
  fill(255);
  textSize(100);
  text("GAMEOVER",width/2,height/2);
  text("Score: " + score, width/2, height/4*3-70);
  text("High Score: " + highscore,width/2,height/4*3+30);
  
  //displaying "you ran out of time" if the player ran out of time
  if(timesup)
  {
    textSize(50);
    text("You ran out of time",width/2, height/4);
  }
  //displaying "You clicked the wrong answer" when choosen incorrectly
  else
  {
    textSize(50);
    text("You clicked the wrong answer",width/2, height/4);
  }
  
  //click to continue
  textSize(60);
  fill(0);
  text("click to restart", width/2,height/4*3+150);
}

void gameoverClick()
{
  //resetting variables
  timesup = false;
  score = 0;
  introColor = int(random(0,7));
  frame = 0;
  mode = INTRO;
}
