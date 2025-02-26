Open file `/usr/share/plasma/look-and-feel/org.kde.breeze.desktop/contents/lockscreen/LockScreenUi.qml` and change this section:

    Timer {
        id: graceLockTimer
        interval: 3000
        onTriggered: {
            root.clearPassword();
            authenticator.tryUnlock();
        }
    }


OR for KDE6: `/usr/share/plasma/shells/org.kde.plasma.desktop/contents/lockscreen/LockScreenUi.qml`
