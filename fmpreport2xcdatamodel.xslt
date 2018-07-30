<?xml version="1.0" encoding="UTF-8"?>
<!-- Written by Gjermund G Thorsen through years 1999 on, all rights deserved
If you are using an older or newer version of XCode than 8.2.1 you may want to copy/paste the model element from your own CoreData file
-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="no"/>
<xsl:template match="/FMPReport">
	<xsl:apply-templates select="File"/>
</xsl:template>
<xsl:template match="File">
<model userDefinedModelVersionIdentifier="" type="com.apple.IDECoreDataModeler.DataModel" documentVersion="1.0" lastSavedToolsVersion="6751" systemVersion="13F1911" minimumToolsVersion="Automatic" macOSVersion="Automatic" iOSVersion="Automatic">
	<xsl:apply-templates select="BaseTableCatalog/BaseTable"/>
</model>
</xsl:template>
<xsl:template match="BaseTableCatalog/BaseTable">
	<entity name="{@name}" representedClassName="{@name}" syncable="YES" codeGenerationType="class">
	<xsl:apply-templates select="FieldCatalog/Field"/>
	</entity>
</xsl:template>
<xsl:template match="FieldCatalog/Field">
	<attribute name="{@name}" optional="YES" attributeType="{concat(
              substring( 'String',	1 div boolean( @dataType  = 'TEXT'      ) ),
              substring( 'String',	1 div boolean( @dataType  = 'Text'      ) ),
              substring( 'Binary',	1 div boolean( @dataType  = 'Binary'    ) ),
              substring( 'Binary',	1 div boolean( @dataType  = 'CONTAINER' ) ),
              substring( 'Binary',	1 div boolean( @dataType  = 'Container' ) ),
              substring( 'Date',	1 div boolean( @dataType  = 'DATE'      ) ),
              substring( 'Date',	1 div boolean( @dataType  = 'Date'      ) ),
              substring( 'Date',	1 div boolean( @dataType  = 'TIMESTAMP' ) ),
              substring( 'Date',	1 div boolean( @dataType  = 'TimeStamp' ) ),
              substring( 'Date',	1 div boolean( @dataType  = 'TIME'      ) ),
              substring( 'Date',	1 div boolean( @dataType  = 'Time'      ) ),
              substring( 'Integer 64',	1 div boolean( @dataType  = 'NUMBER'    ) ),
              substring( 'Integer 64',	1 div boolean( @dataType  = 'Number'    ) )
       )}" defaultValueString="0" syncable="YES" />
</xsl:template>
</xsl:stylesheet><!--
========================================================================================
Copyright (c) 1999 onwards Gjermund Gusland Thorsen, released under the MIT License.
All rights deserved.
This piece comes with ABSOLUTELY NO WARRANTY, to the extent permitted by applicable law.
========================================================================================
-->
