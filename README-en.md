# Samsung NX500 file/image transfer patch

### announcement

This patch is based on [nx500_nx1_modding](https://github.com/ottokiksmaler/nx500_nx1_modding)

Thank you to the experts for exploring the functionality of Samsung cameras.

This Repository provides a solution to address the issue of missing image transmission in Samsung NX500 cameras. The principle is to replace the Bluetooth executable file in/usr/bin, so that the function of opening the FTP server is executed simultaneously when Bluetooth is opened.

By utilizing this mechanism, users can connect to the camera through an FTP client, achieving convenient transfer of image files. This method not only compensates for the lack of image transmission apps, but also indirectly achieves the function of shooting and transmitting at the same time, improving the camera user experience.

By adopting this compensation scheme, NX500 users can solve image transmission problems.



Warning: This script will change the camera's original file system!!!

Warning: This script will change the camera's original file system!!!

Warning: This script will change the camera's original file system!!!

If there is a need for recovery, please refer to[(Running_scripts_without_factory_mode_BT.md)](https://github.com/ottokiksmaler/nx500_nx1_modding/blob/master/Running_scripts_without_factory_mode_BT.md)



### Installation instructions

1，Before installing the script, please reset the camera Bluetooth (cancel pairing the camera with any other device), and confirm that the Bluetooth switch is turned off before shutting down **(make sure that the camera's Bluetooth function does not start automatically when turned on)**

2，Copy the sdcard directory file of the project into the root directory of the SD card（the directory structure of the SD card should be roughly as follows）

![0ff289cdcbaaeb3ba671d38ef0b2196](./image/1.png)

3，Insert the SD card into the camera and then start the camera

The installation script will automatically execute after the camera is turned on.

Within approximately 30 seconds, the installation script will finish executing. After the installation process is completed, the camera will automatically restart and check the SD card. The info.tg and nx_cs.adj files will be deleted. If these two files no longer exist in the SD card, the installation script will logically execute successfully.

### Instructions for use

After the script installation, the following steps need to be followed each time the camera FTP is connected to transfer images:

1，Connect to WiFi or use your phone as a hotspot, so that the camera and your computer are located on the same local area network.

2，**After confirming that the camera is connected to WiFi or hotspot**，Turn on the Bluetooth switch of the camera (Bluetooth is bound to FTP service)

2，Query the internal network IP of the camera

3，Use FTP client tools (such as Filezillia (desktop), FTP Rush (Android), aFTP (Android), etc.) to connect the camera through an internal network IP. (By default, no username or password is required. If you need to enter a username, you can type root.)

![image-20240321230644765](./image/2.png)

4，Enjoy！





### Tips

1，The Bluetooth switch of the camera is bound to enable the FTP service, but it does not mean that turning off Bluetooth will also disable the FTP service. If you have concerns about power saving, please take a shutdown action after using the image transfer function to disable the FTP service and screen (the FTP service will not start automatically when turned on, and you need to manually turn on Bluetooth to start)