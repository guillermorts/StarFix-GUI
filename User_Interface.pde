float quadTimerX=0, quadTimerY=0, quadTimerR=0;
float quadBodyX=0, quadBodyY=0, quadBodyR=0;
float quadArmX=0, quadArmY=0, quadArmR=0;
float quadHandX=0, quadHandY=0, quadHandR=0;
float quadFingerX=0, quadFingerY=0, quadFingerR=0;
float quadAnkleX=0, quadAnkleY=0, quadAnkleR=0;
float quadLegX=0, quadLegY=0, quadLegR=0;
float quadReturn1X=0, quadReturn1Y=0, quadReturn1R=0;
float quadReturn2X=0, quadReturn2Y=0, quadReturn2R=0;
float quadPlay1X=0, quadPlay1Y=0, quadPlay1R=0;
float quadPlay2X=0, quadPlay2Y=0, quadPlay2R=0;
float quadStopX=0, quadStopY=0, quadStopRW=0, quadStopRH=0;
float quadPlus15X=0, quadPlus15Y=0, quadPlus15R=0;
float quadMinus15X=0, quadMinus15Y=0, quadMinus15R=0;
float quadPlus30X=0, quadPlus30Y=0, quadPlus30R=0;
float quadMinus30X=0, quadMinus30Y=0, quadMinus30R=0;
float windUp1X=0, windUp1Y=0, windUp1RW=0, windUp1RH=0;
float quadOkX=0, quadOkY=0, quadOkRW=0, quadOkRH=0;
float timerX=0, timerY=0, timerR=0;


int mode=0;
int min=0, sec=45, timerCount=0, countFrames=0;

boolean overQuadTimer=false, quadTimerPressed=false;
boolean overQuadBody=false, quadBodyPressed=false;
boolean overQuadArm=false, quadArmPressed=false;
boolean overQuadHand=false, quadHandPressed=false;
boolean overQuadFinger=false, quadFingerPressed=false;
boolean overQuadAnkle=false, quadAnklePressed=false;
boolean overQuadLeg=false, quadLegPressed=false;
boolean overQuadReturn1=false, quadReturn1Pressed=false;
boolean overQuadReturn2=false, quadReturn2Pressed=false;
boolean overQuadPlay1=false, quadPlay1Pressed=false;
boolean overQuadPlay2=false, quadPlay2Pressed=false;
boolean overQuadStop=false, quadStopPressed=false;
boolean overQuadPlus15=false, quadPlus15Pressed=false;
boolean overQuadPlus30=false, quadPlus30Pressed=false;
boolean overQuadMinus15=false, quadMinus15Pressed=false;
boolean overQuadMinus30=false, quadMinus30Pressed=false;
boolean overQuadOk=false, quadOkPressed=false;
boolean clean=false;

boolean armSelected=false, handSelected=false, fingerSelected=false, ankleSelected=false, legSelected=false;

boolean reset=false, windUp1=false, windUp2=false;

boolean windows1=true, windows2=false, windows3=false, windows4=false;

void setup(){
  size(800,600);
  surface.setResizable(true);
  frameRate(60);
}


void draw(){
  background(255);
  
   if(reset==true){
          overQuadTimer=false;
          quadTimerPressed=false;
          overQuadBody=false;
          quadBodyPressed=false;
          overQuadArm=false;
          quadArmPressed=false;
          overQuadHand=false;
          quadHandPressed=false;
          overQuadFinger=false;
          quadFingerPressed=false;
          overQuadAnkle=false;
          quadAnklePressed=false;
          overQuadLeg=false;
          quadLegPressed=false;
          overQuadReturn1=false;
          quadReturn1Pressed=false;
          overQuadReturn2=false;
          quadReturn2Pressed=false;
          overQuadPlay1=false;
          quadPlay1Pressed=false;
          overQuadPlay2=false;
          quadPlay2Pressed=false;
          overQuadStop=false;
          quadStopPressed=false;
          overQuadPlus15=false;
          quadPlus15Pressed=false;
          overQuadPlus30=false;
          quadPlus30Pressed=false;
          overQuadMinus15=false;
          quadMinus15Pressed=false;
          overQuadMinus30=false;
          quadMinus30Pressed=false;
          armSelected=false;
          handSelected=false;
          fingerSelected=false;
          ankleSelected=false;
          legSelected=false;
          windUp1=false;
          overQuadOk=false;
          quadOkPressed=false;
          stroke(0);
          
          min=0;
          sec=45;
   }
   
   //////////////////////////////////////////////////////////////////////////////////
   
   if(windows1==true){
     quadTimerX=(1.25*width)/5;
     quadTimerY=height/2;
     quadTimerR=(0.8*width)/4;
     
     quadBodyX=(3.75*width)/5;
     quadBodyY=height/2;
     quadBodyR=(0.8*width)/4;
     
     
     if(mouseX>quadTimerX-quadTimerR && mouseX<quadTimerX+quadTimerR && mouseY>quadTimerY-quadTimerR && mouseY<quadTimerY+quadTimerR){
        overQuadTimer=true;
        strokeWeight(8);
        }else{
           overQuadTimer=false;
           strokeWeight(5);
        }
     if(quadTimerPressed==true){ fill(210);
     }else{ fill(255);
     }
     rectMode(RADIUS);
     rect(quadTimerX,quadTimerY,quadTimerR,quadTimerR,quadTimerR*0.3);
     imageMode(CENTER);
     PImage imageTimer=loadImage("icons/timer.png");
     image(imageTimer,quadTimerX,quadTimerY,quadTimerR*1.6,quadTimerR*1.6);
     
     if(mouseX>quadBodyX-quadBodyR && mouseX<quadBodyX+quadBodyR && mouseY>quadBodyY-quadBodyR && mouseY<quadBodyY+quadBodyR){
        overQuadBody=true;
        strokeWeight(7);
        }else{
           overQuadBody=false;
           strokeWeight(5);
        }
     if(quadBodyPressed==true){ fill(210);
     }else{ fill(255);
     }
     rectMode(RADIUS);
     rect(quadBodyX,quadBodyY,quadBodyR,quadBodyR,quadBodyR*0.3);
     imageMode(CENTER);
     PImage imageBody=loadImage("icons/men.png");
     image(imageBody,quadBodyX,quadBodyY,quadBodyR*0.6,quadBodyR*1.3);
     
   }
   
   //////////////////////////////////////////////////////////////////////////////////
   
   if(windows2==true){
     quadPlus15X=(2*width)/10;
     quadPlus15Y=(7*height)/10;
     quadPlus15R=width*0.05;
     
     quadPlus30X=(3.5*width)/10;
     quadPlus30Y=(7*height)/10;
     quadPlus30R=width*0.05;
     
     quadMinus15X=(2*width)/10;
     quadMinus15Y=(8.5*height)/10;
     quadMinus15R=width*0.05;
     
     quadMinus30X=(3.5*width)/10;
     quadMinus30Y=(8.5*height)/10;
     quadMinus30R=width*0.05;
     
     quadPlay1X=(8.8*width)/10;
     quadPlay1Y=(8.5*height)/10;
     quadPlay1R=width*0.08;
     
     quadReturn1X=(0.5*width)/10;
     quadReturn1Y=(0.7*height)/10;
     quadReturn1R=width*0.035;
     
     timerX=width/2;
     timerY=(5*height)/10;
     timerR=width*0.4;
     
     fill(255);
     stroke(0);
     
     if(mouseX>quadPlus15X-quadPlus15R && mouseX<quadPlus15X+quadPlus15R && mouseY>quadPlus15Y-quadPlus15R && mouseY<quadPlus15Y+quadPlus15R){
        overQuadPlus15=true;
        strokeWeight(8);
        }else{
           overQuadPlus15=false;
           strokeWeight(5);
        }
     if(quadPlus15Pressed==true){ fill(210);
     }else{ fill(255);
     }
     rectMode(RADIUS);
     rect(quadPlus15X,quadPlus15Y,quadPlus15R,quadPlus15R,quadPlus15R*0.3);
     PImage imagePlus15=loadImage("icons/add_time.png");
     image(imagePlus15,quadPlus15X,quadPlus15Y,quadPlus15R*1.6,quadPlus15R*1.6);
     
     if(mouseX>quadMinus15X-quadMinus15R && mouseX<quadMinus15X+quadMinus15R && mouseY>quadMinus15Y-quadMinus15R && mouseY<quadMinus15Y+quadMinus15R){
        overQuadMinus15=true;
        strokeWeight(8);
        }else{
           overQuadMinus15=false;
           strokeWeight(5);
        }
     if(quadMinus15Pressed==true){ fill(210);
     }else{ fill(255);
     }
     rectMode(RADIUS);
     rect(quadMinus15X,quadMinus15Y,quadMinus15R,quadMinus15R,quadMinus15R*0.3);
     textSize(60);
     fill(0);
     textAlign(CENTER);
     text("-15",quadMinus15X,quadMinus15Y+20);
     
     if(mouseX>quadPlus30X-quadPlus30R && mouseX<quadPlus30X+quadPlus30R && mouseY>quadPlus30Y-quadPlus30R && mouseY<quadPlus30Y+quadPlus30R){
        overQuadPlus30=true;
        strokeWeight(8);
        }else{
           overQuadPlus30=false;
           strokeWeight(5);
        }
     if(quadPlus30Pressed==true){ fill(210);
     }else{ fill(255);
     }
     rectMode(RADIUS);
     rect(quadPlus30X,quadPlus30Y,quadPlus30R,quadPlus30R,quadPlus30R*0.3);
     PImage imagePlus30=loadImage("icons/add_time_2.png");
     image(imagePlus30,quadPlus30X,quadPlus30Y,quadPlus30R*1.6,quadPlus30R*1.6);
     
     if(mouseX>quadMinus30X-quadMinus30R && mouseX<quadMinus30X+quadMinus30R && mouseY>quadMinus30Y-quadMinus30R && mouseY<quadMinus30Y+quadMinus30R){
        overQuadMinus30=true;
        strokeWeight(8);
        }else{
           overQuadMinus30=false;
           strokeWeight(5);
        }
     if(quadMinus30Pressed==true){ fill(210);
     }else{ fill(255);
     }
     rectMode(RADIUS);
     rect(quadMinus30X,quadMinus30Y,quadMinus30R,quadMinus30R,quadMinus30R*0.3);
     textSize(55);
     fill(0);
     textAlign(CENTER);
     text("-30",quadMinus30X,quadMinus30Y+20);
     
     
     if(mouseX>quadPlay1X-quadPlay1R && mouseX<quadPlay1X+quadPlay1R && mouseY>quadPlay1Y-quadPlay1R && mouseY<quadPlay1Y+quadPlay1R){
        overQuadPlay1=true;
        stroke(0);
        }else{
           overQuadPlay1=false;
           stroke(255);
        }
     if(quadPlay1Pressed==true){ fill(0,210,0);
     }else{ fill(255);
     }
     rectMode(RADIUS);
     rect(quadPlay1X,quadPlay1Y,quadPlay1R,quadPlay1R,quadPlay1R*0.3);
     imageMode(CENTER);
     PImage imagePlay1=loadImage("icons/play-button.png");
     image(imagePlay1,quadPlay1X,quadPlay1Y,quadPlay1R*1.6,quadPlay1R*1.6);
     
     if(mouseX>quadReturn1X-quadReturn1R && mouseX<quadReturn1X+quadReturn1R && mouseY>quadReturn1Y-quadReturn1R && mouseY<quadReturn1Y+quadReturn1R){
        overQuadReturn1=true;
        stroke(0);
        }else{
           overQuadReturn1=false;
           stroke(255);
        }
     if(quadReturn1Pressed==true){ fill(210);
     }else{ fill(255);
     }
     rectMode(RADIUS);
     rect(quadReturn1X,quadReturn1Y,quadReturn1R,quadReturn1R,quadReturn1R*0.3);
     imageMode(CENTER);
     PImage imageReturn1=loadImage("icons/back-arrow.png");
     image(imageReturn1,quadReturn1X,quadReturn1Y,quadReturn1R*1.6,quadReturn1R*1.6);
     
     stroke(0);
     fill(0);
     PFont myFont=createFont("digital_7/digital-7.ttf",timerR);
     textAlign(CENTER);
     textFont(myFont);
     text(min +":" + sec,timerX,timerY,timerR);
     
     timerCount=min*100+sec;
     
     
   }
   
   //////////////////////////////////////////////////////////////////////////////////
   
   if(windows3==true){
     quadArmX=(width/4)-(width*0.13)/2;
     quadArmY=(3*height)/10;
     quadArmR=width*0.13;
     
     quadHandX=width/2;;
     quadHandY=(3*height)/10;
     quadHandR=width*0.13;
     
     quadFingerX=(3*width)/4+(width*0.13)/2;
     quadFingerY=(3*height)/10;
     quadFingerR=width*0.13;
     
     quadAnkleX=width/2;
     quadAnkleY=(7*height)/10;
     quadAnkleR=width*0.13;
     
     quadLegX=(width/4)-(width*0.13)/2;
     quadLegY=(7*height)/10;
     quadLegR=width*0.13;
     
     quadPlay2X=(8.8*width)/10;
     quadPlay2Y=(8.5*height)/10;
     quadPlay2R=width*0.08;
     
     quadReturn2X=(0.5*width)/10;
     quadReturn2Y=(0.7*height)/10;
     quadReturn2R=width*0.035;
   
     windUp1X=width/2;
     windUp1Y=height/2;
     windUp1RW=(0.8*width)/2;
     windUp1RH=(0.8*height)/2;
     
     quadOkX=windUp1X;
     quadOkY=(windUp1Y)*1.5;
     quadOkRW=0.1*width;
     quadOkRH=0.08*height;
     
     if(mouseX>quadArmX-quadArmR && mouseX<quadArmX+quadArmR && mouseY>quadArmY-quadArmR && mouseY<quadArmY+quadArmR && windUp1!=true){
        overQuadArm=true;
        strokeWeight(8);
        }else{
           overQuadArm=false;
           strokeWeight(5);
        }
     if(quadArmPressed==true){ fill(210);
     }if(armSelected==true){ fill(190);
     }else{ fill(255);
     }
     rectMode(RADIUS);
     rect(quadArmX,quadArmY,quadArmR,quadArmR,quadArmR*0.3);
     imageMode(CENTER);
     PImage imageArm=loadImage("icons/arm.png");
     image(imageArm,quadArmX,quadArmY,quadArmR*1.6,quadArmR*1.6);
     
     if(mouseX>quadHandX-quadHandR && mouseX<quadHandX+quadHandR && mouseY>quadHandY-quadHandR && mouseY<quadHandY+quadHandR && windUp1!=true){
        overQuadHand=true;
        strokeWeight(8);
        }else{
           overQuadHand=false;
           strokeWeight(5);
        }
     if(quadHandPressed==true){ fill(220);
     }if(handSelected==true){ fill(190);
     }else{ fill(255);
     }
     rectMode(RADIUS);
     rect(quadHandX,quadHandY,quadHandR,quadHandR,quadHandR*0.3);
     imageMode(CENTER);
     PImage imageHand=loadImage("icons/hand.png");
     image(imageHand,quadHandX,quadHandY,quadHandR*1.6,quadHandR*1.6);
     
     if(mouseX>quadFingerX-quadFingerR && mouseX<quadFingerX+quadFingerR && mouseY>quadFingerY-quadFingerR && mouseY<quadFingerY+quadFingerR && windUp1!=true){
        overQuadFinger=true;
        strokeWeight(8);
        }else{
           overQuadFinger=false;
           strokeWeight(5);
        }
     if(quadFingerPressed==true){ fill(210);
     }if(fingerSelected){ fill(190);
     }else{ fill(255);
     }
     rectMode(RADIUS);
     rect(quadFingerX,quadFingerY,quadFingerR,quadFingerR,quadFingerR*0.3);
     imageMode(CENTER);
     PImage imageFinger=loadImage("icons/finger.png");
     image(imageFinger,quadFingerX,quadFingerY,quadFingerR*1.6,quadFingerR*1.6);
     
     if(mouseX>quadAnkleX-quadAnkleR && mouseX<quadAnkleX+quadAnkleR && mouseY>quadAnkleY-quadAnkleR && mouseY<quadAnkleY+quadAnkleR && windUp1!=true){
        overQuadAnkle=true;
        strokeWeight(8);
        }else{
           overQuadAnkle=false;
           strokeWeight(5);
        }
     if(quadAnklePressed==true){ fill(210);
     }if(ankleSelected==true){ fill(190);
     }else{ fill(255);
     }
     rectMode(RADIUS);
     rect(quadAnkleX,quadAnkleY,quadAnkleR,quadAnkleR,quadAnkleR*0.3);
     imageMode(CENTER);
     PImage imageAnkle=loadImage("icons/ankle.png");
     image(imageAnkle,quadAnkleX,quadAnkleY,quadAnkleR*1.6,quadAnkleR*1.6);
     
     if(mouseX>quadLegX-quadLegR && mouseX<quadLegX+quadLegR && mouseY>quadLegY-quadLegR && mouseY<quadLegY+quadLegR && windUp1!=true){
        overQuadLeg=true;
        strokeWeight(8);
        }else{
           overQuadLeg=false;
           strokeWeight(5);
        }
     if(quadLegPressed==true){ fill(210);
     }if(legSelected==true){ fill(190);
     }else{ fill(255);
     }
     rectMode(RADIUS);
     rect(quadLegX,quadLegY,quadLegR,quadLegR,quadLegR*0.3);
     imageMode(CENTER);
     PImage imageLeg=loadImage("icons/leg.png");
     image(imageLeg,quadLegX,quadLegY,quadLegR*1.6,quadLegR*1.6);
     
     if(mouseX>quadPlay2X-quadPlay2R && mouseX<quadPlay2X+quadPlay2R && mouseY>quadPlay2Y-quadPlay2R && mouseY<quadPlay2Y+quadPlay2R && windUp1!=true){
        overQuadPlay2=true;
        stroke(0);
        }else{
           overQuadPlay2=false;
           stroke(255);
        }
     if(quadPlay2Pressed==true){ fill(0,210,0);
     }else{ fill(255);
     }
     rectMode(RADIUS);
     rect(quadPlay2X,quadPlay2Y,quadPlay2R,quadPlay2R,quadPlay2R*0.3);
     imageMode(CENTER);
     PImage imagePlay2=loadImage("icons/play-button.png");
     image(imagePlay2,quadPlay2X,quadPlay2Y,quadPlay2R*1.6,quadPlay2R*1.6);
     
     if(mouseX>quadReturn2X-quadReturn2R && mouseX<quadReturn2X+quadReturn2R && mouseY>quadReturn2Y-quadReturn2R && mouseY<quadReturn2Y+quadReturn2R && windUp1!=true){
        overQuadReturn2=true;
        stroke(0);
        }else{
           overQuadReturn2=false;
           stroke(255);
        }
     if(quadReturn2Pressed==true){ fill(0,210,0);
     }else{ fill(255);
     }
     rectMode(RADIUS);
     rect(quadReturn2X,quadReturn2Y,quadReturn2R,quadReturn2R,quadReturn2R*0.3);
     imageMode(CENTER);
     PImage imageReturn2=loadImage("icons/back-arrow.png");
     image(imageReturn2,quadReturn2X,quadReturn2Y,quadReturn2R*1.6,quadReturn2R*1.6);
     
     stroke(0);
     
     if(windUp1==true){
       
       strokeWeight(5);
       stroke(255,0,0);
       fill(255);
       rectMode(RADIUS);
       rect(windUp1X,windUp1Y,windUp1RW,windUp1RH,(0.05*width)/2);
       
       fill(255,0,0);
       PFont MyFont1=loadFont("Calibri-48.vlw");
       textFont(MyFont1);
       textAlign(CENTER);
       textSize(windUp1X*0.1);
       text("YOU HAVE TO CHOSE\n ONE BODY PART TO CONTINUE",windUp1X,windUp1Y/2);
       
       if(mouseX>quadOkX-quadOkRW && mouseX<quadOkX+quadOkRW && mouseY>quadOkY-quadOkRH && mouseY<quadOkY+quadOkRH){
        overQuadOk=true;
        strokeWeight(7);
        }else{
           overQuadOk=false;
           strokeWeight(5);
        }
     if(quadOkPressed==true){ fill(0,210,0);
     }else{ fill(255);
     }
       
       rectMode(RADIUS);
       rect(quadOkX,quadOkY,quadOkRW,quadOkRH,quadOkRW*0.3);
       fill(255,0,0);
       text("OK",quadOkX,quadOkY);
     }
     stroke(0);
     
     if(clean==true){
        armSelected=false;
        handSelected=false;
        fingerSelected=false;
        ankleSelected=false;
        legSelected=false;
        windUp1=false;
        overQuadOk=false;
        quadOkPressed=false;
        overQuadBody=false;
        quadBodyPressed=false;
        overQuadArm=false;
        quadArmPressed=false;
        overQuadHand=false;
        quadHandPressed=false;
        overQuadFinger=false;
        quadFingerPressed=false;
        overQuadAnkle=false;
        quadAnklePressed=false;
        overQuadLeg=false;
        quadLegPressed=false;
        overQuadReturn1=false;
        quadReturn1Pressed=false;
        overQuadReturn2=false;
        quadReturn2Pressed=false;
        clean=false;
     }
   }
   
   /////////////////////////////////////////////////////////////////////////////////
   
   if(windows4==true){
     timerX=width/2;
     timerY=(5*height)/10;
     timerR=width*0.4;
     
     quadStopX=width/2;
     quadStopY=(7*height)/10;
     quadStopRW=width/10;
     quadStopRH=height/20;
     
     stroke(0);
     fill(0);
     PFont myFont=createFont("digital_7/digital-7.ttf",timerR);
     textAlign(CENTER);
     textFont(myFont);
     text(min +":" + sec,timerX,timerY,timerR);
    
     stroke(255,0,0);
     if(mouseX>quadStopX-quadStopRW && mouseX<quadStopX+quadStopRW && mouseY>quadStopY-quadStopRH && mouseY<quadStopY+quadStopRH){
        overQuadStop=true;
        strokeWeight(7);
        }else{
           overQuadStop=false;
           strokeWeight(5);
        }
     if(quadStopPressed==true){ fill(255,20,0);
     }else{ fill(200,0,0);
     }
     rectMode(RADIUS);
     rect(quadStopX,quadStopY,quadStopRW,quadStopRH,quadStopRW*0.3);
     
     fill(255);
     textAlign(CENTER);
     textSize(40);
     text("STOP",quadStopX,quadStopY+12);
     
     timerCount=min*100+sec;
     if(timerCount>0){
       countFrames+=1;
       if(countFrames==60){
         timerCount-=1;
         countFrames=0;
         if(sec>0){
           sec-=1;
         }
         if(sec<=0){
           sec=59;
           min-=1;
         }
     }
     }
     if(timerCount==0){
       reset=true;
       windows1=true;
       windows4=false;
     }
   }
   
   //////////////////////////////////////////////////////////////////////////////////
   
   reset=false;
}

void mousePressed(){
  if(overQuadTimer==true){
    quadTimerPressed=true;
    mode=1;
  }
  if(overQuadBody==true){
    quadBodyPressed=true;
    mode=2;
  }
  if(overQuadArm==true){
    quadArmPressed=true;
    mode=3;
  }
  if(overQuadHand==true){
    quadHandPressed=true;
    mode=4;
  }
  if(overQuadFinger==true){
    quadFingerPressed=true;
    mode=5;
  }
  if(overQuadAnkle==true){
    quadAnklePressed=true;
    mode=6;
  }
  if(overQuadLeg==true){
    quadLegPressed=true;
    mode=7;
  }
  if(overQuadPlay1==true){
    quadPlay1Pressed=true;
    mode=8;
  }
  if(overQuadPlay2==true){
    quadPlay2Pressed=true;
    mode=9;
  }
  if(overQuadReturn1==true){
    quadReturn1Pressed=true;
    mode=10;
  }
  if(overQuadReturn2==true){
    quadReturn2Pressed=true;
    mode=11;
  }
  if(overQuadPlus15==true){
    quadPlus15Pressed=true;
    mode=12;
  }
  if(overQuadMinus15==true){
    quadMinus15Pressed=true;
    mode=13;
  }
  if(overQuadPlus30==true){
    quadPlus30Pressed=true;
    mode=14;
  }
  if(overQuadMinus30==true){
    quadMinus30Pressed=true;
    mode=15;
  }
  if(overQuadStop==true){
    quadStopPressed=true;
    mode=16;
  }
  if(overQuadOk==true){
    quadOkPressed=true;
    mode=17;
  }
}


void mouseReleased(){
  switch(mode){
    case 1: quadTimerPressed=false;
            reset=true;
            windows1=false;
            windows2=true;
            break;
            
    case 2: quadBodyPressed=false;
            reset=true;
            windows1=false;
            windows3=true;
            break;
    case 3: quadArmPressed=false;
            armSelected=toggle(armSelected);
            handSelected=false;
            fingerSelected=false;
            ankleSelected=false;
            legSelected=false;
            break;
    case 4: quadHandPressed=false;
            handSelected=toggle(handSelected);
            armSelected=false;
            fingerSelected=false;
            ankleSelected=false;
            legSelected=false;
            break;
    case 5: quadFingerPressed=false;
            fingerSelected=toggle(fingerSelected);
            handSelected=false;
            armSelected=false;
            ankleSelected=false;
            legSelected=false;
            break;
    case 6: quadAnklePressed=false;
            ankleSelected=toggle(ankleSelected);
            handSelected=false;
            fingerSelected=false;
            armSelected=false;
            legSelected=false;
            break;
    case 7: quadLegPressed=false;
            legSelected=toggle(legSelected);
            handSelected=false;
            fingerSelected=false;
            ankleSelected=false;
            armSelected=false;
            break;
    case 8: quadPlay1Pressed=false;
            windows2=false;
            windows4=true;
            break;
    case 9: quadPlay2Pressed=false;
            if(armSelected==true || handSelected==true || fingerSelected==true || ankleSelected==true || legSelected==true){
              windows3=false;
              windows4=true;
            }else{
              windUp1=true;
            }
            break;
    case 10: quadReturn1Pressed=false;
             reset=true;
             windows2=false;
             windows3=false;
             windows1=true;
             break;
    case 11: quadReturn2Pressed=false;
             reset=true;
             windows2=false;
             windows3=false;
             windows1=true;
             break;
    case 12: quadPlus15Pressed=false;
             if(timerCount<300){
               if(sec<60){ 
                 sec=sec+15;
             }if(sec>=60){
               sec=0;
               min=min+1;
             }
             }
             break;
    case 13: quadMinus15Pressed=false;
              if(timerCount>45){
               if(sec>=0){ 
                 sec=sec-15;
             }if(sec<0){
               sec=45;
               min=min-1;
             }
             }
             break;
    case 14: quadPlus30Pressed=false;
             if(timerCount<230){
               if(sec<60){
                sec=sec+30; 
               }
               if(sec>=60){
                 sec=15;
                 min=min+1;
               }
             }
             break;
    case 15: quadMinus30Pressed=false;
             if(timerCount>100){
               if(sec>=15){ 
                 sec=sec-30;
             }if(sec<0){
               sec=45;
               min=min-1;
             }
             if(sec==0){
               sec=30;
               min=min-1;
             }
             }
             break;
    case 16: quadStopPressed=false;
             reset=true;
             windows4=false;
             windows1=true;
             break;
    case 17: quadOkPressed=false;
             windUp1=false;
             clean=true;
             break;
             
  }
}

boolean toggle(boolean state){
  boolean value=false;
  if(state==true) value=false;
  if(state==false) value=true;
  return value;
}