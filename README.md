# setproctitle-preload
Hacky LD_PRELOAD library that allows setting the process title via putenv()

Compile with 

    make

And run like

    LD_PRELOAD=$PWD/preload_setproctitle.so python -c "import os,signal; os.putenv('SETPROCTITLE','this is a test'); signal.pause()" &
    ps -elf | grep 'this is a test'

