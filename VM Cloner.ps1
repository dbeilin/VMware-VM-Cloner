<# This form was created using POSHGUI.com  a free online gui designer for PowerShell
Version: 1.0.0
Written by Daniel Beilin > https://github.com/Beilish / https://www.reddit.com/user/bei60/
#>

Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$Form                            = New-Object system.Windows.Forms.Form
$Form.ClientSize                 = '684,498'
$Form.text                       = "VM Cloner - Daniel Beilin"
$Form.TopMost                    = $false

$VCenterLbl                      = New-Object system.Windows.Forms.Label
$VCenterLbl.text                 = "VCenter"
$VCenterLbl.AutoSize             = $true
$VCenterLbl.width                = 25
$VCenterLbl.height               = 10
$VCenterLbl.location             = New-Object System.Drawing.Point(26,59)
$VCenterLbl.Font                 = 'Arial,12'

$OSLbl                           = New-Object system.Windows.Forms.Label
$OSLbl.text                      = "OS"
$OSLbl.AutoSize                  = $true
$OSLbl.width                     = 25
$OSLbl.height                    = 10
$OSLbl.location                  = New-Object System.Drawing.Point(26,82)
$OSLbl.Font                      = 'Arial,12'

$TemplateLbl                     = New-Object system.Windows.Forms.Label
$TemplateLbl.text                = "Template"
$TemplateLbl.AutoSize            = $true
$TemplateLbl.width               = 25
$TemplateLbl.height              = 10
$TemplateLbl.location            = New-Object System.Drawing.Point(26,105)
$TemplateLbl.Font                = 'Arial,12'

$VMNameLbl                       = New-Object system.Windows.Forms.Label
$VMNameLbl.text                  = "VM Name \ Number"
$VMNameLbl.AutoSize              = $true
$VMNameLbl.width                 = 25
$VMNameLbl.height                = 10
$VMNameLbl.location              = New-Object System.Drawing.Point(26,174)
$VMNameLbl.Font                  = 'Arial,12'

$DatastoreLbl                    = New-Object system.Windows.Forms.Label
$DatastoreLbl.text               = "Datastore"
$DatastoreLbl.AutoSize           = $true
$DatastoreLbl.width              = 25
$DatastoreLbl.height             = 10
$DatastoreLbl.location           = New-Object System.Drawing.Point(26,151)
$DatastoreLbl.Font               = 'Arial,12'

$CPULbl                          = New-Object system.Windows.Forms.Label
$CPULbl.text                     = "CPU"
$CPULbl.AutoSize                 = $true
$CPULbl.width                    = 25
$CPULbl.height                   = 10
$CPULbl.location                 = New-Object System.Drawing.Point(26,220)
$CPULbl.Font                     = 'Arial,12'

$RAMLbl                          = New-Object system.Windows.Forms.Label
$RAMLbl.text                     = "RAM"
$RAMLbl.AutoSize                 = $true
$RAMLbl.width                    = 25
$RAMLbl.height                   = 10
$RAMLbl.location                 = New-Object System.Drawing.Point(26,243)
$RAMLbl.Font                     = 'Arial,12'

$NotesLbl                        = New-Object system.Windows.Forms.Label
$NotesLbl.text                   = "Notes"
$NotesLbl.AutoSize               = $true
$NotesLbl.width                  = 25
$NotesLbl.height                 = 10
$NotesLbl.location               = New-Object System.Drawing.Point(26,312)
$NotesLbl.Font                   = 'Arial,12'

$NumClonesLbl                    = New-Object system.Windows.Forms.Label
$NumClonesLbl.text               = "Number of Clones"
$NumClonesLbl.AutoSize           = $true
$NumClonesLbl.width              = 25
$NumClonesLbl.height             = 10
$NumClonesLbl.location           = New-Object System.Drawing.Point(26,197)
$NumClonesLbl.Font               = 'Arial,12'

$VCenterTB                       = New-Object system.Windows.Forms.TextBox
$VCenterTB.multiline             = $false
$VCenterTB.width                 = 338
$VCenterTB.height                = 20
$VCenterTB.location              = New-Object System.Drawing.Point(195,52)
$VCenterTB.Font                  = 'Arial,12'

$VMNameTB                        = New-Object system.Windows.Forms.TextBox
$VMNameTB.multiline              = $false
$VMNameTB.text                   = "Enter VM Name"
$VMNameTB.width                  = 338
$VMNameTB.height                 = 20
$VMNameTB.enabled                = $false
$VMNameTB.location               = New-Object System.Drawing.Point(195,172)
$VMNameTB.Font                   = 'Arial,12'

$CPU_TB                          = New-Object system.Windows.Forms.TextBox
$CPU_TB.multiline                = $false
$CPU_TB.width                    = 338
$CPU_TB.height                   = 20
$CPU_TB.enabled                  = $false
$CPU_TB.location                 = New-Object System.Drawing.Point(195,220)
$CPU_TB.Font                     = 'Arial,12'

$RAM_TB                          = New-Object system.Windows.Forms.TextBox
$RAM_TB.multiline                = $false
$RAM_TB.text                     = "In GBs"
$RAM_TB.width                    = 338
$RAM_TB.height                   = 20
$RAM_TB.enabled                  = $false
$RAM_TB.location                 = New-Object System.Drawing.Point(195,244)
$RAM_TB.Font                     = 'Arial,12'

$NotesTB                         = New-Object system.Windows.Forms.TextBox
$NotesTB.multiline               = $false
$NotesTB.width                   = 338
$NotesTB.height                  = 20
$NotesTB.enabled                 = $false
$NotesTB.location                = New-Object System.Drawing.Point(195,316)
$NotesTB.Font                    = 'Arial,12'

$OS_Menu                         = New-Object system.Windows.Forms.ComboBox
$OS_Menu.width                   = 338
$OS_Menu.height                  = 20
$OS_Menu.visible                 = $true
$OS_Menu.enabled                 = $false
@('Windows','CentOS','Red Hat') | ForEach-Object {[void] $OS_Menu.Items.Add($_)}
$OS_Menu.location                = New-Object System.Drawing.Point(195,76)
$OS_Menu.Font                    = 'Arial,12'

$TemplateMenu                    = New-Object system.Windows.Forms.ComboBox
$TemplateMenu.width              = 338
$TemplateMenu.height             = 20
$TemplateMenu.enabled            = $false
$TemplateMenu.location           = New-Object System.Drawing.Point(195,100)
$TemplateMenu.Font               = 'Arial,12'

$NumClonesTB                     = New-Object system.Windows.Forms.TextBox
$NumClonesTB.multiline           = $false
$NumClonesTB.width               = 338
$NumClonesTB.height              = 20
$NumClonesTB.enabled             = $false
$NumClonesTB.location            = New-Object System.Drawing.Point(195,196)
$NumClonesTB.Font                = 'Arial,12'

$DatastoreMenu                   = New-Object system.Windows.Forms.ComboBox
$DatastoreMenu.width             = 338
$DatastoreMenu.height            = 20
$DatastoreMenu.enabled           = $false
$DatastoreMenu.location          = New-Object System.Drawing.Point(195,148)
$DatastoreMenu.Font              = 'Arial,12'

$OptionsLbl                      = New-Object system.Windows.Forms.Label
$OptionsLbl.text                 = "Options"
$OptionsLbl.AutoSize             = $true
$OptionsLbl.width                = 25
$OptionsLbl.height               = 10
$OptionsLbl.location             = New-Object System.Drawing.Point(26,354)
$OptionsLbl.Font                 = 'Arial,12'

$StartVM_CB                      = New-Object system.Windows.Forms.CheckBox
$StartVM_CB.text                 = "Start VM After Creation"
$StartVM_CB.AutoSize             = $false
$StartVM_CB.width                = 424
$StartVM_CB.height               = 20
$StartVM_CB.enabled              = $false
$StartVM_CB.location             = New-Object System.Drawing.Point(195,354)
$StartVM_CB.Font                 = 'Arial,12'

$OKButton                        = New-Object system.Windows.Forms.Button
$OKButton.text                   = "Start Clone"
$OKButton.width                  = 115
$OKButton.height                 = 30
$OKButton.location               = New-Object System.Drawing.Point(12,437)
$OKButton.Font                   = 'Arial,12'

$CancelButton                    = New-Object system.Windows.Forms.Button
$CancelButton.text               = "Cancel"
$CancelButton.width              = 115
$CancelButton.height             = 30
$CancelButton.location           = New-Object System.Drawing.Point(554,437)
$CancelButton.Font               = 'Arial,12'

$ConnectButton                   = New-Object system.Windows.Forms.Button
$ConnectButton.text              = "Connect"
$ConnectButton.width             = 87
$ConnectButton.height            = 21
$ConnectButton.location          = New-Object System.Drawing.Point(536,52)
$ConnectButton.Font              = 'Arial,12'
$ConnectButton.ForeColor         = "#7ed321"

$FetchButton                     = New-Object system.Windows.Forms.Button
$FetchButton.text                = "Fetch"
$FetchButton.width               = 87
$FetchButton.height              = 21
$FetchButton.location            = New-Object System.Drawing.Point(536,76)
$FetchButton.Font                = 'Arial,12'

$StatusLbl                       = New-Object system.Windows.Forms.Label
$StatusLbl.text                  = "Connection Status:"
$StatusLbl.AutoSize              = $true
$StatusLbl.width                 = 25
$StatusLbl.height                = 10
$StatusLbl.location              = New-Object System.Drawing.Point(6,477)
$StatusLbl.Font                  = 'Arial,11'

$ConnectedStatus                 = New-Object system.Windows.Forms.Label
$ConnectedStatus.text            = "Idle"
$ConnectedStatus.AutoSize        = $true
$ConnectedStatus.width           = 25
$ConnectedStatus.height          = 10
$ConnectedStatus.location        = New-Object System.Drawing.Point(145,477)
$ConnectedStatus.Font            = 'Arial,11'

$ProvisionedLbl                  = New-Object system.Windows.Forms.Label
$ProvisionedLbl.text             = "Provisioned"
$ProvisionedLbl.AutoSize         = $true
$ProvisionedLbl.width            = 25
$ProvisionedLbl.height           = 10
$ProvisionedLbl.location         = New-Object System.Drawing.Point(425,373)
$ProvisionedLbl.Font             = 'Arial,10'
$ProvisionedLbl.ForeColor        = "#4a90e2"

$FreeLbl                         = New-Object system.Windows.Forms.Label
$FreeLbl.text                    = "Free"
$FreeLbl.AutoSize                = $true
$FreeLbl.width                   = 25
$FreeLbl.height                  = 10
$FreeLbl.location                = New-Object System.Drawing.Point(425,392)
$FreeLbl.Font                    = 'Arial,10'
$FreeLbl.ForeColor               = "#7ed321"

$VLANLbl                         = New-Object system.Windows.Forms.Label
$VLANLbl.text                    = "VLAN"
$VLANLbl.AutoSize                = $true
$VLANLbl.width                   = 25
$VLANLbl.height                  = 10
$VLANLbl.location                = New-Object System.Drawing.Point(26,266)
$VLANLbl.Font                    = 'Arial,12'

$VLAN_CB                         = New-Object system.Windows.Forms.ComboBox
$VLAN_CB.width                   = 338
$VLAN_CB.height                  = 20
$VLAN_CB.enabled                 = $false
$VLAN_CB.location                = New-Object System.Drawing.Point(195,268)
$VLAN_CB.Font                    = 'Arial,12'

$ErrorProvider1                  = New-Object system.Windows.Forms.ErrorProvider

$FolderLbl                       = New-Object system.Windows.Forms.Label
$FolderLbl.text                  = "Folder"
$FolderLbl.AutoSize              = $true
$FolderLbl.width                 = 25
$FolderLbl.height                = 10
$FolderLbl.location              = New-Object System.Drawing.Point(26,289)
$FolderLbl.Font                  = 'Arial,12'

$FolderFetchButton               = New-Object system.Windows.Forms.Button
$FolderFetchButton.text          = "Find Folder"
$FolderFetchButton.width         = 87
$FolderFetchButton.height        = 21
$FolderFetchButton.location      = New-Object System.Drawing.Point(536,292)
$FolderFetchButton.Font          = 'Arial,10'

$FolderCB                        = New-Object system.Windows.Forms.ComboBox
$FolderCB.width                  = 338
$FolderCB.height                 = 20
$FolderCB.enabled                = $false
$FolderCB.location               = New-Object System.Drawing.Point(195,292)
$FolderCB.Font                   = 'Arial,12'

$VM_NumTB                        = New-Object system.Windows.Forms.TextBox
$VM_NumTB.multiline              = $false
$VM_NumTB.text                   = "01"
$VM_NumTB.width                  = 77
$VM_NumTB.height                 = 20
$VM_NumTB.enabled                = $false
$VM_NumTB.location               = New-Object System.Drawing.Point(536,172)
$VM_NumTB.Font                   = 'Arial,12'

$CustomizationCB                 = New-Object system.Windows.Forms.ComboBox
$CustomizationCB.width           = 338
$CustomizationCB.height          = 20
$CustomizationCB.enabled         = $false
$CustomizationCB.location        = New-Object System.Drawing.Point(195,124)
$CustomizationCB.Font            = 'Arial,12'

$CustomizationLbl                = New-Object system.Windows.Forms.Label
$CustomizationLbl.text           = "Custom Template"
$CustomizationLbl.AutoSize       = $true
$CustomizationLbl.width          = 25
$CustomizationLbl.height         = 10
$CustomizationLbl.location       = New-Object System.Drawing.Point(26,128)
$CustomizationLbl.Font           = 'Arial,12'

$StorageLeftLbl                  = New-Object system.Windows.Forms.Label
$StorageLeftLbl.text             = "Storage Left After Clone"
$StorageLeftLbl.AutoSize         = $true
$StorageLeftLbl.width            = 25
$StorageLeftLbl.height           = 10
$StorageLeftLbl.location         = New-Object System.Drawing.Point(425,411)
$StorageLeftLbl.Font             = 'Arial,10'
$StorageLeftLbl.ForeColor        = "#d0021b"

$DSInfoLbl                       = New-Object system.Windows.Forms.Label
$DSInfoLbl.text                  = "Data Store Information"
$DSInfoLbl.AutoSize              = $true
$DSInfoLbl.width                 = 25
$DSInfoLbl.height                = 10
$DSInfoLbl.location              = New-Object System.Drawing.Point(462,352)
$DSInfoLbl.Font                  = 'Arial,10,style=Underline'

$ProvisionedLbl2                 = New-Object system.Windows.Forms.Label
$ProvisionedLbl2.AutoSize        = $true
$ProvisionedLbl2.width           = 25
$ProvisionedLbl2.height          = 10
$ProvisionedLbl2.location        = New-Object System.Drawing.Point(581,373)
$ProvisionedLbl2.Font            = 'Arial,10'
$ProvisionedLbl2.ForeColor       = "#4a90e2"

$FreeLbl2                        = New-Object system.Windows.Forms.Label
$FreeLbl2.AutoSize               = $true
$FreeLbl2.width                  = 25
$FreeLbl2.height                 = 10
$FreeLbl2.location               = New-Object System.Drawing.Point(581,392)
$FreeLbl2.Font                   = 'Arial,10'
$FreeLbl2.ForeColor              = "#7ed321"

$StorageLeftLbl2                 = New-Object system.Windows.Forms.Label
$StorageLeftLbl2.AutoSize        = $true
$StorageLeftLbl2.width           = 25
$StorageLeftLbl2.height          = 10
$StorageLeftLbl2.location        = New-Object System.Drawing.Point(581,411)
$StorageLeftLbl2.Font            = 'Arial,10'
$StorageLeftLbl2.ForeColor       = "#d0021b"

$Form.controls.AddRange(@($VCenterLbl,$OSLbl,$TemplateLbl,$VMNameLbl,$DatastoreLbl,$CPULbl,$RAMLbl,$NotesLbl,$NumClonesLbl,$VCenterTB,$VMNameTB,$CPU_TB,$RAM_TB,$NotesTB,$OS_Menu,$TemplateMenu,$NumClonesTB,$DatastoreMenu,$OptionsLbl,$StartVM_CB,$OKButton,$CancelButton,$ConnectButton,$FetchButton,$StatusLbl,$ConnectedStatus,$ProvisionedLbl,$FreeLbl,$VLANLbl,$VLAN_CB,$FolderLbl,$FolderFetchButton,$FolderCB,$VM_NumTB,$CustomizationCB,$CustomizationLbl,$StorageLeftLbl,$DSInfoLbl,$ProvisionedLbl2,$FreeLbl2,$StorageLeftLbl2))

$ConnectButton.Add_MouseClick({ VCenterConnect })
$FetchButton.Add_MouseClick({ FetchOS })
$OKButton.Add_MouseClick({ StartClone })
$CancelButton.Add_MouseClick({ Cancel })
$DatastoreMenu.Add_SelectedValueChanged({ DatastoreChosen })
$FolderFetchButton.Add_MouseClick({ FolderFetch })
$NumClonesTB.Add_TextChanged({ CalculateStorage })


##########################################
#Code
##########################################

function CalculateStorage {
    $NumClones = [int]$NumClonesTB.Text #Number of clones
    $TemplateName = $TemplateMenu.Text #Template Name
    $TP = Get-Template -Name $TemplateName
    $TemplateSize = [math]::round($tp.extensiondata.storage.perdatastoreusage.committed/1073741824/1) #Get size in an int32 variable to multiply later. We also rounded it.
    $TotalSize = ($NumClones * $TemplateSize)
    $Global:StorageLeft = $script:DS_FreeSpace - $TotalSize
    $StorageLeftLbl2.Text = ($Global:StorageLeft, 'GB')
}
function FolderFetch { 
    $FolderCB.Items.Clear()
    $FolderCB_Contents = $FolderCB.Text
    $FolderList = Get-Folder -Name "*$FolderCB_Contents*"
    foreach ($folder in $FolderList) {$FolderCB.Items.Add($folder)}
}
function Cancel { Disconnect-VIServer -Server $VCenterTB.Text -ErrorAction SilentlyContinue -Confirm:$false
$Form.Close() }

function DatastoreChosen { 
    $DS_Name = Get-Datastore $DatastoreMenu.SelectedItem | Get-View | Select-Object -ExpandProperty summary
    $DS_Capacity = [math]::round($DS_Name.Capacity/1GB)
    $script:DS_FreeSpace = [math]::round($DS_Name.FreeSpace/1GB) #Use the $script variable to use $DS_FreeSpace in another function
    $ProvisionedLbl2.Text = $DS_Capacity, 'GB'
    $FreeLbl2.Text = $DS_FreeSpace, 'GB'
    $NumClonesTB.Enabled = $true
    }
function FetchOS { 
    #Clear combox each time a user fetches the OS information
    $CustomizationCB.Items.Clear()
    $TemplateMenu.Items.Clear()
    $DatastoreMenu.Items.Clear()

    #Enable fields once OS is chosen
    $TemplateMenu.Enabled = $true
    $CustomizationCB.Enabled = $true
    $DatastoreMenu.Enabled = $true
    $VMNameTB.Enabled = $true
    $CPU_TB.Enabled = $true
    $RAM_TB.Enabled = $true
    $VLAN_CB.Enabled = $true
    $FolderCB.Enabled = $true
    $NotesTB.Enabled = $true
    $StartVM_CB.Enabled = $true
    $VM_NumTB.Enabled = $true

    #Populates menus with relavent data
    #Windows
    if ($OS_Menu.SelectedItem -eq 'Windows') 
        {$template_list = Get-Template -Name *Win*
        $datastore_list = Get-Datastore -Name *Win*
        $CustomTemplates = Get-OSCustomizationSpec | Where-Object {$_.Name -like "*WIN*"}}

    #Centos
    elseif ($OS_Menu.SelectedItem -eq 'CentOS')
        {$template_list = Get-Template -Name *CentOS*
        $datastore_list = Get-Datastore -Name *CentOS*
        $CustomTemplates = Get-OSCustomizationSpec | Where-Object {$_.Name -like "*CentOS*"}}

    #Redhat
    elseif ($OS_Menu.SelectedItem -eq 'Red Hat')
        {$template_list = Get-Template -Name *RHEL*
        $datastore_list = Get-Datastore -Name *CentOS*
        $CustomTemplates = Get-OSCustomizationSpec | Where-Object {$_.Name -like "*RH*"}}

    foreach ($temp in $template_list) {$TemplateMenu.Items.Add($temp)}
    foreach ($ds in $datastore_list) {$DatastoreMenu.Items.Add($ds)}
    foreach ($template in $CustomTemplates) {$CustomizationCB.Items.Add($template)}
}
function VLANs_List {
    $VLANs = Get-VirtualPortGroup -Datacenter "Holon Datacenter" | Where-Object {$_.Name -like "*VLAN*"} | Select-Object -unique
    foreach ($VLAN in $VLANs) {$VLAN_CB.Items.Add($VLAN)}
    }
function VCenterConnect { if ($VCenterTB.Text -ne '') {
    try {
        if (Connect-VIServer -Server $VCenterTB.Text -ErrorAction Stop) {
            $ConnectedStatus.Text = "Connected to " + $VCenterTB.Text
            $OS_Menu.Enabled = $true
            VLANs_List

        }
    }
    catch {
        $ConnectedStatus.Text = "Failed to connect"
    }
}
}
function StartClone { #Starts the cloning process
    [int]$VMCounter = $NumClonesTB.Text
    $VMNumber = "{0:D2}" -f [int]$VM_NumTB.Text
    $vmh = Get-VMHost

    $NewParameters = @{
        Name                = $VMName
        Template            = $TemplateMenu.Text
        Datastore           = $DatastoreMenu.Text
        DiskStorageFormat   = 'Thin'
        Location            = $FolderCB.Text
        OSCustomizationSpec = $CustomizationCB.Text
        VMHost              = Get-Random -InputObject $vmh
        Server              = $VCenterTB.Text
        RunAsync            = $true
    }

    $SetParameters = @{
        NumCpu              = $CPU_TB.Text
        MemoryGB            = $RAM_TB.Text
        Notes               = $NotesTB.Text
        Confirm             = $false
    }

    $taskList = if ($NumClonesTB.Text.Length -gt 0) {
        for ($i = 0; $i -lt $VMCounter; $i++) {
            $NewParameters['Name'] = $VMNameTB.Text + $VMNumber
            New-VM @NewParameters
            $VMNumber = "{0:D2}" -f ([int]$VMNumber + 1)
        }
    }
    $newVM = $taskList | Wait-Task
    $newVM | Set-VM @SetParameters
    $newVM | Get-NetworkAdapter | Set-NetworkAdapter -NetworkName $VLAN_CB.Text -Confirm:$false
    if ($StartVM_CB.Checked -eq $true) {$newVM | Start-VM }
}

[void]$Form.ShowDialog()
