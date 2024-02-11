# Java 11 をベースイメージとして使用
FROM openjdk:11

# Maven をインストール（オプションで Gradle も可）
RUN apt-get update && \
    apt-get install -y maven

# 作業ディレクトリを設定
WORKDIR /tdd_money

# プロジェクトファイルをコピー
COPY . /tdd_money

# JUnit テストを実行するためのコマンド（この例では Maven を仮定しているため、pom.xml が必要）
# Container起動時にテストを実行しないよう、コメントアウト
# CMD ["mvn", "test"]
