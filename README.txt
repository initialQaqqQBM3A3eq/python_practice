# Python 仮想環境について

このディレクトリは Python の学習環境です。仮想環境は `env/` 配下に構築されています。

## 環境情報

- Python バージョン: 3.12（Miniforge 経由でインストール）
- 仮想環境パス: ./env
- 仮想環境管理ツール: conda（Miniforge）

## 仮想環境の使い方

### 初期化（最初に一度だけ）

Miniforge がすでにインストールされている前提で、以下のスクリプトで環境をセットアップできます：

```bash
source ./init.sh

## 仮想環境のアクティベート
conda activate ./env

## 仮想環境のディアクティベート
conda deactivate

## shファイル↓ 
※基本的には下記を使用すること

source ./sh/init.sh

source ./sh/start.sh

source ./sh/stop.sh

source ./sh/clean.sh
