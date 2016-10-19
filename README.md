# Get-RDMDevice
Get-RDMDevice is a powershell function that gets all RDM devices in a vSphere environment that are currently in use by virtual machines
This can be used to export the device details, or it can be piped to another function I wrote, Set-DevicePerennialReservation, to set the perennial reservation to either true or false

Requires the VMware PowerCLI cmdlets - Always run the latest where possible

# Parameters
- NimbleGroup - Specify the FQDN or IP address for the management interface of the Nimble Storage Group
- OutputFile - Specify the full path for the OutputFile (CSV)

# Example Usage
   Get-RDMDevice
   This will return all RDM devices connected to virtual machines in the environment

# Change Log
V1.00, 19-10-2016 - Initial Version

#Future ideas
