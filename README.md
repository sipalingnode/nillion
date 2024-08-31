<p align="center">
  <img height="300" height="auto" src="https://user-images.githubusercontent.com/109174478/209359981-dc19b4bf-854d-4a2a-b803-2547a7fa43f2.jpg">
</p>

# Nillion Verifier
## Install Bahan
```
wget https://raw.githubusercontent.com/sipalingnode/nillion/main/nillion.sh && chmod +x nillion.sh && ./nillion.sh
```
## Backup Wallet (Backup Private Key, Address & Pubkey)
```
sudo cat /root/nillion/accuser/credentials.json
```
## Import Wallet
- Wallet yang dapet dari VPS kalian import di Keplr
- Claim Faucet Nillion [Here](https://faucet.testnet.nillion.com/)
- Go to Nillion Verifier : https://verifier.nillion.com/verifier
- Connect Wallet Keplr
- Paste ID & Pubkey
- Verifikasi dan Approve
- Done. Tinggal nunggu sinkron kisaran 30 Menit sampe 60 Menit
## Run Node
```
docker run -v ./nillion/accuser:/var/tmp nillion/retailtoken-accuser:v1.0.0 accuse --rpc-endpoint "https://testnet-nillion-rpc.lavenderfive.com" --block-start 5199326
```
## Check Logs Node
```
docker logs -f $(docker ps | grep nillion | awk '{print $NF}') --tail 100 | grep -E "Registered:|Secret"
```
