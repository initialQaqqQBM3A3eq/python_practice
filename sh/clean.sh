#!/bin/bash

# clean.sh

ENV_PATH="./env"

echo "仮想環境 '$ENV_PATH' を完全に削除します。よろしいですか？ (y/N)"
read -r answer

if [[ "$answer" =~ ^[Yy]$ ]]; then
  if [ -d "$ENV_PATH" ]; then
    rm -rf "$ENV_PATH"
    echo "仮想環境を削除しました。"
  else
    echo "仮想環境は存在しません。"
  fi
else
  echo "削除をキャンセルしました。"
fi
