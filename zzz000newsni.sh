#!/bin/bash



curl -L https://raw.githubusercontent.com/MrMohebi/xray-proxy-grabber-telegram/master/collected-proxies/clash-meta/all.yaml -o MrMohebisni.yaml
curl -L https://raw.githubusercontent.com/chengaopan/AutoMergePublicNodes/master/list.yml -o chengaopansni.yaml
curl -L https://raw.githubusercontent.com/WilliamStar007/ClashX-V2Ray-TopFreeProxy/main/combine/clash.config.yaml -o WilliamStar007sni.yaml
curl -L https://raw.githubusercontent.com/mahdibland/V2RayAggregator/master/Eternity.yml -o mahdiblandsni.yaml
curl -L https://raw.githubusercontent.com/peasoft/NoMoreWalls/master/snippets/nodes.yml -o peasoftsni.yaml
curl -L https://raw.githubusercontent.com/anaer/Sub/main/clash.yaml -o anaersni.yaml
curl -L https://raw.githubusercontent.com/Airuop/cross/master/Eternity.yml -o Airuopsni.yaml
curl -L https://raw.githubusercontent.com/tbbatbb/Proxy/master/dist/clash.config.yaml -o tbbatbbsni.yaml



BUGSNI="trouter2-azsc-uswe-3-a.trouter.teams.microsoft.com"



sed '/^proxy\-groups/,$d' MrMohebisni.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > MrMohebi
echo "proxies:" > MrMohebisni.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/sni\:/c\  sni: $BUGSNI" ./$line
		cat ./$line >> MrMohebisni.yaml
	fi
done < ./MrMohebi

sed '/^proxy\-groups/,$d' chengaopansni.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > chengaopan
echo "proxies:" > chengaopansni.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/sni\:/c\  sni: $BUGSNI" ./$line
		cat ./$line >> chengaopansni.yaml
	fi
done < ./chengaopan

sed '/^proxy\-groups/,$d' WilliamStar007sni.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > WilliamStar007
echo "proxies:" > WilliamStar007sni.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/sni\:/c\  sni: $BUGSNI" ./$line
		cat ./$line >> WilliamStar007sni.yaml
	fi
done < ./WilliamStar007

sed '/^proxy\-groups/,$d' mahdiblandsni.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > mahdibland
echo "proxies:" > mahdiblandsni.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/sni\:/c\  sni: $BUGSNI" ./$line
		cat ./$line >> mahdiblandsni.yaml
	fi
done < ./mahdibland

sed '/^proxy\-groups/,$d' peasoftsni.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > peasoft
echo "proxies:" > peasoftsni.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/sni\:/c\  sni: $BUGSNI" ./$line
		cat ./$line >> peasoftsni.yaml
	fi
done < ./peasoft

sed '/^proxy\-groups/,$d' anaersni.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > anaer
echo "proxies:" > anaersni.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/sni\:/c\  sni: $BUGSNI" ./$line
		cat ./$line >> anaersni.yaml
	fi
done < ./anaer

sed '/^proxy\-groups/,$d' Airuopsni.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > Airuop
echo "proxies:" > Airuopsni.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/sni\:/c\  sni: $BUGSNI" ./$line
		cat ./$line >> Airuopsni.yaml
	fi
done < ./Airuop

sed '/^proxy\-groups/,$d' tbbatbbsni.yaml > cutted
csplit -z cutted /^-/ '{*}'
grep -l network\:\ ws xx* > tbbatbb
echo "proxies:" > tbbatbbsni.yaml
while IFS= read -r line
do
	if grep -q "\network\:\ ws\b" "./$line";then
		echo "hehe"
		sed -i "/sni\:/c\  sni: $BUGSNI" ./$line
		cat ./$line >> tbbatbbsni.yaml
	fi
done < ./tbbatbb



rm xx* cutted MrMohebi chengaopan WilliamStar007 mahdibland peasoft anaer Airuop tbbatbb
