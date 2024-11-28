<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="24008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Examples" Type="Folder">
			<Item Name="Advanced" Type="Folder">
				<Property Name="NI.SortType" Type="Int">3</Property>
				<Item Name="SubVI" Type="Folder">
					<Item Name="InternalErrorOccured.vi" Type="VI" URL="../Examples/Advanced/SubVI/InternalErrorOccured.vi"/>
					<Item Name="RtdeOutputDataReceivedCallbackVI.vi" Type="VI" URL="../Examples/Advanced/SubVI/RtdeOutputDataReceivedCallbackVI.vi"/>
					<Item Name="XmlRpcRequestCallbackVI.vi" Type="VI" URL="../Examples/Advanced/SubVI/XmlRpcRequestCallbackVI.vi"/>
				</Item>
				<Item Name="Dashboard and Primary Interface.vi" Type="VI" URL="../Examples/Advanced/Dashboard and Primary Interface.vi"/>
				<Item Name="Rtde.vi" Type="VI" URL="../Examples/Advanced/Rtde.vi"/>
				<Item Name="XmlRpc.vi" Type="VI" URL="../Examples/Advanced/XmlRpc.vi"/>
			</Item>
			<Item Name="1.Basic demo.vi" Type="VI" URL="../Examples/1.Basic demo.vi"/>
			<Item Name="2.Rtde.vi" Type="VI" URL="../Examples/2.Rtde.vi"/>
			<Item Name="3.Rtde.vi" Type="VI" URL="../Examples/3.Rtde.vi"/>
			<Item Name="5.SFTP.vi" Type="VI" URL="../Examples/5.SFTP.vi"/>
		</Item>
		<Item Name="UnderAutomation.UniversalRobots.lvlib" Type="Library" URL="../UnderAutomation.UniversalRobots/UnderAutomation.UniversalRobots.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="mscorlib" Type="VI" URL="mscorlib">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
