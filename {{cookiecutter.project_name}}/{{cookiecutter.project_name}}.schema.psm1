configuration {{cookiecutter.project_name}}
{
    param (
        [ValidateSet('Present', 'Absent')]
        [string] $Ensure = 'Present',
        [string] $Name = ""
     )
    
    # Install the IIS role
    WindowsFeature IIS
    {
        Ensure          = $Ensure
        Name            = "Web-Server"
    }
    
}
