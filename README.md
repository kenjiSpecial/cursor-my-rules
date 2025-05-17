# My Cursor Rules

このプロジェクトは、自分用のCursor向けルール集です。主に開発ワークフローの標準化、タスク管理、コミットメッセージ規約、自己改善のためのルールをMarkdown形式で管理しています。

## ディレクトリ構成

- `.rules/rules/`
  - `cursor_rules.mdc` … ルールファイルの書き方・構造ガイド
  - `taskmaster.mdc` … タスク管理ツールTaskmasterの詳細リファレンス
  - `dev_workflow.mdc` … 開発ワークフローの標準プロセス
  - `git-rule.mdc` … Conventional Commitsに基づくコミットメッセージ規約
  - `self_improve.mdc` … ルールの継続的改善・自己改善ガイド
  - `01-core.mdc`, `02-memorybank.mdc` … コア/メモリバンク関連ルール

## 使い方

1. **ルールの参照・追加**
   - ルールはMarkdown（`.mdc`）形式で記述し、`cursor_rules.mdc`のフォーマットに従います。
   - 既存のルールを参考にしつつ、プロジェクトや自分の開発スタイルに合わせて自由に追加・修正してください。

2. **タスク管理**
   - `taskmaster.mdc`に従い、Taskmasterツール（MCP/CLI）でタスクの作成・管理・分解・進捗管理を行います。
   - 開発ワークフローやタスクの詳細は`dev_workflow.mdc`を参照。

3. **コミットメッセージ規約**
   - `git-rule.mdc`に従い、Conventional Commits形式でコミットメッセージを記述します。
   - `feat:`, `fix:`, `BREAKING CHANGE:` などのprefixを正しく使い分けます。

4. **ルールの継続的改善**
   - `self_improve.mdc`を参考に、コードベースや開発体験に応じてルールを随時見直し・改善します。

## 推奨ワークフロー

1. プロジェクトの要件定義（Product Requirements Document, PRD）を作成する
   - まず、`.rules/rules/note/prd.md`に記載されているテンプレートやサンプルを参考に、自分のプロジェクトに合わせたPRD（product requirements document）を新規作成します。
   - PRDには、プロジェクトの目的、背景、要件、機能一覧、スケジュール、関係者などを具体的に記述してください。
   - 既存の`prd.md`を直接編集しても良いですし、内容をコピーして新しいファイルとして保存しても構いません。
   - このドキュメントは、以降のタスク分解や開発計画の基礎資料となります。作成したprd.mdは、scripts/prd.mdに保存します。
2. task masterの初期化を行う
   - Cursorのチャット欄に「taskmaster-aiをプロジェクトに初期化」と記入し、AIによる初期化コマンドを実行します。
   - これにより、タスク管理のための初期設定や必要なファイル・ディレクトリが自動生成されます。
3. cursor rulesの初期化・カスタマイズを行う
   - 本リポジトリの.rules/rulesにあるファイルをコピーして上書きを行う
4. task と note/prd.md からmemorybankのテキストを初期化する。
   - Cursorのチャット欄に「script/prd.mdにある内容をtaskmaster-aiに読み込ませて、タスクを作成してください」と記入し、AIによる初期化コマンドを実行します。
   - 次に、Cursorのチャット欄に「作成したタスクとプロジェクトのファイル{xx}からmemorybankのテキストを初期化してください」と記入し、AIによる初期化コマンドを実行します。
5. プロジェクトの開発を行う
   - タスク完了後の処理
     - タスクを完了したら、必ずMemory Bank（例：.rules/rules/02-memorybank.mdc）に学びや注意点、決定事項などを追記してください。
     - 追記後、`git add`と`git commit`で変更を記録します。コミットメッセージはConventional Commits形式を推奨します。
     - 例:
       docs(memorybank): タスクX完了に伴う知見を追記

### プロジェクトの進め方

## タスクの確認・実行

```
タスクを確認してください
次のタスクはなんですか？
タスク2の実行をしましょう!
タスク3に関係のあるファイルについて説明してください
```


## 参考

- 各`.mdc`ファイル内に具体例や詳細なガイドラインを記載
- ルールの書き方や構造は`cursor_rules.mdc`を参照
- タスク管理の詳細は`taskmaster.mdc`・`dev_workflow.mdc`を参照
- コミット規約は`git-rule.mdc`を参照

## 参照URL

- [Taskmaster](https://github.com/eyaltoledano/claude-task-master/tree/main)

## シェルスクリプトのコピー方法

`.rules/rules/` 配下のシェルスクリプト（*.sh）を任意のディレクトリにまとめてコピーしたい場合は、プロジェクトルートの `copy-rules.sh` を利用してください。

### 使い方

```sh
./copy-rules.sh コピー先ディレクトリ
```

例:
```sh
./copy-rules.sh xxx/yyy
```

これで `.rules/rules/` 内の全ての `.sh` ファイルが指定ディレクトリにコピーされます。
