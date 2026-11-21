#!/bin/bash



curl -L https://raw.githubusercontent.com/MrMohebi/xray-proxy-grabber-telegram/master/collected-proxies/clash-meta/all.yaml -o MrMohebiservername.yaml
curl -L https://raw.githubusercontent.com/chengaopan/AutoMergePublicNodes/master/list.yml -o chengaopanservername.yaml
curl -L https://raw.githubusercontent.com/WilliamStar007/ClashX-V2Ray-TopFreeProxy/main/combine/clash.config.yaml -o WilliamStar007servername.yaml
curl -L https://raw.githubusercontent.com/mahdibland/V2RayAggregator/master/Eternity.yml -o mahdiblandservername.yaml
curl -L https://raw.githubusercontent.com/peasoft/NoMoreWalls/master/servernameppets/nodes.yml -o peasoftservername.yaml
curl -L https://raw.githubusercontent.com/anaer/Sub/main/clash.yaml -o anaerservername.yaml
curl -L https://raw.githubusercontent.com/Airuop/cross/master/Eternity.yml -o Airuopservername.yaml
curl -L https://raw.githubusercontent.com/tbbatbb/Proxy/master/dist/clash.config.yaml -o tbbatbbservername.yaml



BUGSERVERNAME="trouter2-azsc-uswe-3-a.trouter.teams.microsoft.com"



sed '/^proxy\-groups/,$d' MrMohebiservername.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > MrMohebi
echo "proxies:" > MrMohebiservername.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/servername\:/c\  servername: $BUGSERVERNAME" ./$line
		cat ./$line >> MrMohebiservername.yaml
	fi
done < ./MrMohebi

sed '/^proxy\-groups/,$d' chengaopanservername.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > chengaopan
echo "proxies:" > chengaopanservername.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/servername\:/c\  servername: $BUGSERVERNAME" ./$line
		cat ./$line >> chengaopanservername.yaml
	fi
done < ./chengaopan

sed '/^proxy\-groups/,$d' WilliamStar007servername.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > WilliamStar007
echo "proxies:" > WilliamStar007servername.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/servername\:/c\  servername: $BUGSERVERNAME" ./$line
		cat ./$line >> WilliamStar007servername.yaml
	fi
done < ./WilliamStar007

sed '/^proxy\-groups/,$d' mahdiblandservername.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > mahdibland
echo "proxies:" > mahdiblandservername.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/servername\:/c\  servername: $BUGSERVERNAME" ./$line
		cat ./$line >> mahdiblandservername.yaml
	fi
done < ./mahdibland

sed '/^proxy\-groups/,$d' peasoftservername.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > peasoft
echo "proxies:" > peasoftservername.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/servername\:/c\  servername: $BUGSERVERNAME" ./$line
		cat ./$line >> peasoftservername.yaml
	fi
done < ./peasoft

sed '/^proxy\-groups/,$d' anaerservername.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > anaer
echo "proxies:" > anaerservername.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/servername\:/c\  servername: $BUGSERVERNAME" ./$line
		cat ./$line >> anaerservername.yaml
	fi
done < ./anaer

sed '/^proxy\-groups/,$d' Airuopservername.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > Airuop
echo "proxies:" > Airuopservername.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/servername\:/c\  servername: $BUGSERVERNAME" ./$line
		cat ./$line >> Airuopservername.yaml
	fi
done < ./Airuop

sed '/^proxy\-groups/,$d' tbbatbbservername.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > tbbatbb
echo "proxies:" > tbbatbbservername.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/servername\:/c\  servername: $BUGSERVERNAME" ./$line
		cat ./$line >> tbbatbbservername.yaml
	fi
done < ./tbbatbb



rm xx* cutted MrMohebi chengaopan WilliamStar007 mahdibland peasoft anaer Airuop tbbatbb
