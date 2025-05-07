# Aztec Validator Registration Script

This Bash script registers a validator on the Aztec network using the `aztec` CLI. It automatically waits until a target UNIX timestamp and then triggers the `add-l1-validator` transaction with the provided parameters.

> 🛠️ Useful for time-sensitive validator registration on testnets like Sepolia.

---

## 📦 Features

- Waits until a future UNIX timestamp before executing
- Clean parameter-based config for secure and flexible use
- Supports unattended execution via `screen` or any terminal session manager

---

## 🧰 Technologies Used

- Bash (Shell scripting)
- Aztec CLI
- Time-based automation
- Ethereum JSON-RPC
- `screen` (optional but recommended)

---

## ⚠️ Timestamp Configuration (IMPORTANT)

If you get an error like this:

Error: ValidatorQuotaFilledUntil(uint256 _timestamp)
(1746568152)  <-- copy the value


Copy the **timestamp value** (e.g., `1746568152`) and update the script:

##📁 Cloning & Running the Script (Recommended with screen)

```bash
screen -S regvalidator
wget -q -O register-validator.sh https://raw.githubusercontent.com/kalikot26/aztec-validator-registration-script/refs/heads/main/register-validator.sh
chmod +x register-validator.sh
```
### 🔧 How to update:

```bash
nano register-validator.sh
````
Look for:

TARGET_TIMESTAMP=
Paste the new value from the error and save the file (Ctrl + s) and exit (Ctrl + X).

Apply your RPC, PrivKey, and Address

```run script
./register-validator.sh
```
To detach the session: Ctrl + A, then D

To reconnect later: screen -r regvalidator
