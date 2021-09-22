void game()
{
  //time limit
  if(timer > 0)
  {
    
    background(0);
    
    //countdown line
    fill(int(random(0,256)),int(random(0,256)),int(random(0,256)));
    rect(width/2,50,timer*3,50);
    
    //score
    textSize(40);
    fill(255);
    text("Score: "+score,100,25);
    
    //same + not same buttons
    fill(0);
    rectMode(CENTER);
    stroke(255);
    strokeWeight(10);
    rect(width/4,height-200,400,300);
    fill(0);
    rect(width/4*3,height-200,400,300);
    
    fill(255);
    textSize(100);
    text("SAME",width/4,height-200);
    text("NOT\nSAME",width/4*3,height-200);
    
    //drawing the random word and color
    fill(colours[r2]);
    text(words[r1],width/2,height/2 - 100);
      
    fill(colours[r2]);
    text(words[r1],width/2,height/2 - 100);

  }
  else
  {
    timesup = true;
    mode = GAMEOVER;
  }
  timer --;
}

void gameClick()
{
  
  if(mouseX>width/4-200 && mouseX<width/4+200 && mouseY>height-350 && mouseY<height-50)
  {
    if(match)
    {
      score ++;
      r1 = int(random(0,7));//randomize word
      if(int(random(0,2))==0)//50% chance
      {
        match = true;
        r2 = r1;
      }
      else
      {
        match = false;
        r2 = int(random(0,7));//randomize color
        while(r1 == r2)
        {
          r2 = int(random(0,7));//continue to randomize color until it is different from word
        }
      }
      timer = timelimit;//resetting the timer
    }
    else
    {
      mode = GAMEOVER;
    }
  }
  
  if(mouseX>width/4*3-200 && mouseX<width/4*3+200 && mouseY>height-350 && mouseY<height-50)
  {
    if(!match)
    {
      score ++;
      r1 = int(random(0,7));//randomize word
      if(int(random(0,2))==0)//50% chance
      {
        match = true;
        r2 = r1;
      }
      else
      {
        match = false;
        r2 = int(random(0,7));//randomixing color
        while(r1 == r2)
        {
          r2 = int(random(0,7));//continue to randomize color until it is different from word
        }
      }
      timer = timelimit;//resetting the timer
    }
    else
    {
      mode = GAMEOVER;
    }
  }
  
  
}
