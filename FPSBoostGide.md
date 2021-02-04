so Where Going to open th Registry Editer By Hiting Windows Key AND R in the little box type Regedit There 
 
 Lets Get Started With Simple Tweaks !
so First Where Going to Disable Paging Executive
This Is How We Do it
1. Open the Registry Editor.
2. Navigate to the HKEY_LOCAL_MACHINE\SYSTEM\
3. CurrentControlSet\Control\Session Manager\Memory Management key.
4. Right-click the DisablePagingExecutive item and select Modify.
5. In the Edit DWORD dialog box, change the value to 1.
6. Click OK.
Next Where going to Enable L2 Cache

Lets GOO!


1. navigate to home by leaving each folder to you get to What you saw when you first Opened Regedit
2. Navigate to the HKEY_LOCAL_MACHINE\SYSTEM\
3. CurrentControlSet\Control\Session Manager\Memory Management key.
4. Right-click the SecondLevelDataCache item and select Modify.
5. Play around with it till it matches your cache number, mine is set to 400 (1024)
6. Click OK.

Now Thats Done Where going to speed Up hard Drive Proformance To DO This We have To Enable Large Cache
This How we DO it 
SAME o SAME o
Navigate to the HKEY_LOCAL_MACHINE\SYSTEM\
1. CurrentControlSet\Control\Session Manager\Memory Management key.
2. Right-click the LargeSystemCache item and select Modify.
3. In the Edit DWORD dialog box, change the value to 1.
4. Click OK.
