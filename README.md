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

## 📁 Cloning the Script

```bash
screen -S regvalidator
git clone https://github.com/yourusername/aztec-validator-registration-script.git
cd aztec-validator-registration-script
chmod +x register-validator.sh****
