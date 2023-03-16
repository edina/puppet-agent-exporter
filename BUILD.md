# Building

Don't forget to update `fpm-build.sh` first to bump the RPM versions.

```bash
docker run -it --platform=linux/amd64 -v $PWD:/app golang bash -c "cd ../app; go build"
mv puppet-agent-exporter build/usr/local/bin
./fpm-build.sh
```
