void intro()
{
    
  //animated gif
  image(gif[frame],0,0,width,height);
  frame ++;
  if(frame>125)    frame = 0;
  
  
  //intro page
  textSize(50);
  
  //randomizing the color
  fill(colours[introColor]);
  textAlign(CENTER,CENTER);
  textFont(chalk);
  text("Color Game!",width/2,100);

  
}

void introClick()
{
  r1 = int(random(0,7));
  if(int(random(0,2))==0)
  {
    match = true;
    r2 = r1;
  }
  else
  {
    match = false;
    r2 = int(random(0,7));
    while(r1 == r2)
    {
      r2 = int(random(0,7));
    }
  }
  timer = timelimit;
  mode = GAME;
}
