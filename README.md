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

- 新しい技術やパターンが現れたらルールを追加・更新
- コードレビューや開発中に気づいた点は`self_improve.mdc`のガイドに従い反映
- タスク管理・分解・進捗管理はTaskmasterツールを活用
- ルールやワークフローの改善は定期的に実施

## 参考

- 各`.mdc`ファイル内に具体例や詳細なガイドラインを記載
- ルールの書き方や構造は`cursor_rules.mdc`を参照
- タスク管理の詳細は`taskmaster.mdc`・`dev_workflow.mdc`を参照
- コミット規約は`git-rule.mdc`を参照

## 参照URL

- [Taskmaster](https://github.com/eyaltoledano/claude-task-master/tree/main)
