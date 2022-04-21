# archinstall
My personal automated arch linux installation script.

 - **Pre-requisites:**
`Arch Linux ISO` & `Internet Connection`

| Part | Script | Description | Attention |
:-- | :--: | :--: | :--: |
#1 | **base.sh** & **base2.sh** | installs the base system | prompts user & password creation at the end |
#2 | **sheetal.sh** | installs my choice of pkgs & dotfiles | prompts for AUR confirmations | |

 ---
# ⚙️ installation
**Part: #1**
 - **Boot the ISO & run:**

    `pacman -Syy`

    `pacman -S git`

    `git clone https://github.com/SheetaI/archinstall && cd archinstall`

    `bash base.sh`
    
  - **Reboot the system**  
    
**Part: #2**

 - **Login and run:**
 
   `curl -JLO https://raw.githubusercontent.com/SheetaI/archinstall/master/sheetal.sh && bash sheetal.sh`
    
 - **Done!**
 
 ---
 **Todo:**
- Fully unattended installation Part#2
