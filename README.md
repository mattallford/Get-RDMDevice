# Get-RDMDevice
Get-RDMDevice is a powershell function that gets all RDM devices in a vSphere environment that are currently in use by virtual machines
This can be used to export the device details, or it can be piped to another function I wrote, Set-DevicePerennialReservation, to set the perennial reservation to either true or false

Requires the VMware PowerCLI cmdlets - Always run the latest where possible

This is a function, so dot source the PS1 which will then enable you to use the function.
For example:
1. Download and save the ps1 to c:\scripts
2. Run the following to dot source the script and import the function:
. C:\Scripts\Get-RDMDevice.ps1
3. You can now run Get-RDMDevice

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
