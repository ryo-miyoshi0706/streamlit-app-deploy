#!/bin/bash

# 仮想環境の作成
python -m venv .venv

# 仮想環境の有効化
source .venv/bin/activate

# 必要なパッケージのインストール
pip install -r requirements.txt

# .envファイルの作成
if [ ! -f .env ]; then
    cp .env.example .env
    echo "Please edit .env file and add your OpenAI API key"
fi

echo "Setup completed!"
