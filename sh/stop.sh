#!/bin/bash

# stop.sh

if ! command -v conda &> /dev/null; then
  echo "conda コマンドが見つかりません。Miniforge や Miniconda をインストールしてください。"
  exit 1
fi

echo "仮想環境をディアクティベートします。"
conda deactivate
