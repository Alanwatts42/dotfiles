
problem:
Aug 11 03:33:08 evan-acer-es1533 blkmapd[369]: open pipe file /run/rpc_pipefs/nfs/blocklayout failed: No such file or directory

solution:
sudo mkdir -m 755 /var/lib/nfs/rpc_pipefs/nfs
sudo chown statd:nogroup /var/lib/nfs/rpc_pipefs/nfs
sudo service nfs-common restart
sudo service nfs-common status


Aug 11 08:48:30 evan-acer-es1533 pulseaudio[3675]: [pulseaudio] server-lookup.c: 
Unable to contact D-Bus: org.freedesktop.DBus.Error.NotSupported: 
Unable to autolaunch a dbus-daemon without a $DISPLAY for X11

Aug 11 08:48:30 
evan-acer-es1533 
pulseaudio[3675]: 
    [pulseaudio] main.c: 
        Unable to contact D-Bus: 
            org.freedesktop.DBus.Error.NotSupported: 
                Unable to autolaunch a dbus-daemon without a $DISPLAY for X11

                
