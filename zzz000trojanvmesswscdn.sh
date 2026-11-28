#!/bin/bash



curl -L https://raw.githubusercontent.com/MrMohebi/xray-proxy-grabber-telegram/master/collected-proxies/clash-meta/all.yaml -o MrMohebitrojanvmesswscdn.yaml
curl -L https://raw.githubusercontent.com/chengaopan/AutoMergePublicNodes/master/list.yml -o chengaopantrojanvmesswscdn.yaml
curl -L https://raw.githubusercontent.com/WilliamStar007/ClashX-V2Ray-TopFreeProxy/main/combine/clash.config.yaml -o WilliamStar007trojanvmesswscdn.yaml
curl -L https://raw.githubusercontent.com/mahdibland/V2RayAggregator/master/Eternity.yml -o mahdiblandtrojanvmesswscdn.yaml
curl -L https://raw.githubusercontent.com/peasoft/NoMoreWalls/master/snippets/nodes.yml -o peasofttrojanvmesswscdn.yaml
curl -L https://raw.githubusercontent.com/anaer/Sub/main/clash.yaml -o anaertrojanvmesswscdn.yaml
curl -L https://raw.githubusercontent.com/Airuop/cross/master/Eternity.yml -o Airuoptrojanvmesswscdn.yaml
curl -L https://raw.githubusercontent.com/tbbatbb/Proxy/master/dist/clash.config.yaml -o tbbatbbtrojanvmesswscdn.yaml
curl -L https://raw.githubusercontent.com/busymilk/clash_config_auto_build/main/config/config.yaml -o busymilktrojanvmesswscdn.yaml
curl -L https://raw.githubusercontent.com/PuddinCat/BestClash/refs/heads/main/proxies.yaml -o PuddinCattrojanvmesswscdn.yaml



BUGCDN="104.18.1.196"



echo "proxies:" > 443trojanwscdn.yaml
process_cdn_file() {
    local cdn_file=$1
    sed '/^proxy\-groups/,$d' "$cdn_file" > cutted
    csplit -z cutted /^-/ '{*}'
    grep -l network\:\ ws xx* | while IFS= read -r line; do
        if grep -q "\network\:\ ws\b" "./$line" && grep -q "\port\:\ 443\b" "./$line" && grep -q "\type\:\ trojan\b" "./$line"; then
            echo "hehe"
            sed -i "/server\:/c\  server: $BUGCDN" "./$line"
            cat "./$line" >> 443trojanwscdn.yaml
        fi
    done
}
for cdn_file in *.yaml; do
    process_cdn_file "$cdn_file"
done



rm xx* cutted MrMohebitrojanvmesswscdn.yaml chengaopantrojanvmesswscdn.yaml WilliamStar007trojanvmesswscdn.yaml mahdiblandtrojanvmesswscdn.yaml peasofttrojanvmesswscdn.yaml anaertrojanvmesswscdn.yaml Airuoptrojanvmesswscdn.yaml tbbatbbtrojanvmesswscdn.yaml busymilktrojanvmesswscdn.yaml PuddinCattrojanvmesswscdn.yaml



#
