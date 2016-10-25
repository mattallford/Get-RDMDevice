<#
.Synopsis
   Returns a list of RDM Devices in an environment

.DESCRIPTION
   Get-RDMDevice returns a list of raw device mapping devices that are currently mapped to a virtual machine
   This can be used to generate a list of devices that should have a perennial reservation set to true. See Set-RDMPerennialReservation for more info

.EXAMPLE
   Get-RDMDevice
   This will return all RDM devices connected to virtual machines in the environment

.EXAMPLE
   Get-RDMDevice -Location Cluster1

.LINK
http://blog.allford.id.au

.NOTES
Written By: Matt Allford
Twitter:	http://twitter.com/mattallford
#>
function Get-RDMDevice
{
    [CmdletBinding()]
    Param
    (
        #Enter location in vCenter to search under
        [Parameter(Mandatory=$false,
                   ValueFromPipelineByPropertyName=$true,
                   Position=0)]
        $Location
    )

    Process
    {
        #If the location is specified, get all VMs in the specified location that has a RDM attached
        if ($Location){
        $RDMDevices = Get-VM -Location $Location | Get-HardDisk -DiskType "RawPhysical","RawVirtual"
        }ELSE{
        #If the location is not specified, get all VMs in the environment that have a RDM attached
        $RDMDevices = Get-VM | Get-HardDisk -DiskType "RawPhysical","RawVirtual"
        }

        if ($RDMDevices){
        $RDMDevices
        }ELSE{
        Write-Output "No RDMs found attached to virtual machines"
        }
    }
}