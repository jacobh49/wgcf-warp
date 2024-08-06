# wgcf on Github Codespaces

### Register new account & generate WireGuard profile
Run:
```bash
chmod +x main.sh
./main.sh
```
Hit 'Enter' to agree to the Terms of Service when prompted.

### Change license key
If you have an existing Warp+ subscription, for an example on your phone, you can bind the account generated by this tool to your phone's account, sharing its Warp+ status. Please note that there is a current limit of maximum 5 linked devices active at a time. 

> :warning: This device's private key will be changed!

First, get your Warp+ account license key. To view it on Android:
1. Open the `1.1.1.1` app
2. Click on the hamburger menu button on the top-right corner
3. Navigate to: `Account` > `Key`

Edit `wgcf-account.toml` directly with the new license key and run:
```bash
chmod +x newkey.sh
./newkey.sh
```