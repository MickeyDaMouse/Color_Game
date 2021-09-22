//Mickey Zhao
//Sept 16th 2021
//Color_Game

//modes
int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;

//colors
color red = #FF0000;
color orange = #FF7F00;
color yellow = #FFFF00;
color green = #00FF00;
color cyan = #00FFFF;
color blue = #0000FF;
color purple = #7F00FF;

//animated gif
PImage[] gif;
int frames;
int frame;//for displaying each frame of the gif

//text font
PFont chalk;

//random numbers
int r1;
int r2;

//timer countdown variable
int timer;
int timelimit = 180;//easy way to change the  time limit
boolean timesup;//check if the game ended because of time's up

//score
int highscore = 0;
int score = 0;

//variable to know if the color matches the word
boolean match;

//words array + colour array
String[] words = new String[7];
color[] colours = new color[7];

//intro page color randomizer variable
int introColor;

void setup()
{
  //text font
  chalk = loadFont("Chalkduster-90.vlw");
  size(1000,800);
  mode = INTRO;
  
  //animated gif
  frames = 126;
  gif = new PImage [frames];
  
  int i=0;
  while(i<frames)
  {
    if(i<10)    gif[i] = loadImage("frame_00"+i+"_delay-0.1s.gif");
    if(i>=10 && i<100)    gif[i] = loadImage("frame_0"+i+"_delay-0.1s.gif");
    if(i>=100)    gif[i] = loadImage("frame_"+i+"_delay-0.1s.gif");
    i=i+1;
  }
  
  //words
  words[0] = "red";
  words[1] = "orange";
  words[2] = "yellow";
  words[3] = "green";
  words[4] = "cyan";
  words[5] = "blue";
  words[6] = "purple";
  
  //colours
  colours[0] = red;
  colours[1] = orange;
  colours[2] = yellow;
  colours[3] = green;
  colours[4] = cyan;
  colours[5] = blue;
  colours[6] = purple;
  
  //randomixing the intro page color
  introColor = int(random(0,7));
}

void draw()
{  
  //different modes
  if(mode == INTRO)    intro();
  else if(mode == GAME)    game();
  else if(mode == GAMEOVER)    gameover();
  
}
