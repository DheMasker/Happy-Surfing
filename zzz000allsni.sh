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

BUGSNI="trouter2-azsc-uswe-3-a.trouter.teams.microsoft.com"

####################
####################
####################

sed '/^proxy\-groups/,$d' WilliamStar007.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > WilliamStar007allvmess
grep -l type\:\ trojan xx* > WilliamStar007alltrojan
echo "proxies:" > WilliamStar007vpnTrojanSni.yaml
echo "proxies:" > WilliamStar007vpnVmessSni.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q sni "./$line";then
		sed -i "/sni/c\  sni: $BUGSNI" ./$line
	else
		echo "  sni: $BUGSNI" >> ./$line
	fi
	cat ./$line >> WilliamStar007vpnTrojanSni.yaml
done < ./WilliamStar007alltrojan



while IFS= read -r line
do
	if grep -q "servername\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/servername\:/c\  servername: $BUGSNI" ./$line
		cat ./$line >> WilliamStar007vpnVmessSni.yaml
	fi
done < ./WilliamStar007allvmess

####################
####################
####################

sed '/^proxy\-groups/,$d' peasoft.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > peasoftallvmess
grep -l type\:\ trojan xx* > peasoftalltrojan
echo "proxies:" > peasoftvpnTrojanSni.yaml
echo "proxies:" > peasoftvpnVmessSni.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q sni "./$line";then
		sed -i "/sni/c\  sni: $BUGSNI" ./$line
	else
		echo "  sni: $BUGSNI" >> ./$line
	fi
	cat ./$line >> peasoftvpnTrojanSni.yaml
done < ./peasoftalltrojan



while IFS= read -r line
do
	if grep -q "servername\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/servername\:/c\  servername: $BUGSNI" ./$line
		cat ./$line >> peasoftvpnVmessSni.yaml
	fi
done < ./peasoftallvmess

####################
####################
####################

sed '/^proxy\-groups/,$d' mahdibland.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > mahdiblandallvmess
grep -l type\:\ trojan xx* > mahdiblandalltrojan
echo "proxies:" > mahdiblandvpnTrojanSni.yaml
echo "proxies:" > mahdiblandvpnVmessSni.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q sni "./$line";then
		sed -i "/sni/c\  sni: $BUGSNI" ./$line
	else
		echo "  sni: $BUGSNI" >> ./$line
	fi
	cat ./$line >> mahdiblandvpnTrojanSni.yaml
done < ./mahdiblandalltrojan



while IFS= read -r line
do
	if grep -q "servername\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/servername\:/c\  servername: $BUGSNI" ./$line
		cat ./$line >> mahdiblandvpnVmessSni.yaml
	fi
done < ./mahdiblandallvmess

####################
####################
####################

sed '/^proxy\-groups/,$d' anaer.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > anaerallvmess
grep -l type\:\ trojan xx* > anaeralltrojan
echo "proxies:" > anaervpnTrojanSni.yaml
echo "proxies:" > anaervpnVmessSni.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q sni "./$line";then
		sed -i "/sni/c\  sni: $BUGSNI" ./$line
	else
		echo "  sni: $BUGSNI" >> ./$line
	fi
	cat ./$line >> anaervpnTrojanSni.yaml
done < ./anaeralltrojan



while IFS= read -r line
do
	if grep -q "servername\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/servername\:/c\  servername: $BUGSNI" ./$line
		cat ./$line >> anaervpnVmessSni.yaml
	fi
done < ./anaerallvmess

####################
####################
####################

sed '/^proxy\-groups/,$d' Airuop.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > Airuopallvmess
grep -l type\:\ trojan xx* > Airuopalltrojan
echo "proxies:" > AiruopvpnTrojanSni.yaml
echo "proxies:" > AiruopvpnVmessSni.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q sni "./$line";then
		sed -i "/sni/c\  sni: $BUGSNI" ./$line
	else
		echo "  sni: $BUGSNI" >> ./$line
	fi
	cat ./$line >> AiruopvpnTrojanSni.yaml
done < ./Airuopalltrojan



while IFS= read -r line
do
	if grep -q "servername\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/servername\:/c\  servername: $BUGSNI" ./$line
		cat ./$line >> AiruopvpnVmessSni.yaml
	fi
done < ./Airuopallvmess

####################
####################
####################

sed '/^proxy\-groups/,$d' tbbatbb.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > tbbatbballvmess
grep -l type\:\ trojan xx* > tbbatbballtrojan
echo "proxies:" > tbbatbbvpnTrojanSni.yaml
echo "proxies:" > tbbatbbvpnVmessSni.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q sni "./$line";then
		sed -i "/sni/c\  sni: $BUGSNI" ./$line
	else
		echo "  sni: $BUGSNI" >> ./$line
	fi
	cat ./$line >> tbbatbbvpnTrojanSni.yaml
done < ./tbbatbballtrojan



while IFS= read -r line
do
	if grep -q "servername\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/servername\:/c\  servername: $BUGSNI" ./$line
		cat ./$line >> tbbatbbvpnVmessSni.yaml
	fi
done < ./tbbatbballvmess

####################
####################
####################

sed '/^proxy\-groups/,$d' grpc.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > grpcallvmess
grep -l type\:\ trojan xx* > grpcalltrojan
echo "proxies:" > grpcvpnTrojanSni.yaml
echo "proxies:" > grpcvpnVmessSni.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q sni "./$line";then
		sed -i "/sni/c\  sni: $BUGSNI" ./$line
	else
		echo "  sni: $BUGSNI" >> ./$line
	fi
	cat ./$line >> grpcvpnTrojanSni.yaml
done < ./grpcalltrojan



while IFS= read -r line
do
	if grep -q "servername\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/servername\:/c\  servername: $BUGSNI" ./$line
		cat ./$line >> grpcvpnVmessSni.yaml
	fi
done < ./grpcallvmess

####################
####################
####################

sed '/^proxy\-groups/,$d' trojan.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > trojanallvmess
grep -l type\:\ trojan xx* > trojanalltrojan
echo "proxies:" > trojanvpnTrojanSni.yaml
echo "proxies:" > trojanvpnVmessSni.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q sni "./$line";then
		sed -i "/sni/c\  sni: $BUGSNI" ./$line
	else
		echo "  sni: $BUGSNI" >> ./$line
	fi
	cat ./$line >> trojanvpnTrojanSni.yaml
done < ./trojanalltrojan



while IFS= read -r line
do
	if grep -q "servername\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/servername\:/c\  servername: $BUGSNI" ./$line
		cat ./$line >> trojanvpnVmessSni.yaml
	fi
done < ./trojanallvmess

####################
####################
####################

sed '/^proxy\-groups/,$d' ws.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > wsallvmess
grep -l type\:\ trojan xx* > wsalltrojan
echo "proxies:" > wsvpnTrojanSni.yaml
echo "proxies:" > wsvpnVmessSni.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q sni "./$line";then
		sed -i "/sni/c\  sni: $BUGSNI" ./$line
	else
		echo "  sni: $BUGSNI" >> ./$line
	fi
	cat ./$line >> wsvpnTrojanSni.yaml
done < ./wsalltrojan



while IFS= read -r line
do
	if grep -q "servername\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/servername\:/c\  servername: $BUGSNI" ./$line
		cat ./$line >> wsvpnVmessSni.yaml
	fi
done < ./wsallvmess

####################
####################
####################

sed '/^proxy\-groups/,$d' vmess.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l type\:\ vmess xx* > vmessallvmess
grep -l type\:\ trojan xx* > vmessalltrojan
echo "proxies:" > vmessvpnTrojanSni.yaml
echo "proxies:" > vmessvpnVmessSni.yaml



while IFS= read -r line
do
#	sed -i "/name/c\- name: $line" ./$line
	if grep -q sni "./$line";then
		sed -i "/sni/c\  sni: $BUGSNI" ./$line
	else
		echo "  sni: $BUGSNI" >> ./$line
	fi
	cat ./$line >> vmessvpnTrojanSni.yaml
done < ./vmessalltrojan



while IFS= read -r line
do
	if grep -q "servername\:.*[A-z]$" "./$line";then
		echo "hehe"
		sed -i "/servername\:/c\  servername: $BUGSNI" ./$line
		cat ./$line >> vmessvpnVmessSni.yaml
	fi
done < ./vmessallvmess

####################
####################
####################

rm xx* cutted WilliamStar007alltrojan WilliamStar007allvmess WilliamStar007.yaml peasoftalltrojan peasoftallvmess peasoft.yaml mahdiblandalltrojan mahdiblandallvmess mahdibland.yaml anaeralltrojan anaerallvmess anaer.yaml Airuopalltrojan Airuopallvmess Airuop.yaml tbbatbballtrojan tbbatbballvmess tbbatbb.yaml grpcalltrojan grpcallvmess grpc.yaml trojanalltrojan trojanallvmess trojan.yaml wsalltrojan wsallvmess ws.yaml vmessalltrojan vmessallvmess vmess.yaml
