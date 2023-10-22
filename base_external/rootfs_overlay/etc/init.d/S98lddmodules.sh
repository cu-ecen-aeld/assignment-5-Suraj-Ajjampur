#Author: Suraj Ajjampur
#!/bin/sh

case "$1" in
  start)
        # Commands to load modules
        echo "Starting scull and loading modules"
        scull_load
        module_load faulty
        modprobe hello
        ;;
  stop)
        # Commands to unload modules
        echo "Stoping scull and unloading modules"
        scull_unload
        module_unload faulty
        rmmod hello
        ;;
  *)
        echo "Usage: $0 {start|stop}"
        exit 1
esac

exit 0
