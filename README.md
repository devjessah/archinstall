# archinstall
My Personal Unattended "Arch Linux" Installer Script.

My Hardware: Intel/Amd/SSD combo.

**Reminder:** If we have different hardware, please configure the script accordingly.

| Part | Script | Description | Attention | Status |
:-- | :--: | :--: | :--: | :--: |
#1 | **base.sh** & **base2.sh** | installs arch linux base system  | only prompts for user & pass | Working |
#2 | **sheetal.sh** | installs my choice of de, pkgs & dotfiles | completely unattended | Working |

 ---

# ⚙️ installation

 - **Pre-requisites:**
`Arch Linux ISO` & `Internet Connection`


**Part #1:** 
 - **Boot the ISO & run:**

    `pacman -Syy && yes | pacman -S git`

    `git clone https://github.com/SheetaI/archinstall && cd archinstall`
    
    `bash base.sh`
    
 - **Note:** You will need to input user & pass at the end of installation.
  
 - After the first reboot, you now have a basic arch linux system.
 
 - If you want to replicate my personal setup, proceed to part #2.
    
**Part #2:** Setup preview here: https://github.com/SheetaI/dotfiles

 - **Login and run:**
 
    `bash /sheetal.sh`
 
 - **Note:** It will tell you to reboot when its finished.   
 
 - **Done!**
 
# Important:
 The script is designed to autoloop download of packages if you encountered some errors. This will make sure everything is properly downloaded & installed.
 
