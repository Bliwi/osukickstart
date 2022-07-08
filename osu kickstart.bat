@echo off
set "USER=%USERNAME%"
set dialog-line01= 
set dialog-line02= 
set dialog-line03= 
set dialog-line04= 
set dialog-line05= 
set dialog-line06= 
set dialog-line08= 
set dialog-line09= 
set dialog-line10= 
set dialog-line11= 
set dialog-line12= 
set dialog-line13= 
set dialog-line14= 
set dialog-line15= 
set dialog-line16= 
set dialog-line17= 
set dialog-line18= 
set dialog-line19= 
set dialog-line20= 
set dialog-line21= 
set dialog-line22= 
set dialog-line23= 
set dialog-line24= 
set dialog-line25= 
set extra-logo1=@@
set extra-logo2=@@@@@@
set extra-logo3=@@

set failed01= 
set failed02= 
set failed03= 
set failed04= 
set failed05= 
set failed06= 
set failed07= 
set failed08= 
set failed09= 
set failed10= 
set failed11= 
set failed12= 
set failed13= 
set failed14= 
set failed15= 
set failed16= 
set failed17= 
set failed18= 
set failed19= 
set failed20= 
set failed21= 
set failed22= 
set failed23= 
set failed24= 
set failed25= 
if not exist "osu!.exe" (
goto:failed-no-osu
)
goto:setup
:dialog
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%dialog-line01%
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%extra-logo1%@@@@@@@%dialog-line02%
echo @@@@@@@@@@@@@@@@@@@@@                  @@@@@@@@@@%extra-logo2%@@@@@%dialog-line03%
echo @@@@@@@@@@@@@@@@      @@@@@@@@@@@@@@@@@      @@@@@@%extra-logo3%@@@@@@@%dialog-line04%
echo @@@@@@@@@@@@@    @@@@@@@@@@@@@@@@@@@@@@@@@@@    @@@@@@@@@@@@%dialog-line05%
echo @@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@%dialog-line06%
echo @@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@%dialog-line08%
echo @@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@%dialog-line09%
echo @@@@@@  .@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@%dialog-line10%
echo @@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@   @@@@%dialog-line11%
echo @@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@  @@@@%dialog-line12%
echo @@@@  .@@@@@@   ,,   @@@/   ___ @@   @@@   @@@   @@@@@   @@@%dialog-line13%
echo @@@@  @@@@@@*  @@@@   @@@     /@@@   @@@   @@@   @@@@@,  @@@%dialog-line14%
echo @@@@  .@@@@@@   @@@   @@@@@@@   @@   @@@   @@@@@@@@@@@   @@@%dialog-line15%
echo @@@@   @@@@@@@      @@@@       @@@@        @@@   @@@@@  @@@@%dialog-line16%
echo @@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@%dialog-line17%
echo @@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@%dialog-line18%
echo @@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@%dialog-line19%
echo @@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@%dialog-line20%
echo @@@@@@@@@@@   @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@   @@@@@@@@@@%dialog-line21%
echo @@@@@@@@@@@@@    @@@@@@@@@@@@@@@@@@@@@@@@@@    .@@@@@@@@@@@@%dialog-line22%
echo @@@@@@@@@@@@@@@@@      @@@@@@@@@@@@@@@      @@@@@@@@@@@@@@@@%dialog-line23%
echo @@@@@@@@@@@@@@@@@@@@@@                .@@@@@@@@@@@@@@@@@@@@@%dialog-line24%
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%dialog-line25%
echo @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%dialog-line07%
%dialog%

:setup
set dialog-line02=                       Welcome!
set dialog-line04=  This is a script to help you get started with osu!.
set dialog-line05=      It will download a pre-made config file, 
set dialog-line06=            and an optimal skin for you.
set dialog-line12=             [Y] To run the basic setup.
set dialog-line14=              [N] To cancel the setup.
set dialog-line16=             [E] to skip to the extras.
set dialog-line21=        [Press enter after choosing an option].
set dialog-line23=                Osu! Kickstart script.
set dialog-line24=                  Created by Bliwi.
set dialog= goto:setup-dialog
cls
goto:dialog
:setup-dialog
set /P c=
if /I "%c%" EQU "Y" goto:basic-setup
if /I "%c%" EQU "N" goto:exit-setup
if /I "%c%" EQU "E" goto:extras-gosum
:basic-setup
cls
:: rename "osu!.%USER%.cfg" "osu!.%USER%-config-bkp.cfg"
:: curl *WIP* -o "osu!.%USER%.cfg"
:: curl *WIP* -o skins\skin.osk

echo Installation complete
echo I still need to figure this out.
goto:finished



:finished
cls
set dialog-line02=                   Installation Complete.
set dialog-line04=   You can now close this window and enjoy your game,
set dialog-line05=                    or install extras.
set dialog-line06=
set dialog-line12=                [Y/E] To go to the extras.
set dialog-line14=                 [N] To close this window.
set dialog-line16= 
set dialog-line19= [S] Please consider subscribing to my channel on youtube!
set dialog= goto:finished-dialog
goto:dialog

:finished-dialog
set /P c=
if /I "%c%" EQU "Y" goto:extras-gosum
if /I "%c%" EQU "N" goto:eof
if /I "%c%" EQU "E" goto:extras-gosum
if /I "%c%" EQU "S" goto:channel-sub

:channel-sub
start https://www.youtube.com/channel/UCYdxhyGJgwJOTLBPmuzJxrQ
goto:finished
:extras-gosum
cls
set extra-logo1=  
set extra-logo2=      
set extra-logo3=  
set dialog-line02=                          Extras.
set dialog-line04=           Would you like to install gosumemory?
set dialog-line05=      Gosumemory is an overlay with statistics for osu.
set dialog-line06= 
set dialog-line12=                         [Y] Yes.
set dialog-line14=                  [N] No [Skips to next].
set dialog-line16=         [T] Tutorial on Youtube [Opens on browser].
set dialog-line19= 
set dialog= goto:extras-gosum-dialog
goto:dialog
:extras-gosum-dialog
set /P c=
if /I "%c%" EQU "Y" goto:extras-install-gosum
if /I "%c%" EQU "N" goto:extras-opentablet
if /I "%c%" EQU "T" goto:gosum-tutorial

:gosum-tutorial

start https://youtu.be/8t_LBQG0xdI
goto:extras-gosum

:extras-install-gosum
mkdir gosumemory
wget https://github.com/l3lackShark/gosumemory/releases/latest/download/gosumemory_windows_386.zip -O "gosumemory\gosumemory.zip"
goto:extras-opentablet
:extras-opentablet
cls
set dialog-line04=       Would you like to install Open tablet Driver?
set dialog-line05=         Open tablet driver is a Open source driver
set dialog-line06=       which is compatible with most drawing tablets.
set dialog-line12=                         [Y] Yes.
set dialog-line14=                  [N] No[Skips to next].
set dialog-line16=                 Tutorial not available yet.
set dialog-line21=          [Press enter after choosing an option].
set dialog-line23=                   Osu! Kickstart script.
set dialog-line24=                      Created by Bliwi.
set dialog= goto:extras-opentablet-dialog
goto:dialog
:extras-opentablet-dialog
set /P c=
if /I "%c%" EQU "Y" goto:extras-install-opentablet
if /I "%c%" EQU "N" goto:extra-maps

:extras-install-opentablet
mkdir OpenTabletDriver
wget https://github.com/OpenTabletDriver/OpenTabletDriver/releases/latest/download/OpenTabletDriver.win-x64.zip -O "OpenTabletDriver\Opentabletdriver.zip"
goto:extra-maps
:extra-maps
cls
set dialog-line04=           Would you like to install extra maps?
set dialog-line05=  Small pack of CS0 and some begginer jump training maps.
set dialog-line06= 
set dialog-line12=                         [Y] Yes.
set dialog-line14=                  [N] No[Finishes setup].
set dialog-line16= 
set dialog= goto:extra-maps-dialog
goto:dialog

:extra-maps-dialog
set /P c=
if /I "%c%" EQU "Y" goto:extras-install-maps
if /I "%c%" EQU "N" goto:finished

:extras-install-maps
cls
wget "https://download1508.mediafire.com/ncx47h7w6ndg/rn05cjj0uockyss/1441793+Various+Artists+-+CS-0+Jump+Training+2.osz" -O "Songs\1441793 Various Artists - CS-0 Jump Training 2.osz"
wget "https://download1079.mediafire.com/bsp9x4rpbtug/z2zlk0wknlk7zqg/1328892+Various+Artists+-+CS-0+Jump+Training+3.osz" -O "Songs\1328892 Various Artists - CS-0 Jump Training 3.osz"
wget "https://download1514.mediafire.com/33e3f4ggjzcg/r20b65mt3ympd7c/1019966+Various+Artists+-+Mizu%5C%27s+Jump+Training+%232.osz" -O "Songs\1019966 Various Artists - Mizu's Jump Training #2.osz"
wget "https://download1487.mediafire.com/pyzjxsvp6cfg/gido2u2o036mgvf/825086+Various+Artist+-+Jump+Training+%231.osz" -O "Songs\825086 Various Artist - Jump Training #1.osz"
wget "https://download1327.mediafire.com/0komh3s7z2lg/cm154a4fc5c3xx7/1520899+Various+Artists+-+CS-0+Jump+Training+6.osz" -O "Songs\1520899 Various Artists - CS-0 Jump Training 6.osz"
goto:finished
:failed
echo @@@@@@@@@@@@@\@@@@@@\@@@@@@@@@@@@@@@@@/@@@@@@@/@@@@@@@@@@@@@%failed01%
echo @@@@@@@@@@@@@@\@@@@@@\@@@@@@@@@@@@@@@/@@@@@@@/@@@@@@@@@@@@@@%failed02%
echo @@@@@@@@@@@@@@@\@@@@@ \             /  @@@@@/@@@@@@@@@@@@@@@%failed03%
echo @@@@@@@@@@@@@@@@\     @\@@@@@@@@@@@/@@@    / @@@@@@@@@@@@@@@%failed04%
echo @@@@@@@@@@@@@    \@@@@@@\@@@@@@@@@/@@@@@@@/@    @@@@@@@@@@@@%failed05%
echo @@@@@@@@@@@   @@@@\@@@@@@\@@@@@@@/@@@@@@@/@@@@@   @@@@@@@@@@%failed06%
echo @@@@@@@@@   @@@@@@@\@@@@@@\@@@@@/@@@@@@@/@@@@@@@@   @@@@@@@@%failed07%
echo @@@@@@@   @@@@@@@@@@\@@@@@@\@@@/@@@@@@@/@@@@@@@@@@@   @@@@@@%failed08%
echo @@@@@@  .@@@@@@@@@@@@\@@@@@@\@/@@@@@@@/@@@@@@@@@@@@@   @@@@@%failed09%
echo @@@@@   @@@@@@@@@@@@@@\@@@@@@\@@@@@@@/@@@@@@@@   @@@@   @@@@%failed10%
echo @@@@(  @@@@@@@@@@@@@@@@\@@@@/@\@@@@@/@@@@@@@@@   @@@@@  @@@@%failed11%
echo @@@@  .@@@@@@   ,,   @@@\  /___\@@ / @@@   @@@   @@@@@   @@@%failed12%
echo @@@@  @@@@@@*  @@@@   @@@\/   /@\@/  @@@   @@@   @@@@@,  @@@%failed13%
echo @@@@  .@@@@@@   @@@   @@@/\@@   @\   @@@   @@@@@@@@@@@   @@@%failed14%
echo @@@@   @@@@@@@      @@@@/  \   @/@\        @@@   @@@@@  @@@@%failed15%
echo @@@@@   @@@@@@@@@@@@@@@/@@@@\@@/@@@\@@@@@@@@@@@@@@@@@   @@@@%failed16%
echo @@@@@@   @@@@@@@@@@@@@/@@@@@@\/@@@@@\@@@@@@@@@@@@@@@   @@@@@%failed17%
echo @@@@@@@   @@@@@@@@@@@/@@@@@@@/\@@@@@@\@@@@@@@@@@@@@   @@@@@@%failed18%
echo @@@@@@@@@   @@@@@@@@/@@@@@@@/@@\@@@@@@\@@@@@@@@@@   @@@@@@@@%failed19%
echo @@@@@@@@@@@   @@@@@/@@@@@@@/@@@@\@@@@@@\@@@@@@@   @@@@@@@@@@%failed20%
echo @@@@@@@@@@@@@    @/@@@@@@@/@@@@@@\@@@@@@\@@    .@@@@@@@@@@@@%failed21%
echo @@@@@@@@@@@@@@@@@/     @@/@@@@@@@@\@@@   \  @@@@@@@@@@@@@@@@%failed22%
echo @@@@@@@@@@@@@@@@/@@@@@  /          \  .@@@\@@@@@@@@@@@@@@@@@%failed23%
echo @@@@@@@@@@@@@@@/@@@@@@@/@@@@@@@@@@@@\@@@@@@\@@@@@@@@@@@@@@@@%failed24%
echo @@@@@@@@@@@@@@/@@@@@@@/@@@@@@@@@@@@@@\@@@@@@\@@@@@@@@@@@@@@@%failed25%
%failed-dialog%

:failed-no-osu
cls
set failed02=         Osu! Kickstart Filed!
set failed04=        Could not find Osu!.exe.
set failed06=      Are you sure you have placed 
set failed07=     the script on your osu folder?
set failed23=          Osu! Kickstart script.
set failed24=           Created by Bliwi.
goto:failed



:exit-setup
cls
set failed02=        Osu! Kickstart installation canceld!
set failed04=       If you are in here because of an error,
set failed05=         please leave a comment on my video
set failed07=                so i can help you!
set failed09=      Otherwise, are you really sure you want
set failed10=                     to cancel?
set failed13=               [Y] Close this window.
set failed14=                     [N] Go back.
set failed23=               Osu! Kickstart script.
set failed24=                 Created by Bliwi.
set failed-dialog= goto:exit-dialog
goto:failed

:exit-dialog
set /P c=
if /I "%c%" EQU "Y" goto:eof 
if /I "%c%" EQU "N" goto:setup
