#!/bin/bash

# コピー先ディレクトリを引数で受け取る
DEST="$1"

# 引数チェック
if [ -z "$DEST" ]; then
  echo "Usage: $0 <destination-directory>"
  exit 1
fi

# コピー先ディレクトリがなければ作成
mkdir -p "$DEST"

# .rules/rules配下の*.shファイルをすべてコピー
cp .rules/rules/*.sh "$DEST"

echo "Copied all .sh files from .rules/rules/ to $DEST"