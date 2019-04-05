### Typical installation steps for manual flow based on Ubuntu 18.04

1. update the package cache
2. install openjdk (for example version 8)
3. download solr ( for example 7.6)
4. extract solr installation script from downloaded archive. use following command:
 `tar xzf solr-7.6.0.tgz solr-7.6.0/bin/install_solr_service.sh --strip-components=2`
5. setup solr. use following command:  
`sudo bash ./install_solr_service.sh solr-7.6.0.tgz`

The script automatically creates user and all required directories.
It creates unit file for solr service and checks systemd.
Startup configuration file `/etc/default/solr.in.sh`
Startup script `/etc/init.d/solr`
Home directory `/opt/solr`

`/opt/solr` - is symlink to current default solr version.

Data directory `/var/solr`

#### Settings:
 - Set memory settings into `/etc/default/solr.in.sh`  following line `SOLR_JAVA_MEM="-Xms768m -Xmx768m"`