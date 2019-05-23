# How to use Docker?
Run `source shrc` under SPEC2006 root directory first!
Then execute
```
docker run -itd --name [container name] -e LOCAL_USER_ID=$(id -u) -e SPEC=$SPEC -v $SPEC:$SPEC zzrcxb/spec2006-compilation
```
Use `docker attach [container name]` to connect to your container.

This Docker container can preserve your filessytem permission.

# Attention!
Everyone uses their own container, do not share it! (for filesystem permission reason)
Feel free to edit files outside of the container but DO remember to compile everything inside the container. Thanks!
