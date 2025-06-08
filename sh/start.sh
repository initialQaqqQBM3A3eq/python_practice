#!/bin/bash

# start.sh

ENV_PATH="./env"

if ! command -v conda &> /dev/null; then
  echo "conda コマンドが見つかりません。Miniforge や Miniconda をインストールしてください。"
  exit 1
fi

if [ ! -d "$ENV_PATH" ]; then
  echo "仮想環境が存在しません。init.sh を実行して作成してください。"
  exit 1
fi

echo "仮想環境をアクティベートします: $ENV_PATH"
conda activate "$ENV_PATH" || { echo "アクティベートに失敗しました。"; exit 1; }
