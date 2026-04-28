var starXPos = [];
var starYPos = [];
var star = "🦄 ";
var starTotal = 130;

var planetXPos = [];
var planetYPos = [];
var planet = "🧚‍♀️";
var planetTotal = 10;
var planetFound = 0;

setup = function() {
   size(600, 450); 

   reset();
}

draw = function(){   

   if(keyPressed){
    if(key == 'r'){
      reset();
    }
   }

  display();
// THE LINE THE LINES THE LINES
//for loop(start; how long; change)
for (var x=0; x<400; x+=20){
  line(0, x, 400, x)
}


// NEW EMOJIS ON THE BLOCK
// while loop
var x = 0; 
while (x < 400){
  text ("🎀", x, 340);
  x +=20;
}


// FUN FUN FUN 
//array
var myEMOJIS = ["🎨" , "👙"]

fill(255, 0, 0)
text(myEMOJIS[0], 10, 30);
text(myEMOJIS[1], 10, 80);

}


mouseClicked = function(){
  check(mouseX, mouseY);
}

var check = function(xClick, yClick){
  for(var i = 0; i < planetXPos.length; i++){
    if(dist(xClick - 5, yClick - 5, planetXPos[i], planetYPos[i])<15){
      planetXPos.splice(i, 1);
      planetYPos.splice(i, 1);
      planetFound++;
    }
  }
}

var display = function(){
  background(100,100,100);

  fill(200,200,0);
  textSize(20);

  for(var i = 0; i < planetXPos.length; i ++){
    text(planet, planetXPos[i], planetYPos[i]);
  }

  for(var i = 0; i < starXPos.length; i ++){
    text(star, starXPos[i], starYPos[i]);
  }

  fill(0,0,0);
  rect(0,400,600,50);
  fill(255,255,255);
  text("Find The " + planet + "s   |   " + planet + " " + planetFound + "/" + planetTotal, 0, 425);

  if(planetFound == planetTotal){
    fill(0, 200, 200);
    textSize(50);
    text("Press 'r' to restart \nthe game", 50, 200);
  }
}

var reset = function(){
  starXPos = [];
  starYPos = [];
  planetXPos = [];
  planetYPos = [];
  planetFound = 0;


  for(var i = 0; i < starTotal; i++){
    starXPos.push(random(0,600));
    starYPos.push(random(0,400));
  }

  for(var i = 0; i < planetTotal; i++){
    planetXPos.push(random(0,600));
    planetYPos.push(random(0,400));
  }
}