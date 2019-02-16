#include <ESP8266WiFi.h>
#include <WiFiClient.h>
#include <ESP8266WebServer.h>
#include <ESP8266mDNS.h>
#include <EasyDDNS.h>
#include <brzo_i2c.h>
#define USING_BRZO 1
#include <BME280I2C_BRZO.h>

const char* ssid = "4GEEHuaweiE5776-0834";
const char* password = "AE4Y711N";

IPAddress localip(192, 168, 1, 50);
IPAddress dnsServer(192, 168, 1, 1);
IPAddress gateway(192, 168, 1, 1);
IPAddress subnet(255, 255, 255, 0);

const uint32_t I2C_ACK_TIMEOUT = 2000;

BME280I2C_BRZO bme;   // Default : forced mode, standby time = 1000 ms
                      // Oversampling = pressure ×1, temperature ×1, humidity ×1, filter off,

bool metric = true;

ESP8266WebServer server(80);

const int led = D4;

void blink() {
  for(size_t i = 0; i < 5; i++)
  {
    digitalWrite(led, 1);
    delay(250);
    digitalWrite(led, 0);
    delay(250);
    Serial.println("blink!");
  }
}

void handleRoot() {
  // digitalWrite(led, 1);
  float temp(NAN), hum(NAN), pres(NAN);
  BME280::TempUnit tempUnit(BME280::TempUnit_Celsius);
  BME280::PresUnit presUnit(BME280::PresUnit_Pa);
  bme.read(pres, temp, hum, tempUnit, presUnit);

  char buffer[40] = "Temp ";
  char fbuff[10];

  dtostrf(temp, 8, 3, fbuff);

  strcat(buffer, fbuff);

  server.send(200, "text/plain", buffer);
  Serial.println("Page served!");
  // digitalWrite(led, 0);
  blink();
}

void handleNotFound(){
  digitalWrite(led, 1);
  String message = "File Not Found\n\n";
  message += "URI: ";
  message += server.uri();
  message += "\nMethod: ";
  message += (server.method() == HTTP_GET)?"GET":"POST";
  message += "\nArguments: ";
  message += server.args();
  message += "\n";
  for (uint8_t i=0; i<server.args(); i++){
    message += " " + server.argName(i) + ": " + server.arg(i) + "\n";
  }
  server.send(404, "text/plain", message);
  digitalWrite(led, 0);
}

void printBME280Data
(
   Stream* client
)
{
   float temp(NAN), hum(NAN), pres(NAN);

   BME280::TempUnit tempUnit(BME280::TempUnit_Celsius);
   BME280::PresUnit presUnit(BME280::PresUnit_Pa);

   bme.read(pres, temp, hum, tempUnit, presUnit);

   client->print("Temp: ");
   client->print(temp);
   client->print("°"+ String(tempUnit == BME280::TempUnit_Celsius ? 'C' :'F'));
   client->print("\t\tHumidity: ");
   client->print(hum);
   client->print("% RH");
   client->print("\t\tPressure: ");
   client->print(pres);
   client->println(" Pa");

   delay(1000);
}

void setup(void){
  pinMode(led, OUTPUT);
  digitalWrite(led, 0);
  Serial.begin(115200);
  WiFi.mode(WIFI_STA);
  WiFi.config(localip, gateway, subnet, dnsServer);
  WiFi.begin(ssid, password);
  EasyDDNS.service("duckdns");
  EasyDDNS.client("hub-o-meter","07daf2a8-9c86-455e-85c0-ce8981a34f77");
  Serial.println("");

  // Wait for connection
  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }
  Serial.println("");
  Serial.print("Connected to ");
  Serial.println(ssid);
  Serial.print("IP address: ");
  Serial.println(WiFi.localIP());

  if (MDNS.begin("esp8266")) {
    Serial.println("MDNS responder started");
  }

  server.on("/", handleRoot);

  server.on("/inline", [](){
    server.send(200, "text/plain", "this works as well");
  });

  server.onNotFound(handleNotFound);

  server.begin();
  Serial.println("HTTP server started");

  brzo_i2c_setup(SDA,SCL,I2C_ACK_TIMEOUT);

   while(!bme.begin())
   {
      Serial.println("Could not find BME280 sensor!");
      delay(1000);
   }

   // bme.chipID(); // Deprecated. See chipModel().
   switch(bme.chipModel())
   {
      case BME280::ChipModel_BME280:
        Serial.println("Found BME280 sensor! Success.");
        break;
      case BME280::ChipModel_BMP280:
        Serial.println("Found BMP280 sensor! No Humidity available.");
        break;
      default:
        Serial.println("Found UNKNOWN sensor! Error!");
   }
}

void loop(void){
  server.handleClient();
  EasyDDNS.update(10000);
  printBME280Data(&Serial);
  delay(500);
}


