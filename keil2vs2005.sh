#!/bin/bash

#echo "<FILES>" >> $2
FNAME=$1
SRC_H=$(cat $1 | grep '<FilePath>' | sed 's/<FilePath>//' | sed 's/<\/FilePath>//' | sed  's/ //g' | grep '\.[hH]')
SRC_C=$(cat $1 | grep '<FilePath>' | sed 's/<FilePath>//' | sed 's/<\/FilePath>//' | sed  's/ //g' | grep '\.[cCS]')
VSNAME=${FNAME%".uvproj"}

echo "<?xml version=\"1.0\" encoding=\"gb2312\"?>"
echo "<VisualStudioProject"
echo "	ProjectType=\"Visual C++\""
echo "	Version=\"8.00\""
echo "	Name=\"$VSNAME\""
echo "	ProjectGUID=\"{624A370E-3D0F-411C-BEB7-025B73146EFD}\""
echo "	RootNamespace=\"$VSNAME\""
echo "	Keyword=\"Win32Proj\""
echo "	>"
tail --lines=161 $0 | sed 's/^$//'

    echo "    <Files>"
    echo "          <Filter"
    echo "          Name=\"sources\""
    echo "          Filter=\"c;c;cc;s\""
    echo "          UniqueIdentifier=\"{4FC737F1-C7A5-4376-A066-2A32D752A2FF}\""
    echo "          >"

for f in $SRC_C; do
    echo "        	<File"
    echo "             	RelativePath=\""$f"\""
    echo "             	>"
    echo "        	</File>"
done

    echo "    	</Filter>"
#:<<block
    echo "    	<Filter"
    echo "        	Name=\"herders\""
    echo "        	Filter=\"h;hh;H;HH\""
    echo "        	UniqueIdentifier=\"{93995380-89BD-4b04-88E9-625FBE52EBFB}\""
    echo "          >"
for f in $SRC_H; do
    echo "          <File"
    echo "             	RelativePath=\""$f"\""
    echo "             	>"
    echo "        	</File>"
done
    echo "    	</Filter>"
#block

echo "	</Files>"

echo "	<Globals>"
echo "	</Globals>"
echo "</VisualStudioProject>"

# .hH
#cat $1 | grep '<FilePath>' | sed 's/<FilePath>//' | sed 's/<\/FilePath>//' | sed  's/ //g' | grep '\.[hH]' | sed 's/^/    <File \n        RelativePath=\"/' | sed 's/$/ ><\/FILE>/'
#cat $1 | grep '^<FilePath^>' | sed 's/^<FilePath^>//' | sed 's/^<\/FilePath^>//' | grep ^.^[cCsS^]

#echo "</FILES>" >> $2
exit 0
###########################################################
# Data segment 
###########################################################
	<Platforms>
		<Platform
			Name="Win32"
		/>
	</Platforms>
	<ToolFiles>
	</ToolFiles>
	<Configurations>
		<Configuration
			Name="Debug|Win32"
			OutputDirectory="$(SolutionDir)$(ConfigurationName)"
			IntermediateDirectory="$(ConfigurationName)"
			ConfigurationType="1"
			CharacterSet="1"
			>
			<Tool
				Name="VCPreBuildEventTool"
			/>
			<Tool
				Name="VCCustomBuildTool"
			/>
			<Tool
				Name="VCXMLDataGeneratorTool"
			/>
			<Tool
				Name="VCWebServiceProxyGeneratorTool"
			/>
			<Tool
				Name="VCMIDLTool"
			/>
			<Tool
				Name="VCCLCompilerTool"
				Optimization="0"
				PreprocessorDefinitions="WIN32;_DEBUG;_CONSOLE"
				MinimalRebuild="true"
				BasicRuntimeChecks="3"
				RuntimeLibrary="3"
				UsePrecompiledHeader="0"
				WarningLevel="3"
				Detect64BitPortabilityProblems="true"
				DebugInformationFormat="4"
			/>
			<Tool
				Name="VCManagedResourceCompilerTool"
			/>
			<Tool
				Name="VCResourceCompilerTool"
			/>
			<Tool
				Name="VCPreLinkEventTool"
			/>
			<Tool
				Name="VCLinkerTool"
				LinkIncremental="2"
				GenerateDebugInformation="true"
				SubSystem="1"
				TargetMachine="1"
			/>
			<Tool
				Name="VCALinkTool"
			/>
			<Tool
				Name="VCManifestTool"
			/>
			<Tool
				Name="VCXDCMakeTool"
			/>
			<Tool
				Name="VCBscMakeTool"
			/>
			<Tool
				Name="VCFxCopTool"
			/>
			<Tool
				Name="VCAppVerifierTool"
			/>
			<Tool
				Name="VCWebDeploymentTool"
			/>
			<Tool
				Name="VCPostBuildEventTool"
			/>
		</Configuration>
		<Configuration
			Name="Release|Win32"
			OutputDirectory="$(SolutionDir)$(ConfigurationName)"
			IntermediateDirectory="$(ConfigurationName)"
			ConfigurationType="1"
			CharacterSet="1"
			WholeProgramOptimization="1"
			>
			<Tool
				Name="VCPreBuildEventTool"
			/>
			<Tool
				Name="VCCustomBuildTool"
			/>
			<Tool
				Name="VCXMLDataGeneratorTool"
			/>
			<Tool
				Name="VCWebServiceProxyGeneratorTool"
			/>
			<Tool
				Name="VCMIDLTool"
			/>
			<Tool
				Name="VCCLCompilerTool"
				PreprocessorDefinitions="WIN32;NDEBUG;_CONSOLE"
				RuntimeLibrary="2"
				UsePrecompiledHeader="0"
				WarningLevel="3"
				Detect64BitPortabilityProblems="true"
				DebugInformationFormat="3"
			/>
			<Tool
				Name="VCManagedResourceCompilerTool"
			/>
			<Tool
				Name="VCResourceCompilerTool"
			/>
			<Tool
				Name="VCPreLinkEventTool"
			/>
			<Tool
				Name="VCLinkerTool"
				LinkIncremental="1"
				GenerateDebugInformation="true"
				SubSystem="1"
				OptimizeReferences="2"
				EnableCOMDATFolding="2"
				TargetMachine="1"
			/>
			<Tool
				Name="VCALinkTool"
			/>
			<Tool
				Name="VCManifestTool"
			/>
			<Tool
				Name="VCXDCMakeTool"
			/>
			<Tool
				Name="VCBscMakeTool"
			/>
			<Tool
				Name="VCFxCopTool"
			/>
			<Tool
				Name="VCAppVerifierTool"
			/>
			<Tool
				Name="VCWebDeploymentTool"
			/>
			<Tool
				Name="VCPostBuildEventTool"
			/>
		</Configuration>
	</Configurations>
	<References>
	</References>
