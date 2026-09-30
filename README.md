# Universal Robots LabVIEW Library

<p align="center">
    <img width="100%" alt="Universal Robots LabVIEW Library" src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/banner.png" >
</p>

[![LabVIEW 2010](https://img.shields.io/badge/LabVIEW-2010-yellow?logo=LabVIEW)](#)
[![LabVIEW 2011](https://img.shields.io/badge/LabVIEW-2011-yellow?logo=LabVIEW)](#)
[![LabVIEW 2012](https://img.shields.io/badge/LabVIEW-2012-yellow?logo=LabVIEW)](#)
[![LabVIEW 2013](https://img.shields.io/badge/LabVIEW-2013-yellow?logo=LabVIEW)](#)
[![LabVIEW 2014](https://img.shields.io/badge/LabVIEW-2014-yellow?logo=LabVIEW)](#)
[![LabVIEW 2015](https://img.shields.io/badge/LabVIEW-2015-yellow?logo=LabVIEW)](#)
[![LabVIEW 2016](https://img.shields.io/badge/LabVIEW-2016-yellow?logo=LabVIEW)](#)
[![LabVIEW 2017](https://img.shields.io/badge/LabVIEW-2017-yellow?logo=LabVIEW)](#)
[![LabVIEW 2018](https://img.shields.io/badge/LabVIEW-2018-yellow?logo=LabVIEW)](#)
[![LabVIEW 2019](https://img.shields.io/badge/LabVIEW-2019-yellow?logo=LabVIEW)](#)
[![LabVIEW 2020](https://img.shields.io/badge/LabVIEW-2020-yellow?logo=LabVIEW)](#)
[![LabVIEW 2021](https://img.shields.io/badge/LabVIEW-2021-yellow?logo=LabVIEW)](#)
[![LabVIEW 2022](https://img.shields.io/badge/LabVIEW-2022-yellow?logo=LabVIEW)](#)
[![LabVIEW 2023](https://img.shields.io/badge/LabVIEW-2023-yellow?logo=LabVIEW)](#)
[![LabVIEW 2024](https://img.shields.io/badge/LabVIEW-2024-yellow?logo=LabVIEW)](#)

**UnderAutomation.UniversalRobots** for LabVIEW is a library of VIs that communicates with Universal Robots
cobots (CB-Series, e-Series and the newer models) through the standard interfaces of the controller: Primary
Interface, RTDE, Dashboard Server and SFTP. It works with LabVIEW 2010 and later, on Windows. No URCap and
no option is needed on the robot.

The VIs wrap the .NET library of the [UniversalRobots.NET](https://github.com/underautomation/UniversalRobots.NET)
repository (.NET Framework 3.5 build).

- Product page: [underautomation.com/universal-robots](https://underautomation.com/universal-robots)
- Documentation: [underautomation.com/universal-robots/documentation/get-started-labview](https://underautomation.com/universal-robots/documentation/get-started-labview)
- Also available for [.NET](https://github.com/underautomation/UniversalRobots.NET), [Python](https://github.com/underautomation/UniversalRobots.py) and [Unity](https://github.com/underautomation/UniversalRobots.Unity)

Introduction video:

https://user-images.githubusercontent.com/47540360/143318635-6d6aaaf4-5642-457a-8ff1-4322f2defe82.mp4

## What you can do

- **Primary Interface:** send URScript commands, read the robot state 10 times per second, read the program
  variables.
- **RTDE:** read the robot data and write inputs and registers, at up to 500 Hz.
- **Dashboard Server:** power, brakes, programs, operational mode, popups and robot state.
- **SFTP:** list, download, upload and delete files and folders on the controller.

## Download

The [releases page](https://github.com/underautomation/UniversalRobots.vi/releases) gives one zip per
LabVIEW version (`UnderAutomation.UniversalRobots_LabVIEW_<version>.zip`). Each zip contains the library
`UnderAutomation.UniversalRobots/UnderAutomation.UniversalRobots.lvlib`, the project `Demo.lvproj` and the
examples. You can also clone this repository and open the folder of your LabVIEW version.

<p align="center">
    <img height="250" src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/main-demo-connect.png" >
    <img height="250" src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/main-demo-io.png" >
</p>

## Features

The library is a set of .vi files grouped under a library ```UnderAutomation.UniversalRobots.lvlib```.

<p align="center">
    <img src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/project-items.png" >
</p>

### Connect to the robot

#### Register License (optional)

After downloading, you have 30 days to test the software.

If you purchase a license or request a license extension, you will receive a Licensee/key pair that unlocks the SDK. This information is confidential and must remain within your company. 

If the 30-day trial period has expired, or if the license key is not or is no longer valid, an exception will be raised when calling the VI `ConnectToRobot`.

The VI `RegisterLicense` allows you to enter your license key into the library. This VI must be called before `ConnectToRobot`.

![Register license](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/RegisterLicense.png)

#### Connect

The VI `ConnectToRobot` will be documented in more detail for each interface below.

This VI allows you to select the robot interfaces you want to connect to, as well as the robot's IP address.

For Primary Interface and Dashboard, these are simple Booleans that indicate whether you want to use this interface. However, for RTDE or SFTP, an intermediate initialization VI allows you to configure the interface.

The `ConnectToRobot` VI returns an instance for each interface to connect to. An error on the error slot may be returned if the connection fails.

Finally, a `Robot` instance is also returned for use in the disconnect VI.

### Disconnect

The VI `DisconnectFromRobot` allows you to disconnect all of the robot's interfaces.

![Disconnect](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/Disconnect.png)

### Primary Interface

The Primary Interface is a low-level TCP/IP socket-based interface used to exchange real-time data between a Universal Robot and an external system. It allows users to monitor robot states, such as joint positions and speeds, and also to send control commands, like URScript script instructions.

The sample VI `Examples/1.Primary Interface.vi` allows you to test the functionality provided by Primary Interface.

#### Connect to Primary Interface

When calling the `ConnectToRobot.vi` VI, in addition to the robot's IP address, the `Enable Primary Interface` Boolean must be set to TRUE in order to obtain an instance of the connection to the Primary Interface as output.

Once this instance has been obtained, it will be used as input for the VIs described below.

![Primary interface connect](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterfaceConnect.png)

The VI `PrimaryInterfaceGetState` then returns a Boolean value indicating whether the interface is connected:

![Primary interface get state](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterfaceGetState.png)

#### Send Script

The URScript language is similar to Python and was developed by Universal Robots.

The Primary Interface allows you to send lines of script to move the robot, control I/Os, etc.

There is no execution success return. The robot must also be in Remote mode and Powered On to accept move commands.

In URScript:
- If a script line is sent, it stops the program currently running and is executed immediately.
- To execute multiple lines of URScript, the lines must be encapsulated in a `def` block.
- To avoid stopping the main script and execute script lines in parallel, the lines must be encapsulated in a `sec` block. However, it is not possible to execute move/instructions in this block.

<p align="center">
    <img alt="Primary interface send script" src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterfaceSendScript.png" >
</p>

<p align="center">
    <img width="45%" alt="Primary interface send script front" src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterfaceSendScript_front_1.png" >
    <img width="45%" alt="Primary interface send script front" src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterfaceSendScript_front_2.png" >
</p>

#### Get robot state

The robot's status is received every 100 ms (at 10 Hz).

It consists of numerous packets containing information, which are presented in LabVIEW in the form of clusters.

The VI `PrimaryInterfaceIsNewDataAvailable` indicates whether new data has just been received.

If so, the VI `PrimaryInterfaceGetData` allows this data to be retrieved in a cluster.

<p align="center">
        <img src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterfaceGetData.png" >
</p>

<p align="center">
    <img height="150" src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterfaceSendScript_Configuration.png" >
    <img height="150" src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterface_CurrentPosition_front.gif" >
    <img height="150" src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterface_IOs.png" >
    <img height="150" src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterface_Kinematics.png" >
    <img height="150" src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterface_Status.png" >
</p>

#### Robot program variables

In addition to the previous data, the VI `PrimaryInterfaceGetVariables` allows you to obtain a list of program variables currently in use in the current robot program. Please note: Primary Interface must be connected when the program starts in order for the list to be updated.

![Primary interface get variables](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterfaceGetVariables.png)

![Primary interface get variables front](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/PrimaryInterfaceGetVariables_front.png)

### RTDE: Real-Time Data Exchange

RTDE (Real-Time Data Exchange) allows you to exchange data and measurements with the robot at high speed, up to 500Hz on the latest cobots.

The sample VI `Examples/2.RTDE.vi` allows you to test the functionality provided by RTDE.

#### Initialization

The VI `RtdeInitialize` allows you to create the RTDE connection parameters that must be passed in addition to the IP address to the VI `ConnectToRobot`.

The following must be specified as input to `RtdeInitialize`:
- The data reception frequency (up to 500Hz)
- The outputs you want to receive (i.e., the measurements sent by the robot to LabVIEW)
- The inputs you want to write from LabVIEW to the robot controller.

The inputs are entered in the top slots, while the outputs are entered in the bottom slots. Each slot is a list of either enumerated values or integers for each type of register.

An RTDE instance is thus obtained at the output of the VI `ConnectToRobot`.

![RTDE actual position front](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/RtdeInit.png)

#### Read data

The VI `RtdeIsNewDataAvailable` indicates whether new RTDE data has been received.

If so, calling the VI `RtdeGetData` returns a cluster containing all RTDE data, but only the data subscribed to during connection is refreshed.

![RTDE actual position front](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/RTDE_ActualPosition_front.gif)

#### Write data

The VI `RtdeWriteInputs` allows you to write the data you subscribed to when you connected.

![RTDE write inputs](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/RtdeWriteInputs.png)

![RTDE speed](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/RTDE_Speed.gif)

### Dashboard Server

Dashboard allows commands to be sent to remotely control the robot.

The sample VI `Examples/3.Dashboard.vi` allows you to test the functionality provided by the Dashboard Server.

A Dashboard instance is obtained at the output of the `ConnectToRobot` VI if the `Enable Dashboard` Boolean has been set to TRUE.

* **DashboardPowerOff.vi**: Powers off the robot system.
* **DashboardPowerOn.vi**: Powers on the robot system.
* **DashboardAddToLog.vi**: Adds a custom message to the robot's log file.
* **DashboardClearOperationalMode.vi**: Clears the current operational mode setting.
* **DashboardShowPopup.vi**: Displays a custom popup message on the robot’s interface.
* **DashboardClosePopup.vi**: Closes an open popup window on the robot's interface.
* **DashboardCloseSafetyPopup.vi**: Closes the safety-related popup displayed on the robot.
* **DashboardGetLoadedProgram.vi**: Retrieves the name of the currently loaded program.
* **DashboardGetOperationalMode.vi**: Gets the current operational mode of the robot.
* **DashboardGetPolyscopeVersion.vi**: Returns the version of the PolyScope software installed on the robot.
* **DashboardGetProgramState.vi**: Retrieves the current state of the loaded program (e.g., running, paused, stopped).
* **DashboardGetRobotMode.vi**: Gets the current mode of the robot (e.g., Power Off, Idle, Running).
* **DashboardGetRobotModel.vi**: Returns the model type of the connected robot.
* **DashboardGetSafetyStatus.vi**: Retrieves the current safety status.
* **DashboardGetSerialNumber.vi**: Gets the robot’s serial number.
* **DashboardGetVariable.vi**: Reads the value of a global variable from the robot.
* **DashboardIsInRemoteControl.vi**: Checks if the robot is currently in remote control mode.
* **DashboardIsProgramSaved.vi**: Verifies if the currently loaded program has been saved.
* **DashboardLoadInstallation.vi**: Loads a specific robot installation file.
* **DashboardLoadProgram.vi**: Loads a robot program from the file system.
* **DashboardPause.vi**: Pauses the currently running program.
* **DashboardPlay.vi**: Starts or resumes the loaded robot program.
* **DashboardReleaseBrake.vi**: Releases the brakes on the robot joints.
* **DashboardRestartSafety.vi**: Restarts the robot’s safety system.
* **DashboardSetOperationalMode.vi**: Sets the robot’s operational mode.
* **DashboardShutdown.vi**: Initiates a full system shutdown of the robot.
* **DashboardStop.vi**: Stops the currently running program.
* **DashboardUnlockProtectiveStop.vi**: Unlocks the robot from a protective stop condition.

![Dashboard commands](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/DashboardCommands.png)

![Dashboard state](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/DashboardState.png)

### SFTP
SFTP (Secure File Transfer Protocol) is a protocol on SSH that allows to create, read, update, delete (CRUD) files and folders on the robot controller.

This feature is made possible because an embedded Linux is running in the robot.

The sample VI `Examples/4.SFTP.vi` allows you to test the functionality provided by SFTP.

#### Connection
The VI `SftpInitialize` must be passed as input to `ConnectToRobot` in order to specify the user and password for the SSH connection that enables the SFTP link.

This results in an SFTP instance that can be used as input for the following VIs.

![SFTP init](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/SftpInit.png)

![SFTP](https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/SFTP.png)

#### Manipulate files

The following VIs manage files and directories:

* **SftpCreateDirectory.vi**: Creates a new directory on the robot's file system via SFTP.
* **SftpDelete.vi**: Deletes a specified file or directory on the robot using SFTP.
* **SftpDownloadFile.vi**: Downloads a file from the robot to the local system via SFTP.
* **SftpEnumerateInstallations.vi**: Lists all installation files available on the robot.
* **SftpEnumeratePrograms.vi**: Lists all program files stored on the robot.
* **SftpListDirectory.vi**: Retrieves the list of files and directories at a specified robot path.
* **SftpUploadFile.vi**: Uploads a file from the local system to the robot using SFTP.

<p align="center">
    <img height="150" src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/SftpCreateDirectory.png" >
    <img height="150" src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/SftpDelete.png" >
    <img height="150" src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/SftpEnumaratesPrograms.png" >
    <img height="150" src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/SftpEnumerateInstallations.png" >
    <img height="150" src="https://raw.githubusercontent.com/underautomation/UniversalRobots.vi/refs/heads/main/.github/assets/SftpGetState.png" >
</p>

## Compatibility

- **LabVIEW:** 2010 to 2024, on Windows.
- **Robots:** UR3, UR5, UR10 (CB-Series), UR3e, UR5e, UR7e, UR10e, UR12e, UR16e (e-Series), UR8 Long, UR15,
  UR18, UR20, UR30, and URSim. The Dashboard Server needs PolyScope (not PolyScope X).

## License

This SDK needs a commercial license. A 30-day trial starts at the first use, no key needed.

- License agreement: [underautomation.com/universal-robots/eula](https://underautomation.com/universal-robots/eula) and [License.md](License.md)
- Trial, license key and source license: [underautomation.com/universal-robots/documentation/license](https://underautomation.com/universal-robots/documentation/license)
- Prices and quote: [underautomation.com/universal-robots](https://underautomation.com/universal-robots)

## Support

- Documentation: [underautomation.com/universal-robots/documentation](https://underautomation.com/universal-robots/documentation)
- Issues: [GitHub Issues](https://github.com/underautomation/UniversalRobots.vi/issues)
- Contact: [underautomation.com/contact](https://underautomation.com/contact)
