!macro CustomCodePostInstall

    RMDir /r "$INSTDIR\App\TorBrowser"
    Rename "$INSTDIR\App\Browser" "$INSTDIR\App\TorBrowser"

    CreateDirectory "$INSTDIR\App\DefaultData"
    RMDir /r "$INSTDIR\App\DefaultData\profile"
    Rename "$INSTDIR\App\TorBrowser\TorBrowser\Data\Browser\profile.default" "$INSTDIR\App\DefaultData\profile"

    WriteINIStr "$INSTDIR\App\TorBrowser\TorBrowser\Data\Browser\profiles.ini" Profile0 Name profile
    WriteINIStr "$INSTDIR\App\TorBrowser\TorBrowser\Data\Browser\profiles.ini" Profile0 Path ../../../../../Data/profile

!macroend
