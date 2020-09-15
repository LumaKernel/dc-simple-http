## セットアップ

```
cp certbot.sample.env certbot.env
cp reverseproxy.env.env reverseproxy.env
vim certbot.env reverseproxy.env
```

動かしているドメイン名を書く。メアドは間違えると特に確認とかないから注意。


## 初回 letsentrypt

```
docker-compose -f docker-compose.certbot.yml standalone
```

## 次回以降、リバースプロキシを動かしたまま更新

```
docker-compose -f docker-compose.certbot.yml webroot
```


## たぶん動く

