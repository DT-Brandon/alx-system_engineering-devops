# Fixing the number of failed requests to 0
exec { 'nginx ulimit increase':
  command => '/bin/sed --in-place "s@ULIMIT=\"-n 15\"@ULIMIT=\"-n 4096\"@" /etc/default/nginx && /etc/init.d/nginx restart',
}
