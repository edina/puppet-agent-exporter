docker run -ti --platform=linux/amd64 -v $PWD:/src cdrx/fpm-centos:7 fpm \
  -v 1.0.1 \
  --iteration 1.el7 \
  --epoch 1 \
  --vendor EDINA \
  -n puppet-agent-exporter \
  -s dir \
  -t rpm \
  -a x86_64 \
  -C build \
  --after-install after-install.sh \
  .
