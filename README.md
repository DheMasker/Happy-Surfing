## **No Illegal Use !**

Custom Clash Rules

```
rules:
- GEOSITE,oisd-full,oisd-full
- GEOSITE,oisd-small,oisd-small
- GEOSITE,oisd-nsfw,oisd-nsfw
- GEOSITE,d3ward,d3ward
- GEOSITE,antiscam,antiscam
- GEOSITE,rule-ads,rule-ads
- GEOSITE,rule-doh,rule-doh
- GEOSITE,rule-gaming,rule-gaming
- GEOSITE,rule-indo,rule-indo
- GEOSITE,rule-playstore,rule-playstore
- GEOSITE,rule-sosmed,rule-sosmed
- GEOSITE,rule-streaming,rule-streaming
- GEOSITE,rule-umum,rule-umum
- GEOSITE,rule-ipcheck,rule-ipcheck
- GEOSITE,rule-speedtest,rule-speedtest
- GEOSITE,videoconference,videoconference
- GEOSITE,rule-malicious,rule-malicious
- GEOSITE,urltest,urltest
```

wget -O /etc/openclash/GeoIP.dat https://raw.githubusercontent.com/malikshi/v2ray-rules-dat/release/geoip.dat
chmod 744 /etc/openclash/GeoIP.dat

wget -O /etc/openclash/GeoSite.dat https://raw.githubusercontent.com/malikshi/v2ray-rules-dat/release/geosite.dat
chmod 744 /etc/openclash/GeoSite.dat

[![Update Proxies](https://github.com/DheMasker/Happy-Surfing/actions/workflows/crawl.yml/badge.svg)](https://github.com/DheMasker/Happy-Surfing/actions/workflows/crawl.yml)
