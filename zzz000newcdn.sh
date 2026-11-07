#!/bin/bash


curl -L https://raw.githubusercontent.com/MrMohebi/xray-proxy-grabber-telegram/master/collected-proxies/clash-meta/all.yaml -o MrMohebicdn.yaml
curl -L https://raw.githubusercontent.com/chengaopan/AutoMergePublicNodes/master/list.yml -o chengaopancdn.yaml
curl -L https://raw.githubusercontent.com/WilliamStar007/ClashX-V2Ray-TopFreeProxy/main/combine/clash.config.yaml -o WilliamStar007cdn.yaml
curl -L https://raw.githubusercontent.com/mahdibland/V2RayAggregator/master/Eternity.yml -o mahdiblandcdn.yaml
curl -L https://raw.githubusercontent.com/peasoft/NoMoreWalls/master/snippets/nodes.yml -o peasoftcdn.yaml
curl -L https://raw.githubusercontent.com/anaer/Sub/main/clash.yaml -o anaercdn.yaml
curl -L https://raw.githubusercontent.com/Airuop/cross/master/Eternity.yml -o Airuopcdn.yaml
curl -L https://raw.githubusercontent.com/tbbatbb/Proxy/master/dist/clash.config.yaml -o tbbatbbcdn.yaml



BUGCDN="104.18.1.196"



sed '/^proxy\-groups/,$d' MrMohebicdn.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > MrMohebi
echo "proxies:" > MrMohebicdn.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/server\:/c\  server: $BUGCDN" ./$line
		cat ./$line >> MrMohebicdn.yaml
	fi
done < ./MrMohebi

sed '/^proxy\-groups/,$d' chengaopancdn.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > chengaopan
echo "proxies:" > chengaopancdn.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/server\:/c\  server: $BUGCDN" ./$line
		cat ./$line >> chengaopancdn.yaml
	fi
done < ./chengaopan

sed '/^proxy\-groups/,$d' WilliamStar007cdn.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > WilliamStar007
echo "proxies:" > WilliamStar007cdn.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/server\:/c\  server: $BUGCDN" ./$line
		cat ./$line >> WilliamStar007cdn.yaml
	fi
done < ./WilliamStar007

sed '/^proxy\-groups/,$d' mahdiblandcdn.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > mahdibland
echo "proxies:" > mahdiblandcdn.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/server\:/c\  server: $BUGCDN" ./$line
		cat ./$line >> mahdiblandcdn.yaml
	fi
done < ./mahdibland

sed '/^proxy\-groups/,$d' peasoftcdn.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > peasoft
echo "proxies:" > peasoftcdn.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/server\:/c\  server: $BUGCDN" ./$line
		cat ./$line >> peasoftcdn.yaml
	fi
done < ./peasoft

sed '/^proxy\-groups/,$d' anaercdn.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > anaer
echo "proxies:" > anaercdn.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/server\:/c\  server: $BUGCDN" ./$line
		cat ./$line >> anaercdn.yaml
	fi
done < ./anaer

sed '/^proxy\-groups/,$d' Airuopcdn.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > Airuop
echo "proxies:" > Airuopcdn.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/server\:/c\  server: $BUGCDN" ./$line
		cat ./$line >> Airuopcdn.yaml
	fi
done < ./Airuop

sed '/^proxy\-groups/,$d' tbbatbbcdn.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > tbbatbb
echo "proxies:" > tbbatbbcdn.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/server\:/c\  server: $BUGCDN" ./$line
		cat ./$line >> tbbatbbcdn.yaml
	fi
done < ./tbbatbb



rm xx* cutted MrMohebi chengaopan WilliamStar007 mahdibland peasoft anaer Airuop tbbatbb
