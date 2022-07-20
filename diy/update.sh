# get conf yaml

#backup
curl -sS https://raw.githubusercontent.com/wy580477/Mosdns-on-PaaS/main/content/config.yaml > /tmp/config-backup.yaml

cp -rf /tmp/*.yaml diy/
rm -rf /tmp/*

#rules && Geosite GeoIP && cndbIP data
curl -sS https://raw.githubusercontent.com/hezhijie0327/CNIPDb/main/cnipdb/country_ipv4_6.dat > /tmp/GeoIP_CNIPDb.dat
curl -sS https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/geosite.dat > /tmp/geosite.dat
curl -sS https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/geoip.dat > /tmp/geoip.dat

cp -rf /tmp/*.dat diy/data/
rm -rf /tmp/*
