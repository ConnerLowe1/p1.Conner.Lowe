  int disp_X = 50;
  int disp_Y = 50;
  
  int but3_X = 50;
  int but3_Y = 300;
  
  int but2_X = 50;
  int but2_Y = 450;
  
  int but1_X = 50;
  int but1_Y = 600;
  
  int butB_X = 50;
  int butB_Y = 750;
  
  int butOpen_X = 50;
  int butOpen_Y = 900;
  
  int butClose_X = 250;
  int butClose_Y = 900;
  
  int butCall_X = 450;
  int butCall_Y = 300;
  
  int butAlarm_X = 450;
  int butAlarm_Y = 450;
  
  color butColor, butHL, butAct;
  
  boolean but3Hover = false;
  boolean but2Hover = false;
  boolean but1Hover = false;
  boolean butBHover = false;
  boolean butOpenHover = false;
  boolean butCloseHover = false;
  boolean butCallHover = false;
  boolean butAlarmHover = false;
  
  boolean but3Act = false;
  boolean but2Act = false;
  boolean but1Act = false;
  boolean butBAct = false;
  boolean butOpenAct = false;
  boolean butCloseAct = false;
  boolean butCallAct = false;
  boolean butAlarmAct = false;

  PFont button;
  PFont small;
  PFont display;
  
  int currentFloor = 1;
  
  PImage phone;
  PImage bell;

void setup(){

  size(800, 1050);
  
  butColor = color(255);
  butHL = color(150);
  butAct = color(249, 195, 115);
  
  button = createFont("Arial",50);
  small = createFont("Arial",16);
  display = createFont("Arial",180);
  
  phone = loadImage("phone.png");
  bell = loadImage("bell.png");
  
}

int iter = 0;
void draw(){
  
  strokeWeight(2);
  
  fill(0);
  rect(disp_X, disp_Y, 700, 200);
  
  checkHover();
  
  line(400,300,400,1000);  
  
  if(but3Hover && !but3Act){
    fill(butHL);
  }else if(but3Act){
    fill(butAct);
  }else{
    fill(butColor);
  }
  rect(but3_X, but3_Y, 300, 100);
  
  if(but2Hover && !but2Act){
    fill(butHL);
  }else if(but2Act){
    fill(butAct);
  }else{
    fill(butColor);
  }
  rect(but2_X, but2_Y, 300, 100);
  
  if(but1Hover && !but1Act){
    fill(butHL);
  }else if(but1Act){
    fill(butAct);
  }else{
    fill(butColor);
  }
  rect(but1_X, but1_Y, 300, 100);
  
  if(butBHover && !butBAct){
    fill(butHL);
  }else if(butBAct){
    fill(butAct);
  }else{
    fill(butColor);
  }
  rect(butB_X, butB_Y, 300, 100);
  
  if(butOpenHover && !butOpenAct){
    fill(butHL);
  }else if(butOpenAct){
    fill(butAct);
  }else{
    fill(butColor);
  }
  rect(butOpen_X, butOpen_Y, 100, 100);
  
  if(butCloseHover && !butCloseAct){
    fill(butHL);
  }else if(butCloseAct){
    fill(butAct);
  }else{
    fill(butColor);
  }
  rect(butClose_X, butClose_Y, 100, 100);
  
  if(butCallHover && !butCallAct){
    fill(butHL);
  }else if(butCallAct){
    fill(butAct);
  }else{
    fill(butColor);
  }
  rect(butCall_X, butCall_Y, 100, 100);
  
  if(butAlarmHover && !butAlarmAct){
    fill(butHL);
  }else if(butAlarmAct){
    fill(butAct);
  }else{
    fill(butColor);
  }
  rect(butAlarm_X, butAlarm_Y, 100, 100);

  fill(0);
  triangle(95,910,60,950,95,990);
  line(100,910,100,990);
  triangle(105,910,140,950,105,990);
  
  triangle(260,910,295,950,260,990);
  line(300,910,300,990);
  triangle(340,910,305,950,340,990);
  
  textFont(button);
  textAlign(CENTER);
  text('3', width/4, but3_Y+65);
  text('2', width/4, but2_Y+65);
  text('1', width/4, but1_Y+65);
  text('B', width/4, butB_Y+65);
  
  textFont(small);
  text("BLINKING WHEN", butCall_X + 200, butCall_Y+30);
  fill(255);
  circle(butCall_X + 200, butCall_Y+50, 5);
  fill(0);
  text("CALL ACTIVE", butCall_X + 200, butCall_Y + 80);
  
  text("EMERGENCY", butAlarm_X + 200, butAlarm_Y+30);
  text("ALARM", butAlarm_X + 200, butAlarm_Y+60);
  
  image(phone,450,300,100,100);
  image(bell,450,450,100,100);

  fill(255,0,0);
  textFont(display);
  text(checkFloor(), 400, 220);

  iter++;
  
  if(iter==300){
    if(but2Act){
    currentFloor++;
    text(checkFloor(), 400, 200);
    but2Act = false;
    
    if(but3Act){
      currentFloor++;
      text(checkFloor(), 400, 200);
      but3Act = false;
      }
    
    while(currentFloor>1){
      currentFloor--;
      text(checkFloor(), 400, 200);
      }
    }
  }
  
  if(iter>300){
    iter = 0;
  }
}

void moveFloor(){

  fill(255,0,0);
  textFont(display);
  text(checkFloor(), 400, 200);
  
  if(but2Act){
    delay(1000);
    currentFloor++;
    text(checkFloor(), 400, 200);
    delay(500);
    but2Act = false;
    
    if(but3Act){
      delay(1000);
      currentFloor++;
      text(checkFloor(), 400, 200);
      delay(500);
      but3Act = false;
    }
    
    while(currentFloor>1){
      delay(1000);
      currentFloor--;
      text(checkFloor(), 400, 200);
    }
  }
}

char checkFloor(){
  char toRet = 'A';
  switch(currentFloor){
    case 3: 
      toRet = '3';
      break;
    case 2: 
      toRet = '2';
      break;
    case 1: 
      toRet = '1';
      break;
    case 0: 
      toRet = 'B';
      break;
  }
  return toRet;
}

void mousePressed() {
  if (but3Hover){
    but3Act = !but3Act;
  }
  if (but2Hover){
    but2Act = !but2Act;
  }
  if (but1Hover){
    but1Act = !but1Act;
  }
  if (butBHover){
    butBAct = !butBAct;
  }
  if (butOpenHover){
    butOpenAct = !butOpenAct;
  }
  if (butCloseHover){
    butCloseAct = !butCloseAct;
  }
  if (butCallHover){
    butCallAct = !butCallAct;
  }
  if (butAlarmHover){
    butAlarmAct = !butAlarmAct;
  }
}

void checkHover(){
  if(threeHover()){
    but3Hover = true;
    but2Hover = false;
    but1Hover = false;
    butBHover = false;
    butOpenHover = false;
    butCloseHover = false;
    butCallHover = false;
    butAlarmHover = false;
  }
  
  if(twoHover()){
    but3Hover = false;
    but2Hover = true;
    but1Hover = false;
    butBHover = false;
    butOpenHover = false;
    butCloseHover = false;
    butCallHover = false;
    butAlarmHover = false;
  }
  
  if(oneHover()){
    but3Hover = false;
    but2Hover = false;
    but1Hover = true;
    butBHover = false;
    butOpenHover = false;
    butCloseHover = false;
    butCallHover = false;
    butAlarmHover = false;
  }
  
  if(bHover()){
    but3Hover = false;
    but2Hover = false;
    but1Hover = false;
    butBHover = true;
    butOpenHover = false;
    butCloseHover = false;
    butCallHover = false;
    butAlarmHover = false;
  }
  
  if(openHover()){
    but3Hover = false;
    but2Hover = false;
    but1Hover = false;
    butBHover = false;
    butOpenHover = true;
    butCloseHover = false;
    butCallHover = false;
    butAlarmHover = false;
  }
  
  if(closeHover()){
    but3Hover = false;
    but2Hover = false;
    but1Hover = false;
    butBHover = false;
    butOpenHover = false;
    butCloseHover = true;
    butCallHover = false;
    butAlarmHover = false;
  }
  
  if(callHover()){
    but3Hover = false;
    but2Hover = false;
    but1Hover = false;
    butBHover = false;
    butOpenHover = false;
    butCloseHover = false;
    butCallHover = true;
    butAlarmHover = false;
  }
  
  if(alarmHover()){
    but3Hover = false;
    but2Hover = false;
    but1Hover = false;
    butBHover = false;
    butOpenHover = false;
    butCloseHover = false;
    butCallHover = false;
    butAlarmHover = true;
  }
  
  if(!threeHover() && !twoHover() && !oneHover() && !bHover() && !openHover() && !closeHover() &&
     !callHover() && !alarmHover()){
    but3Hover = false;
    but2Hover = false;
    but1Hover = false;
    butBHover = false;
    butOpenHover = false;
    butCloseHover = false;
    butCallHover = false;
    butAlarmHover = false;     
  }
}

boolean threeHover(){
  if (mouseX >= but3_X && mouseX <= but3_X+300 &&
      mouseY >= but3_Y && mouseY <= but3_Y+100) {
    return true;
  } else {
    return false;
  }
}

boolean twoHover(){
  if (mouseX >= but2_X && mouseX <= but2_X+300 &&
      mouseY >= but2_Y && mouseY <= but2_Y+100) {
    return true;
  } else {
    return false;
  }
}

boolean oneHover(){
  if (mouseX >= but1_X && mouseX <= but1_X+300 &&
      mouseY >= but1_Y && mouseY <= but1_Y+100) {
    return true;
  } else {
    return false;
  }
}

boolean bHover(){
  if (mouseX >= butB_X && mouseX <= butB_X+300 &&
      mouseY >= butB_Y && mouseY <= butB_Y+100) {
    return true;
  } else {
    return false;
  }
}

boolean openHover(){
  if (mouseX >= butOpen_X && mouseX <= butOpen_X+100 &&
      mouseY >= butOpen_Y && mouseY <= butOpen_Y+100) {
    return true;
  } else {
    return false;
  }
}

boolean closeHover(){
  if (mouseX >= butClose_X && mouseX <= butClose_X+100 &&
      mouseY >= butClose_Y && mouseY <= butClose_Y+100) {
    return true;
  } else {
    return false;
  }
}

boolean callHover(){
  if (mouseX >= butCall_X && mouseX <= butCall_X+100 &&
      mouseY >= butCall_Y && mouseY <= butCall_Y+100) {
    return true;
  } else {
    return false;
  }
}

boolean alarmHover(){
  if (mouseX >= butAlarm_X && mouseX <= butAlarm_X+100 &&
      mouseY >= butAlarm_Y && mouseY <= butAlarm_Y+100) {
    return true;
  } else {
    return false;
  }
}