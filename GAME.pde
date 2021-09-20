void game()
{
  background(0);
  
  //score
  textSize(40);
  fill(255);
  text("Score: "+score,100,25);
  
  //same + not same buttons
  fill(0);
  rectMode(CENTER);
  stroke(255);
  strokeWeight(10);
  rect(width/4,height/2,400,300);
  fill(0);
  rect(width/4*3,height/2,400,300);
  
  fill(purple);
  textSize(100);
  text("SAME",width/4,height/2);
  text("NOT\nSAME",width/4*3,height/2);
  
  
  
  r1 = int(random(0,6));
  r2 = int(random(0,6));
  fill(colours[r2]);
  text(words[r1],width/2,height/2);
  
}

void gameClick()
{
  
}
