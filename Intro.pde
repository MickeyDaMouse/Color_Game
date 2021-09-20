void intro()
{
    
  //animated gif
  image(gif[frame],0,0,width,height);
  frame ++;
  if(frame>125)    frame = 0;
  
  
  //intro page
  textSize(50);
  fill(255,0,0);
  textAlign(CENTER,CENTER);
  textFont(chalk);
  text("Color Game!",width/2,100);

  
}

void introClick()
{
  mode = GAME;
}
