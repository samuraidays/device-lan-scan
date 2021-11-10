# Device Network Scan

ネットワーク上のデバイスをスキャンしてMacアドレスとメーカー名を出力する  
ユースケースとしてはデバイスの棚卸しをする時にネットワーク上のデバイスのリストを作成する
CIS Controls : Controls1の実現

## 前提条件
arp-scanコマンドをインストールする

## 使用例

```
chmod +x lan-arp-scan.sh
./lan-arp-scan.sh
```
## 出力例

```
18ece7XXXXXX,(Unknown)
04d4c4XXXXXX,ASUSTek_COMPUTER_INC.
c6b2bfXXXXXX,(Unknown_locally_administered)
0cfe45XXXXXX,Sony_Interactive_Entertainment_Inc.
f40f24XXXXXX,XXXXXXXXXXX
```