#!/bin/bash

curl -L https://raw.githubusercontent.com/WilliamStar007/ClashX-V2Ray-TopFreeProxy/main/combine/clash.config.yaml -o WilliamStar007.yaml
curl -L https://raw.githubusercontent.com/peasoft/NoMoreWalls/master/snippets/nodes.yml -o peasoft.yaml
curl -L https://raw.githubusercontent.com/mahdibland/ShadowsocksAggregator/master/Eternity.yml -o mahdibland.yaml
curl -L https://raw.githubusercontent.com/anaer/Sub/main/clash.yaml -o anaer.yaml
curl -L https://raw.githubusercontent.com/Airuop/cross/master/Eternity.yml -o Airuop.yaml
curl -L https://raw.githubusercontent.com/tbbatbb/Proxy/master/dist/clash.config.yaml -o tbbatbb.yaml
curl -L https://raw.githubusercontent.com/DheMasker/1/master/Eternity.yml -o grpc.yaml
curl -L https://raw.githubusercontent.com/DheMasker/2/master/Eternity.yml -o trojan.yaml
curl -L https://raw.githubusercontent.com/DheMasker/4/master/Eternity.yml -o ws.yaml
curl -L https://raw.githubusercontent.com/DheMasker/5/master/Eternity.yml -o vmess.yaml

BUGCDN="104.18.1.196"

####################
####################
####################

sed '/^proxy\-groups/,$d' WilliamStar007.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > WilliamStar007allvmess
grep -l type\:\ trojan xx* > WilliamStar007alltrojan
echo "proxies:" > WilliamStar007vpnTrojanCdn.yaml
echo "proxies:" > WilliamStar007vpnVmessCdn.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q server "./$line";then
		sed -i "/server/c\  server: $BUGCDN" ./$line
	else
		echo "  server: $BUGCDN" >> ./$line
	fi
	cat ./$line >> WilliamStar007vpnTrojanCdn.yaml
done < ./WilliamStar007alltrojan



while IFS= read -r line
do
	if grep -q "server\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/server\:/c\  server: $BUGCDN" ./$line
		cat ./$line >> WilliamStar007vpnVmessCdn.yaml
	fi
done < ./WilliamStar007allvmess

####################
####################
####################

sed '/^proxy\-groups/,$d' peasoft.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > peasoftallvmess
grep -l type\:\ trojan xx* > peasoftalltrojan
echo "proxies:" > peasoftvpnTrojanCdn.yaml
echo "proxies:" > peasoftvpnVmessCdn.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q server "./$line";then
		sed -i "/server/c\  server: $BUGCDN" ./$line
	else
		echo "  server: $BUGCDN" >> ./$line
	fi
	cat ./$line >> peasoftvpnTrojanCdn.yaml
done < ./peasoftalltrojan



while IFS= read -r line
do
	if grep -q "server\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/server\:/c\  server: $BUGCDN" ./$line
		cat ./$line >> peasoftvpnVmessCdn.yaml
	fi
done < ./peasoftallvmess

####################
####################
####################

sed '/^proxy\-groups/,$d' mahdibland.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > mahdiblandallvmess
grep -l type\:\ trojan xx* > mahdiblandalltrojan
echo "proxies:" > mahdiblandvpnTrojanCdn.yaml
echo "proxies:" > mahdiblandvpnVmessCdn.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q server "./$line";then
		sed -i "/server/c\  server: $BUGCDN" ./$line
	else
		echo "  server: $BUGCDN" >> ./$line
	fi
	cat ./$line >> mahdiblandvpnTrojanCdn.yaml
done < ./mahdiblandalltrojan



while IFS= read -r line
do
	if grep -q "server\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/server\:/c\  server: $BUGCDN" ./$line
		cat ./$line >> mahdiblandvpnVmessCdn.yaml
	fi
done < ./mahdiblandallvmess

####################
####################
####################

sed '/^proxy\-groups/,$d' anaer.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > anaerallvmess
grep -l type\:\ trojan xx* > anaeralltrojan
echo "proxies:" > anaervpnTrojanCdn.yaml
echo "proxies:" > anaervpnVmessCdn.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q server "./$line";then
		sed -i "/server/c\  server: $BUGCDN" ./$line
	else
		echo "  server: $BUGCDN" >> ./$line
	fi
	cat ./$line >> anaervpnTrojanCdn.yaml
done < ./anaeralltrojan



while IFS= read -r line
do
	if grep -q "server\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/server\:/c\  server: $BUGCDN" ./$line
		cat ./$line >> anaervpnVmessCdn.yaml
	fi
done < ./anaerallvmess

####################
####################
####################

sed '/^proxy\-groups/,$d' Airuop.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > Airuopallvmess
grep -l type\:\ trojan xx* > Airuopalltrojan
echo "proxies:" > AiruopvpnTrojanCdn.yaml
echo "proxies:" > AiruopvpnVmessCdn.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q server "./$line";then
		sed -i "/server/c\  server: $BUGCDN" ./$line
	else
		echo "  server: $BUGCDN" >> ./$line
	fi
	cat ./$line >> AiruopvpnTrojanCdn.yaml
done < ./Airuopalltrojan



while IFS= read -r line
do
	if grep -q "server\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/server\:/c\  server: $BUGCDN" ./$line
		cat ./$line >> AiruopvpnVmessCdn.yaml
	fi
done < ./Airuopallvmess

####################
####################
####################

sed '/^proxy\-groups/,$d' tbbatbb.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > tbbatbballvmess
grep -l type\:\ trojan xx* > tbbatbballtrojan
echo "proxies:" > tbbatbbvpnTrojanCdn.yaml
echo "proxies:" > tbbatbbvpnVmessCdn.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q server "./$line";then
		sed -i "/server/c\  server: $BUGCDN" ./$line
	else
		echo "  server: $BUGCDN" >> ./$line
	fi
	cat ./$line >> tbbatbbvpnTrojanCdn.yaml
done < ./tbbatbballtrojan



while IFS= read -r line
do
	if grep -q "server\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/server\:/c\  server: $BUGCDN" ./$line
		cat ./$line >> tbbatbbvpnVmessCdn.yaml
	fi
done < ./tbbatbballvmess

####################
####################
####################

sed '/^proxy\-groups/,$d' grpc.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > grpcallvmess
grep -l type\:\ trojan xx* > grpcalltrojan
echo "proxies:" > grpcvpnTrojanCdn.yaml
echo "proxies:" > grpcvpnVmessCdn.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q server "./$line";then
		sed -i "/server/c\  server: $BUGCDN" ./$line
	else
		echo "  server: $BUGCDN" >> ./$line
	fi
	cat ./$line >> grpcvpnTrojanCdn.yaml
done < ./grpcalltrojan



while IFS= read -r line
do
	if grep -q "server\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/server\:/c\  server: $BUGCDN" ./$line
		cat ./$line >> grpcvpnVmessCdn.yaml
	fi
done < ./grpcallvmess

####################
####################
####################

sed '/^proxy\-groups/,$d' trojan.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > trojanallvmess
grep -l type\:\ trojan xx* > trojanalltrojan
echo "proxies:" > trojanvpnTrojanCdn.yaml
echo "proxies:" > trojanvpnVmessCdn.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q server "./$line";then
		sed -i "/server/c\  server: $BUGCDN" ./$line
	else
		echo "  server: $BUGCDN" >> ./$line
	fi
	cat ./$line >> trojanvpnTrojanCdn.yaml
done < ./trojanalltrojan



while IFS= read -r line
do
	if grep -q "server\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/server\:/c\  server: $BUGCDN" ./$line
		cat ./$line >> trojanvpnVmessCdn.yaml
	fi
done < ./trojanallvmess

####################
####################
####################

sed '/^proxy\-groups/,$d' ws.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > wsallvmess
grep -l type\:\ trojan xx* > wsalltrojan
echo "proxies:" > wsvpnTrojanCdn.yaml
echo "proxies:" > wsvpnVmessCdn.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q server "./$line";then
		sed -i "/server/c\  server: $BUGCDN" ./$line
	else
		echo "  server: $BUGCDN" >> ./$line
	fi
	cat ./$line >> wsvpnTrojanCdn.yaml
done < ./wsalltrojan



while IFS= read -r line
do
	if grep -q "server\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/server\:/c\  server: $BUGCDN" ./$line
		cat ./$line >> wsvpnVmessCdn.yaml
	fi
done < ./wsallvmess

####################
####################
####################

sed '/^proxy\-groups/,$d' vmess.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > vmessallvmess
grep -l type\:\ trojan xx* > vmessalltrojan
echo "proxies:" > vmessvpnTrojanCdn.yaml
echo "proxies:" > vmessvpnVmessCdn.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q server "./$line";then
		sed -i "/server/c\  server: $BUGCDN" ./$line
	else
		echo "  server: $BUGCDN" >> ./$line
	fi
	cat ./$line >> vmessvpnTrojanCdn.yaml
done < ./vmessalltrojan



while IFS= read -r line
do
	if grep -q "server\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/server\:/c\  server: $BUGCDN" ./$line
		cat ./$line >> vmessvpnVmessCdn.yaml
	fi
done < ./vmessallvmess

####################
####################
####################

rm xx* cutted WilliamStar007alltrojan WilliamStar007allvmess WilliamStar007.yaml peasoftalltrojan peasoftallvmess peasoft.yaml mahdiblandalltrojan mahdiblandallvmess mahdibland.yaml anaeralltrojan anaerallvmess anaer.yaml Airuopalltrojan Airuopallvmess Airuop.yaml tbbatbballtrojan tbbatbballvmess tbbatbb.yaml grpcalltrojan grpcallvmess grpc.yaml trojanalltrojan trojanallvmess trojan.yaml wsalltrojan wsallvmess ws.yaml vmessalltrojan vmessallvmess vmess.yaml
