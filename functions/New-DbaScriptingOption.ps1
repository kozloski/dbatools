﻿function New-DbaScriptingOption {
    <#
	.SYNOPSIS
	Creates a new Microsoft.SqlServer.Management.Smo.ScriptingOptions object

	.DESCRIPTION
	Creates a new Microsoft.SqlServer.Management.Smo.ScriptingOptions object. Basically saves you the time from remembering the SMO assembly name ;)
	
	See https://msdn.microsoft.com/en-us/library/microsoft.sqlserver.management.smo.scriptingoptions.aspx for more information
		
	.NOTES
	Tags: Migration, Backup
	
	Website: https://dbatools.io
	Copyright: (C) Chrissy LeMaire, clemaire@gmail.com
	License: GNU GPL v3 https://opensource.org/licenses/GPL-3.0

	.LINK
	https://dbatools.io/New-DbaScriptingOption
	https://msdn.microsoft.com/en-us/library/microsoft.sqlserver.management.smo.scriptingoptions.aspx

	.EXAMPLE
	$options = New-DbaScriptingOption
	$options.Options.ScriptDrops = $false
	$options.Options.WithDependencies = $true
	
	Get-DbaDatabase -SqlInstance sql2016 | Export-DbaScript -ScriptingOptionObject $options
	
	#>
	New-Object Microsoft.SqlServer.Management.Smo.ScriptingOptions
}