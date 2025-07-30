# Universal Robots LabVIEW Library

<p align="center">
    <img width="100%" alt="Universal Robots LabVIEW Library" src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/banner.png" >
</p>

[![LABView 2010](https://img.shields.io/badge/LABView-2010-yellow?logo=LabVIEW)](#)
[![LABView 2011](https://img.shields.io/badge/LABView-2011-yellow?logo=LabVIEW)](#)
[![LABView 2012](https://img.shields.io/badge/LABView-2012-yellow?logo=LabVIEW)](#)
[![LABView 2013](https://img.shields.io/badge/LABView-2013-yellow?logo=LabVIEW)](#)
[![LABView 2014](https://img.shields.io/badge/LABView-2014-yellow?logo=LabVIEW)](#)
[![LABView 2015](https://img.shields.io/badge/LABView-2015-yellow?logo=LabVIEW)](#)
[![LABView 2016](https://img.shields.io/badge/LABView-2016-yellow?logo=LabVIEW)](#)
[![LABView 2017](https://img.shields.io/badge/LABView-2017-yellow?logo=LabVIEW)](#)
[![LABView 2018](https://img.shields.io/badge/LABView-2018-yellow?logo=LabVIEW)](#)
[![LABView 2019](https://img.shields.io/badge/LABView-2019-yellow?logo=LabVIEW)](#)
[![LABView 2020](https://img.shields.io/badge/LABView-2020-yellow?logo=LabVIEW)](#)
[![LABView 2021](https://img.shields.io/badge/LABView-2021-yellow?logo=LabVIEW)](#)
[![LABView 2022](https://img.shields.io/badge/LABView-2022-yellow?logo=LabVIEW)](#)
[![LABView 2023](https://img.shields.io/badge/LABView-2023-yellow?logo=LabVIEW)](#)
[![LABView 2024](https://img.shields.io/badge/LABView-2024-yellow?logo=LabVIEW)](#)

### 🤖 Effortlessly Communicate with Universal Robots

The **Universal Robots SDK** enables seamless integration with Universal Robots for automation, data exchange, and remote control. Ideal for industrial automation, research, and advanced robotics applications.

🔗 **More Information:** [https://underautomation.com/universal-robots](https://underautomation.com/universal-robots)  
🔗 Also available for **[🟦 .NET](https://github.com/underautomation/UniversalRobots.NET)** & **[🐍 Python](https://github.com/underautomation/UniversalRobots.py)** & [🧊 Unity](https://github.com/underautomation/UniversalRobots.Unity)

---

[⭐ Star if you like it !](https://github.com/underautomation/UniversalRobots.vi/stargazers)

[👁️ Watch to be notified of latest updates !](https://github.com/underautomation/UniversalRobots.vi/watchers)

---

## 🚀 TL;DR (Too Long; Didn’t Read)

✔️ **Full RTDE Support** – Read & write at up to **500Hz**  
✔️ **Send URScript Commands** – Control robots in real-time  
✔️ **Dashboard Server** – Manage power, programs, and states  
✔️ **Secure Connections** – SSH & SFTP support  
✔️ **Multiple versions of LV** – 2010+  
✔️ **Commercial License** – Deploy with no royalties

📹 **Watch Introduction Video**

https://user-images.githubusercontent.com/47540360/143318635-6d6aaaf4-5642-457a-8ff1-4322f2defe82.mp4

---

## 📥 Download Example Applications

Explore the **Universal Robots SDK** with fully functional example applications for your LabVIEW version.

📌 **Download:** [📥 UnderAutomation.UniversalRobots.lvproj](https://github.com/underautomation/UniversalRobots.vi/releases)

<p align="center">
    <img height="250" src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/main-demo-connect.png" >
    <img height="250" src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/main-demo-io.png" >
</p>


---
## 📌 Features
The library is a set of .vi files grouped under a library ```UnderAutomation.UniversalRobots.lvlib```.

📌 **Download:** [📥 UnderAutomation.UniversalRobots.lvlib](https://github.com/underautomation/UniversalRobots.vi/releases)

<p align="center">
    <img src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/project-items.png" >
</p>

### 🖧 Connect to the robot



![Disconnect](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/Disconnect.png)

### Primary Interface

The Primary Interface is a low-level TCP/IP socket-based interface used to exchange real-time data between a Universal Robot and an external system. It allows users to monitor robot states, such as joint positions and speeds, and also to send control commands, like URScript script instructions.

The sample VI `Examples/1.Primary Interface.vi` allows you to test the functionality provided by Primary Interface.

#### Connect to Primary Interface

When calling the `ConnectToRobot.vi` VI, in addition to the robot's IP address, the `Enable Primary Interface` Boolean must be set to TRUE in order to obtain an instance of the connection to the Primary Interface as output.

Once this instance has been obtained, it will be used as input for the VIs described below.

![Primary interface connect](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterfaceConnect.png)

#### Send Script


![Primary interface send script](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterfaceSendScript.png)

![Primary interface send script front 1](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterfaceSendScript_front_1.png)
![Primary interface send script front 2](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterfaceSendScript_front_2.png)


![Primary interface get data](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterfaceGetData.png)
![Primary interface get state](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterfaceGetState.png)
![Primary interface get variables](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterfaceGetVariables.png)
![Primary interface get variables front](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterfaceGetVariables_front.png)

![Primary interface send script configuration](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterfaceSendScript_Configuration.png)

![Primary interface current position front](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterface_CurrentPosition_front.gif)
![Primary interface IOs](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterface_IOs.png)
![Primary interface kinematics](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterface_Kinematics.png)
![Primary interface status](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterface_Status.png)

### RTDE
![RTDE actual position front](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/RTDE_ActualPosition_front.gif)
![RTDE speed](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/RTDE_Speed.gif)


### Dashboard Server

![Dashboard commands](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/DashboardCommands.png)
![Dashboard state](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/DashboardState.png)




### SFTP
SFTP (Secure File Transfer Protocol) is a protocol on SSH that allows to create, read, update, delete (CRUD) files and folders on the robot controller.

This feature is made possible because an embedded Linux is running in the robot.


![SFTP](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/SFTP.png)

![SFTP init](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/SftpInit.png)

![SFTP create directory](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/SftpCreateDirectory.png)
![SFTP delete](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/SftpDelete.png)
![SFTP enumerates programs](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/SftpEnumaratesPrograms.png)
![SFTP enumerate installations](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/SftpEnumerateInstallations.png)
![SFTP get state](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/SftpGetState.png)


---

## 🔍 Compatibility

- ✅ Robots: UR3, UR5, UR10, UR16, UR20, UR30, CB-Series, e-Series, Polyscope, Polyscope X  
- ✅ LabVIEW : from 2010  

More info 👉 [underautomation.com/universal-robots](https://underautomation.com/universal-robots)

---

## ⭐ How to Support

If you like this project:

- ⭐ **Star the repo**  
- 👁️ **Watch to stay updated**  
- 📢 **Spread the word to fellow robotics devs!**

---

## 📢 Contributing

We ❤️ contributions!  
Feel free to:

- 🐞 Report issues via GitHub Issues  
- ✨ Submit pull requests with improvements  
- 💡 Share your feedback or feature requests  

---

## 📜 License

⚠️ This SDK requires a **commercial license** to use.  
Learn more: [UnderAutomation Licensing](https://underautomation.com/universal-robots)

---

## 📬 Need Help?

- 📖 Check the **[Documentation](https://underautomation.com/universal-robots/documentation)**  
- 📩 Reach out via **[Support](https://underautomation.com/contact)**  
