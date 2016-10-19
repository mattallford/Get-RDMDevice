# Get-RDMDevice
Get-RDMDevice is a powershell function that gets all RDM devices in a vSphere environment that are currently in use by virtual machines
This can be used to export the device details, or it can be piped to another function I wrote, Set-DevicePerennialReservation, to set the perennial reservation to either true or false

Requires the VMware PowerCLI cmdlets - Always run the latest where possible

# Parameters
-Location. Set the location to limit the scope of virtual machines that are checked for RDM configurations

# Example Usage
   Get-RDMDevice
   This will return all RDM devices connected to virtual machines in the environment
   
   Get-RDMDevice -Location Cluster1
   This will return all RDM devices connected to virtual machines located in Cluster1

# Change Log
V1.00, 19-10-2016 - Initial Version

#Future ideas
