
---

## ✅ `init.sh` スクリプト

このシェルスクリプトは以下を行います：

1. `conda` の存在チェック
2. 仮想環境 `./env` がなければ作成
3. 仮想環境を有効化

```bash
#!/bin/bash

# init.sh

# 終了時に使えるメッセージ関数
echo_fail() { echo -e "\033[0;31m$1\033[0m"; exit 1; }
echo_info() { echo -e "\033[0;32m$1\033[0m"; }

# conda が使えるかチェック
if ! command -v conda &> /dev/null; then
  echo_fail "conda コマンドが見つかりません。Miniforge や Miniconda をインストールしてください。"
fi

# 仮想環境のパス
ENV_PATH="./env"

# 仮想環境が存在しなければ作成
if [ ! -d "$ENV_PATH" ]; then
  echo_info "仮想環境が見つかりません。新しく作成します..."
  conda create -y -p "$ENV_PATH" python=3.12 || echo_fail "仮想環境の作成に失敗しました。"
else
  echo_info "仮想環境は既に存在します。"
fi

# 仮想環境のアクティベート
conda activate "$ENV_PATH" || echo_fail "仮想環境のアクティベートに失敗しました。"

echo_info "仮想環境がアクティブになりました。"
