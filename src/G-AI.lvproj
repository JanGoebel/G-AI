<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="26008000">
	<Property Name="NI.LV.All.SaveVersion" Type="Str">26.0</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">true</Property>
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
		<Item Name="Modules" Type="Folder">
			<Item Name="G-AI Core.lvlib" Type="Library" URL="../G-AI Core/G-AI Core.lvlib"/>
		</Item>
		<Item Name="Testers" Type="Folder">
			<Property Name="NI.SortType" Type="Int">3</Property>
			<Item Name="Test G-AI Core API.vi" Type="VI" URL="../G-AI Core/Test G-AI Core API.vi"/>
		</Item>
		<Item Name="Tools" Type="Folder">
			<Item Name="add_object_to_vi.vi" Type="VI" URL="../tools/add_object_to_vi.vi"/>
			<Item Name="cleanup_vi.vi" Type="VI" URL="../tools/cleanup_vi.vi"/>
			<Item Name="connect_objects.vi" Type="VI" URL="../tools/connect_objects.vi"/>
			<Item Name="create_control.vi" Type="VI" URL="../tools/create_control.vi"/>
			<Item Name="create_new_vi.vi" Type="VI" URL="../tools/create_new_vi.vi"/>
			<Item Name="get_available_objects.vi" Type="VI" URL="../tools/get_available_objects.vi"/>
			<Item Name="get_control.vi" Type="VI" URL="../tools/get_control.vi"/>
			<Item Name="get_enum.vi" Type="VI" URL="../tools/get_enum.vi"/>
			<Item Name="get_object_terminals.vi" Type="VI" URL="../tools/get_object_terminals.vi"/>
			<Item Name="get_project.vi" Type="VI" URL="../tools/get_project.vi"/>
			<Item Name="get_vi_details.vi" Type="VI" URL="../tools/get_vi_details.vi"/>
			<Item Name="rename_object.vi" Type="VI" URL="../tools/rename_object.vi"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build">
			<Item Name="G-AI Source Distribution" Type="Source Distribution">
				<Property Name="Bld_autoIncrement" Type="Bool">true</Property>
				<Property Name="Bld_buildCacheID" Type="Str">{898F38AA-DE03-4A40-87C8-904539F1F132}</Property>
				<Property Name="Bld_buildSpecName" Type="Str">G-AI Source Distribution</Property>
				<Property Name="Bld_excludedDirectory[0]" Type="Path">vi.lib</Property>
				<Property Name="Bld_excludedDirectory[0].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[1]" Type="Path">instr.lib</Property>
				<Property Name="Bld_excludedDirectory[1].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[2]" Type="Path">user.lib</Property>
				<Property Name="Bld_excludedDirectory[2].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[3]" Type="Path">resource/objmgr</Property>
				<Property Name="Bld_excludedDirectory[3].pathType" Type="Str">relativeToAppDir</Property>
				<Property Name="Bld_excludedDirectory[4]" Type="Path">/C/ProgramData/National Instruments/InstCache/26.0</Property>
				<Property Name="Bld_excludedDirectory[5]" Type="Path">/C/Users/jgoebel/OneDrive - Emerson/Dokumente/LabVIEW Data/2026(64-bit)/ExtraVILib</Property>
				<Property Name="Bld_excludedDirectoryCount" Type="Int">6</Property>
				<Property Name="Bld_localDestDir" Type="Path">../builds/NI_AB_PROJECTNAME/G-AI Source Distribution</Property>
				<Property Name="Bld_localDestDirType" Type="Str">relativeToCommon</Property>
				<Property Name="Bld_previewCacheID" Type="Str">{9A6AA5AD-321F-48CC-A2C3-62837037F383}</Property>
				<Property Name="Bld_removeVIObj" Type="Int">2</Property>
				<Property Name="Bld_version.build" Type="Int">13</Property>
				<Property Name="Bld_version.major" Type="Int">1</Property>
				<Property Name="Destination[0].destName" Type="Str">Destination Directory</Property>
				<Property Name="Destination[0].path" Type="Path">../builds/NI_AB_PROJECTNAME/G-AI Source Distribution</Property>
				<Property Name="Destination[1].destName" Type="Str">Support Directory</Property>
				<Property Name="Destination[1].path" Type="Path">../builds/NI_AB_PROJECTNAME/G-AI Source Distribution/data</Property>
				<Property Name="Destination[2].destName" Type="Str">MCP tools</Property>
				<Property Name="Destination[2].path" Type="Path">../builds/NI_AB_PROJECTNAME/G-AI Source Distribution/tools</Property>
				<Property Name="DestinationCount" Type="Int">3</Property>
				<Property Name="Source[0].itemID" Type="Str">{05D6038A-C2EC-4DBB-A92C-5914BA47848F}</Property>
				<Property Name="Source[0].type" Type="Str">Container</Property>
				<Property Name="Source[1].Container.applyDestination" Type="Bool">true</Property>
				<Property Name="Source[1].Container.applyInclusion" Type="Bool">true</Property>
				<Property Name="Source[1].Container.depDestIndex" Type="Int">0</Property>
				<Property Name="Source[1].destinationIndex" Type="Int">2</Property>
				<Property Name="Source[1].itemID" Type="Ref">/My Computer/Tools</Property>
				<Property Name="Source[1].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[1].type" Type="Str">Container</Property>
				<Property Name="Source[2].destinationIndex" Type="Int">0</Property>
				<Property Name="Source[2].itemID" Type="Ref">/My Computer/Modules/G-AI Core.lvlib</Property>
				<Property Name="Source[2].Library.allowMissingMembers" Type="Bool">true</Property>
				<Property Name="Source[2].sourceInclusion" Type="Str">Include</Property>
				<Property Name="Source[2].type" Type="Str">Library</Property>
				<Property Name="SourceCount" Type="Int">3</Property>
			</Item>
		</Item>
	</Item>
</Project>
