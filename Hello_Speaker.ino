#include <Adafruit_CircuitPlayground.h>

void setup() {
  Serial.begin(9600);
  CircuitPlayground.begin();
}

void loop() {
//String message = "e0e";
  
  String message=Serial.readString();
  Serial.end();

  int morse[36][5] = 
  {
    {0,1,-1,-1, -1},//a0
    {1,0,0,0, -1},//b1
    {1,0,1,0, -1},//c2
    {1,0,0, -1,-1},//d3
    {0,-1,-1,-1,-1},//e4
    {0,0,1,0,-1},//f5
    {1,1,0,-1,-1},//g6
    {0,0,0,0,-1},//h7 here lies bullshit
    {0,0,-1,-1,-1},//i8 here lies bullshit
    {0,1,1,1,-1},//j9
    {1,0,1,-1,-1},//k10
    {0,1,0,0,-1},//l11
    {1,1,-1,-1,-1},//m12
    {1,0,-1,-1,-1},//n13
    {1,1,1,-1,-1},//o14
    {0,1,1,0,-1},//p15
    {1,1,0,1,-1},//q16
    {0,1,0,-1,-1},//r
    {0,0,0,-1,-1},//s
    {1,-1,-1,-1,-1},//t
    {0,0,1,-1,-1},//u
    {0,0,0,1,-1},//v
    {0,1,1,-1,-1},//w
    {1,0,0,1,-1},//x
    {1,0,1,1,-1},//y
    {1,1,0,0,-1},
    {0,1,1,1,1},
    {0,0,1,1,1},
    {0,0,0,1,1},
    {0,0,0,0,1},
    {0,0,0,0,0},
    {1,0,0,0,0},
    {1,1,0,0,0},
    {1,1,1,0,0},
    {1,1,1,1,0},
    {1,1,1,1,1}
  };
  char alphabet[]= {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','1','2','3','4','5','6','7','8','9','0'};
  for(int i = 2; i < message.length(); i++)
  {
      char letter = message.charAt(i);
      int index = -1;
      for(int c = 0; c < 36; c++)
      {
        if(letter == alphabet[c])
        {
          Serial.println(c);
          index = c;  
        }
      }
      int temp[5];
      for(int d = 0; d < 5; d++)
      {
        Serial.println(morse[6][2]);
        temp[d] = morse[index][d];
      }
      for (int m = 0; m < 5; m++)
      {

        
        if(temp[m] == 0)
        {
          CircuitPlayground.redLED(HIGH);
          CircuitPlayground.playTone(200, 100);
          CircuitPlayground.redLED(false);  
        }
        else if(temp[m] == (1))
        {
          CircuitPlayground.redLED(HIGH);
          CircuitPlayground.playTone(500, 500);
          CircuitPlayground.redLED(false);
        } 
        delay(100);
      }
      delay(1000);
      Serial.println("hi");
  }
  //CircuitPlayground.playTone(800, 700);
  
}
