String msg;
 
void setup() {
    Serial.begin(9600);
    Serial.println("Serial conection started, waiting for Messages...");
}
 
void loop() {
    while (Serial.available() > 0)
    {
        char recieved = Serial.read();
        msg += recieved; 

        if (recieved == '\n')
        {
            Serial.print("Arduino Received: ");
            Serial.print(msg); 
            msg = "";
        }
    }
}
