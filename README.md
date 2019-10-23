This script is pretty customized to my needs. Since every work environment is different, I'd make sure to read everything below and figure out if it suits you.
This is my very first GUI project for Powershell. I can tell in advance that it's not perfect, but it's working. Any feedback is always welcome. Use this with caution, as always, your milage may vary.

***

This is the initial screen you'll see when you run the script
![initial screen](https://i.imgur.com/QM4GZqF.png)

**Some more information about each section:**
- VCenter: connect to whatever VCenter you desire
- OS: Based on your choice of the OS, when you click "Fetch" it will populate the other fields with relevant data.
- Tempalte: If you chose Windows for example, the tempalte combo box will populate any template with the string `win`. Same for CentOS and Redhat (basically I added only 3 OS choices). If you chose CentOS it will search any template with the word `CentOS` in it.
- Custom Template: Once again, it will populate all your OS-related customization templates. This is the same as you would do when you manyally clone a VM and choose to generate a new SID or set it to DHCP, etc.
- Datastore: It's set just like the template section. If you chose Windows as your OS, it will only populate datastores with the string `win` in them. If you don't separate your datastores like me, you might want to change the code a bit to suit your needs.
- VM Name \ Number: Choose the name for your first VM and give it a number in the separated text box. It will the cloning from that number and then incrementally increase it. For example, if your hostname would be `Test01` and you chose to have 3 VMs, then next VMs to be clones will be named `Test02`, `Test03` and so on.
- Number of Clones: Once you type a number for the amount of clones you want, notice the label that says `Storage Left After Clone` changes to the amount of storage that will be left in the chosen datastore (in GBs). So basically it's there to prevent you from creating to many VMs by accident. **Don't crash your LUNs by not paying attention, it's only there for convenience, it doesn't actually prevent you from clicking "Clone" and overcommitting the amount of storage you have**. The function behind this calculates the disk size on the chosen template and subtracts the total amount of clones storage from the total free storage on the datastore.
- CPU: choose the amount of CPUs you want each VM to have.
- RAM: Choose the amount of RAM you want each VM to have.
- VLAN: Choose which VLAN you want your VM to be in.
- Folder: Type a folder name, then click "Find Folder" to search for it.
- Notes: You can add notes if you please.
- Start VM after creation: You can choose wether you want to start the VMs upon creation. Generally recommended.

![after filling out info](https://i.imgur.com/rM2PPgY.png)
