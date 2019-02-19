sudo raspi-config
sudo apt-get install -y python-smbus i2c-tools
lsmod | grep i2c_
i2cdetect -y 1
wget -O bme280.py http://bit.ly/bme280py
python bme280.py
cd /
cd dev
ls
cd i2c-1
cat i2c-1
python bme280.py
cd ..
ls
cd home/pi
ld
ls
python bme280.py
sudo pip3 install RPi.bme280 
#!python 
import smbus2 
import bme280 
port = 1 
address = 0x76 
bus = smbus2.SMBus(port) 
bme280.load_calibration_params(bus, address) 
data = bme280.sample(bus, address) 
print(data)
curl -sL https://repos.influxdata.com/influxdb.key | sudo apt-key add -source /etc/os-release
curl -sL https://repos.influxdata.com/influxdb.key | sudo apt-key add -
echo "deb https://repos.influxdata.com/debian stretch stable" | sudo tee /etc/apt/sources.list.d/influxdb.list
sudo apt update
sudo apt install influxdb  
sudo systemctl start influxdb 
influx
wget https://dl.grafana.com/oss/release/grafana_5.4.3_armhf.deb 
sudo dpkg -i grafana_5.4.3_armhf.deb 
sudo systemctl enable grafana-server 
sudo systemctl start grafana-server
git clone https://github.com/andreiva/raspberry-pi-bme280.git
sudo apt-get install libi2c-dev i2c-tools wiringpi
ls
make
cd raspberry-pi-bme280/
ls
make
sudo cp bme280 /usr/bin
cd ..
bme280
while(1){bme280};
while true; bme280; sleep 2; done
while true; ./bme280; sleep 2; done
while true; /bin/bash bme280; sleep 2; done
while true; bme280; sleep 2; done;
while true; bme280; sleep 2; done
while true; bme280; sleep 2;  ;
while true; bme280; sleep 2; done
while true; do    echo "hello";    sleep 2; done
while true; do bme280; sleep 2; done
ls
git clone https://github.com/rm-hull/bme280.git
cd bme280/
ls
cd examples/
ls
python sample.py 
cd ..
ls
cat README.rst 
ls
python setup.py 
sudo pip install RPi.bme280
ls
cd examples/
ls
python sample.py 
cd ..
while true; do bme280; sleep 2; done
ls
~ $
git clone https://github.com/corlysis/scripts.git
ls
cd scripts/
ls
cat bme280_sensor.py 
nano bme280_sensor.py 
python bme280_sensor.py 
python bme280_sensor.py hub
python bme280_sensor.py hub 100
influx
python bme280_sensor.py hub 100
cd /lib/
ls
cd systemd/
ls
cd system
ls
sudo nano bcm280.service
sudo chmod 644 bcm280.service 
sudo systemctl daemon-reload 
sudo systemctl enable bcm280.service 
sudo systemctl start bcm280.service 
sudo systemctl status bcm280.service 
cd /
ls
cd home/pi
ls
cd raspberry-pi-bme280/
ls
cd ..
cd scripts/
ls
cd /lib/systemd/
ls
cd system
ls
sudo nano bcm280.service
sudo systemctl start bcm280.service 
sudo systemctl daemon-reload 
sudo systemctl start bcm280.service 
sudo systemctl status bcm280.service 
sudo nano bcm280.service
sudo systemctl daemon-reload 
sudo systemctl start bcm280.service 
sudo systemctl status bcm280.service 
sudo nano bcm280.service
sudo systemctl daemon-reload 
sudo systemctl start bcm280.service 
sudo systemctl status bcm280.service 
python /home/pi/scripts/
sudo nano bcm280.service
sudo systemctl daemon-reload 
sudo systemctl start bcm280.service 
sudo systemctl status bcm280.service 
cd /home/pi/scripts/
ls
nano bme280_sensor.py 
sudo systemctl daemon-reload 
sudo systemctl start bcm280.service 
sudo systemctl status bcm280.service 
sudo systemctl restart bcm280.service 
nano bme280_sensor.py 
sudo systemctl restart bcm280.service 
reboot
sudo reboot
sudo systemctl status bcm280.service 
q
sudo date -s 209-02-08 10:18:00
sudo date -s 209-02-08 10:18:0
sudo date -s 2019-02-08 10:18:0
sudo date -s 2019-02-08 +10:18:0
sudo date -s 2019-02-08 10:18:0
sudo date -s '2019-02-08 10:21:00'
bme280
while true; do bme280; sleep 2; done
nano bme280_sensor.py 
ls
cd scripts/
ls
nano bme280_sensor.py 
ls
cd scripts/
ls
cat bme280_sensor.py 
sudo date -s '2019-02-12 10:42:00'
sudo date -s '2019-02-12 09:43:00'
sudo date -s '2019-02-15 08:47:00'
sudo date -s '2019-02-15 08:50:00'
while true; do bme280; sleep 2; done
sudo systemctl status bcm280.service 
sudo systemctl restart bcm280.service 
sudo date -s '2019-02-18 09:29:00'
sudo systemctl restart bcm280.service 
while true; do bme280; sleep 2; done
sudo systemctl restart bcm280.service 
while true; do bme280; sleep 2; done
sudo systemctl restart bcm280.service 
while true; do bme280; sleep 2; done
sudo systemctl restart bcm280.service 
while true; do bme280; sleep 2; done
sudo systemctl restart bcm280.service 
sudo date -s '2019-02-19 09:29:00'
sudo systemctl restart bcm280.service 
sudo pip install Adafruit_CCS811
sudo i2cdetect -y 1
sudo pip install Adafruit_CCS811
sudo i2cdetect -y 1
ls
git clone https://github.com/adafruit/Adafruit_CCS811_python.git
cd Adafruit_CCS811_python/
sudo i2cdetect -y 1
ls
cd examples/
ls
sudo python CSS811_exmaple.py
sudo python CCS811_exmaple.py
sudo python CCS811_example.py
sudo systemctl stop bcm280.service 
sudo python CCS811_exmaple.py
sudo python CCS811_example.py
nano CCS811_example.py 
sudo python CCS811_example.py
sudo i2cdetect -y 1
sudo python CCS811_example.py
nano /usr/local/lib/python2.7/dist-packages/Adafruit_CCS811/Adafruit_CCS811.py
while true; do bme280; sleep 2; done
sudo python CCS811_example.py
sudo python CCS811_example.pycd ..
cd ..
git clone https://github.com/adafruit/Adafruit_CircuitPython_CCS811.git
ls
cd Adafruit_CircuitPython_CCS811/
ls
cd examples/
ls
sudo i2cdetect -y 1
sudo python ccs811_simpletest.py 
sudo i2cdetect -y 1
sudo python ccs811_simpletest.py 
cd ..
python3 -m venv .env
source .env/bin/activate
pip install circuitpython-build-tools
source .env/bin/activate
circuitpython-build-bundles --filename_prefix adafruit-circuitpython-ccs811 --library_location .
sudo i2cdetect -y 1
sudo python ccs811_simpletest.py 
sudo python examples/ccs811_simpletest.py 
nano examples/ccs811_simpletest.py 
cd ..
git clone https://github.com/adafruit/Adafruit_CircuitPython_Register.git
cd Adafruit_CircuitPython_Register/
ls
cd examples/
ls
cd ..
python3 -m venv .env
source .env/bin/activate
pip install circuitpython-build-tools
source .env/bin/activate
circuitpython-build-bundles --filename_prefix adafruit-circuitpython-register --library_location .
cd ..
python3 -m venv .env
source .env/bin/activate
pip install circuitpython-build-tools
source .env/bin/activate
circuitpython-build-bundles --filename_prefix adafruit-circuitpython-busdevice --library_location .
exit
ls
cd Adafruit_CircuitPython_CCS811/
cd examples/
sudo python ccs811_simpletest.py 
cd ..
git clone https://github.com/adafruit/Adafruit_CircuitPython_BusDevice.git
cd Adafruit_CircuitPython_BusDevice/
python3 -m venv .env
source .env/bin/activate
pip install circuitpython-build-tools
source .env/bin/activate
circuitpython-build-bundles --filename_prefix adafruit-circuitpython-busdevice --library_location .
pip install adafruit-circuitpython-busdevice
exit
ls
cd Adafruit_CircuitPython_CCS811/
cd examples/
ls
sudo python ccs811_simpletest.py 
cd ../..
ls
pip install adafruit-circuitpython-busdevice.
pip install adafruit-circuitpython-busdevice .
pip install adafruit-circuitpython-busdevice
ls
cd Adafruit_CCS811_python/
cd examples/
ls
sudo python CSS811_example.py
sudo python CCS811_example.py
sudo i2cdetect -y 1
sudo python CCS811_example.py
sudo nano /boot/config.txt 
sudo shutdown -h now
