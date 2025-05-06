#!/bin/bash

# === CONFIG ===
L1_RPC_URL="rpc"
PRIVATE_KEY="your_private_key_here"
ATTESTER="0xaddress"
PROPOSER_EOA="0xaddress"
STAKING_ASSET_HANDLER="0xF739D03e98e23A7B65940848aBA8921fF3bAc4b2"
CHAIN_ID=11155111

# === EXECUTION TIMESTAMP ===
TARGET_TIMESTAMP=1746481740  # change timestamp value given by the error

# === Wait loop ===
echo "[INFO] Waiting until target timestamp: $TARGET_TIMESTAMP ($(date -d @$TARGET_TIMESTAMP))"
while [ "$(date +%s)" -lt "$TARGET_TIMESTAMP" ]; do
  sleep 1
done

# === Run command ===
echo "[INFO] Sending aztec add-l1-validator transaction..."
aztec add-l1-validator \
  --l1-rpc-urls "$L1_RPC_URL" \
  --private-key "$PRIVATE_KEY" \
  --attester "$ATTESTER" \
  --proposer-eoa "$PROPOSER_EOA" \
  --staking-asset-handler "$STAKING_ASSET_HANDLER" \
  --l1-chain-id $CHAIN_ID
