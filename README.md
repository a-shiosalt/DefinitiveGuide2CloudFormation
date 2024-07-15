# 「詳解 CloudFormation」テンプレートファイル
[<img src="https://book.mynavi.jp/files/topics/143664_ext_06_0.jpg" width="10%">](https://book.mynavi.jp/ec/products/detail/id=143664)
<br>
[本の正誤情報と修正PDFはこちら](https://book.mynavi.jp/supportsite/detail/9784839985882.html)

#### 書籍中で説明したテンプレートファイルを掲載しています。
:grey_exclamation: ファイル名に-NGや-Noを含むテンプレートは動作しません。説明のために動作しないファイルを掲載しています。
<br>:grey_exclamation: ファイル名にsample を含む場合、多くは一部記載の修正が必要です。
   例えばBUCKETNAMEを実際のバケット名に書き換える必要があります。
## 詳細目次
  本に記載した目次では、2階層までのセクションしか記載できませんでした。
  全セクションを記載した目次を作成しましたので、PDFにて公開します。<br>
  [book-contents.pdf](book-contents.pdf) 
 <br> 詳細索引代わりにも使えます。
## 書籍中の一覧表の一覧
|一覧表名|セクション|ページ|
|:-----------|:-----------|:-----------|
|スタックセットの画面操作一覧|2-16-2|194|
|スタックセットの更新・削除の「アクション」ボタン機能一覧|2-16-2-4|219|
|スタック操作系のコマンド一覧|3-1|327|
|waitコマンド一覧|3-1-3|331|
|共通のコマンドオプション一覧|3-2|356|
|deployコマンド特有のオプション一覧|3-3|374|
|スタックセット用コマンド一覧|3-4|381|
|IaCジェネレータ用コマンド一覧|3-6|420|
|拡張機能用コマンド一覧|3-7|432|
|セクション一覧|4-1|443|
|Parametersセクションの属性一覧|4-1-4|449|
|ParametersセクションのType一覧|4-1-4|456|
|CommnaDelimitedListとList<String>の比較|4-1-4|460|
|ParametersセクションでサポートされているSSMパラメータタイプ一覧|4-1-4|464|
|ルール固有の組み込み関数：値や値の配列を返す関数一覧|4-1-5|470|
|ルール固有の組み込み関数：true/falseを返す関数一覧|4-1-5|474|
|Resources セクションのリソースの属性一覧|4-1-9|488|
|DeletionPolicyの値と動作一覧|4-1-9|490|
|UpdateReplacePolicy 値と動作一覧|4-1-9|491|
|組み込み関数一覧|4-2|521|
|条件関数|4-3|535|
|疑似パラメータ|4-4|536|
|ヘルパースクリプト|4-5|537|
|変換一覧|4-6-1|575|
|正規表現 (Regular expression ,regex pattern)|8-1|707|
|疑似パラメータ(Pseudo parameters)|8-2|710|
|AWS固有のパラメータタイプ(AWS-specific parameter types)|8-3|711|
|SSMパブリックパラメータ　主なAMI ID|8-4|713|
|スタックの状態一覧|8-5|715|
|スタックセットオペレーションのステータス一覧|8-6|717|
|AWS::Serverless::Connector Source/Destination対応表|8-7|718|
|SAM ポリシーテンプレートとプレースホルダー値一覧|8-8|721|

# 書籍の各章説明
## [第 1 章] CloudFormationの基本要素と機能
	1-1 CloudFormationを構成する要素	3
	1-2 CloudFormationの主な機能	4
		①スタックの作成・更新・削除
		② 変更セット
		③ドリフト
		④ネスト
		⑤スタックセット
	1-3 テンプレートファイルの概要	7
		1-3-1 YAML形式とJSON形式
		1-3-2 テンプレートファイルのセクション
		1-3-3 リソースセクションの概要
		1-3-4 デフォルト設定に注意
		1-3-5 おまけ１：EC2「接続」のネットワーク構成
		1-3-6 おまけ２：①EC2 Instance Connect で1) インスタンスにパブリックIP(IPv4)を利用して接続するとき
		1-3-7 VPCエンドポイント作成のテンプレート例
		1-3-8 予算超過時の通知設定のテンプレート例
## [第 2 章] CloudFormationの機能とコンソール画面		25
	2-1 スタックの作成	27
		2-1-1 ＜オペレーション＞スタックの作成の例
		2-1-2 ステップ１：スタックの作成
		2-1-3 ステップ２：スタックの詳細を指定
		2-1-4 ステップ３：スタックオプションの設定
		2-1-5 ステップ４：レビュー (スタック名)
		2-1-6 スタック作成開始
	2-2 スタックの更新	35
		2-2-1 ＜オペレーション＞スタックの更新
		2-2-2 ステップ１：スタックの更新
		2-2-3 ステップ２：スタックの詳細を指定
		2-2-4 ステップ３：スタックオプションの設定
		2-2-5 ステップ４：レビュー (スタック名)
		2-2-6 実行と結果確認
		2-2-7 スタックアクション：スタックの更新をキャンセル
		2-2-8 スタックアクション：更新ロールバックを続ける
		2-2-9 スタック更新の留意点
	2-3 スタックの削除	48
		2-3-1 削除したスタックの表示
		2-3-2 リソースを削除しない設定
		2-3-3 テンプレートファイル1.7-S3DeletionPolicy.yaml
		2-3-4 スタック削除のエラー
	2-4 スタック情報の表示	52
		2-4-1 スタックの一覧画面と削除済みスタック
		2-4-2 スタックの詳細
		2-4-3 スタックの詳細画面：「スタックの情報」タブ
		2-4-4 スタックの詳細画面：「イベント」タブ
		2-4-5 スタックの詳細画面：「リソース」タブ
		2-4-6 スタックの詳細画面：「出力」タブ
		2-4-7 スタックの詳細画面：「パラメータ」タブ
		2-4-8 スタックの詳細画面：「テンプレート」タブ
		2-4-9 スタックの詳細画面：「変更セット」タブ
		2-4-10 スタックの詳細画面：Gitと同期(Git sync)
		2-4-11 CloudFormationが自動で登録するタグ
		2-4-12 スタックの作成の補足
	2-5 スタック作成・更新ウィザードの選択肢	62
		2-5-1 ステップ１：スタックの作成
		2-5-2 ステップ２
		2-5-3 ステップ３：タグ（タグ）
		2-5-4 ステップ３：IAMロール（アクセス許可）
		2-5-5 ステップ３：プロビジョニング失敗時の動作（スタックの失敗オプション）
		2-5-6 ステップ３：ロールバック中に新しく作成されたリソースを削除する（スタックの失敗オプション）
		2-5-7 ステップ３：スタックポリシー（詳細オプション）
		2-5-8 ステップ３：ロールバック設定（詳細オプション）
		2-5-9 ステップ３：詳細オプション 通知オプション
		2-5-10 ステップ３：スタックの作成オプション（タイムアウトと削除保護）
		2-5-11 ステップ４： クイック作成リンク
		2-5-12 ステップ４：変更セットの作成
		2-5-13 AppliCation Managerで表示
	2-6 スタックポリシー	77
		2-6-1 スタックポリシーの注意点
	2-7 エラーメッセージ例	80
		2-7-1 ウィザード中 ステップ１でのエラー
		2-7-2 ウィザード中 ステップ３でのエラー
		2-7-3 ウィザード中 ステップ４でのエラー
	2-8 ドリフト	84
		2-8-1 ドリフト結果を表示
		2-8-2 ドリフトの結果を表示 その２
		2-8-3 ドリフトの詳細を表示
		2-8-4 特定のリソースのみドリフトを検出する
		2-8-5 ドリフトの注意点
	2-9 変更セットの作成・実行	93
		2-9-1 変更セットの作成方法３つ
		2-9-2 ＜画面＞スタックの詳細の「変更セット」タブ
		2-9-3 ＜画面＞変更セットのプレビュー
		2-9-4 変更セットのプレビュー
		2-9-5 変更セット補足
	2-10 置換(replacement)	105
		2-10-1 置換で削除しない設定(UpdateReplacePolicy: Retain)
		2-10-2 置換のリソース削除タイミング
		2-10-3 置換が発生する設定項目か確認する
		2-10-4 置換が発生する時は「ロールバックの一時停止」が利用できない
	2-11 ロールバックと一時停止(正常にプロビジョニングされたリソースの保持)	112
		2-11-1 ＜画面＞ロールバックの一時停止画面
		2-11-2 「スタックのロールバックが一時停止されました」メッセージ意訳
		2-11-3 「スタックのロールバックが一時停止されました」の選択肢
		2-11-4 （参考）「正常にプロビジョニングされたリソースの保持」のコマンド
		2-11-5 「スタックの失敗オプション」選択時の注意点
	2-12 リソースのインポート（既存方式）	120
		2-12-1 新規スタックにインポート（Webマネジメントコンソール）
		2-12-2 既存スタックにインポート（Webマネジメントコンソール）
		2-12-3 リソースがインポート可能か確認する
		2-12-4 リソースのインポートエラー
		2-12-5 インポートの注意点など
	2-13 コマンドでインポート(CREATE-CHANGE-SETオプション)	130
		2-13-1 既存のインポート(create-change-set --change-set-type IMPORT)
		2-13-2 コマンドでインポート（カスタム名指定）(--import-existing-resources)
	2-14 GITと同期(Git sync)	145
		2-14-1 デベロッパー用ツール「接続」
		2-14-2 GitHub側の設定
		2-14-3 デプロイファイル
		2-14-4 Gitと同期を利用して新規スタックを作成
		2-14-5 デプロイファイルをスタック作成ウィザード中で作成
		2-14-6 既存のスタックをGitと同期
		2-14-7 ２つのロール
		2-14-8 Gitと同期のエラーなど
	2-15 ネスト	163
		2-15-1 ネストの基本
		2-15-2 ネストの階層
		2-15-3 ネストされたスタックのOutputs値を親スタックから参照する
		2-15-4 ＜画面＞ネストされたスタックのWebマネジメントコンソール表示
		2-15-5 ネストとタグの伝播
		2-15-6 既存スタックのインポート（ネストされたスタックとしてインポート）
		2-15-7 ネストの更新
		2-15-8 ネストの変更セット
		2-15-9 ネスト親だけの変更セット
		2-15-10 ネストとドリフト検知
		2-15-11 ネストの削除
		2-15-12 ネストの活用例
		2-15-13 ネストの考慮点など
	2-16 スタックセット(StackSets)	176
		2-16-1 スタックセット概要
		2-16-2 スタックセットの操作
		2-16-3 「②サービスマネージドアクセス許可」の制限事項
		2-16-4 アカウントゲート
		2-16-5 StackSetの事前準備作業
	2-17 Application Composer	265
		2-17-1 Application Composerの起動
		2-17-2 Application Composerの終了
		2-17-3 Application Composerの主な操作
	2-18 IACジェネレーター	287
		2-18-1 オペレーション
		2-18-2 考慮事項
	2-19 拡張機能（EXTENSIONS）とレジストリ	299
		2-19-1 リソースタイプ
		2-19-2 モジュール
		2-19-3 フック
## [第 3 章] コマンド操作		323
	3-1 スタック操作系コマンド(API名を利用)	325
		3-1-1 スタック新規作成（直接作成）(create-stack)
		3-1-2 スタックを直接更新(update-stack)
		3-1-3 実行結果の確認 (wait)
		3-1-4 スタックの更新をキャンセル(cancel-update-stack)
		3-1-5 スタックの一覧(list-stacks)
		3-1-6 スタックの一覧(describe-stacks)
		3-1-7 スタックのイベントを表示(describe-stack-events)
		3-1-8 スタックのリソース一覧(list-stack-resources)
		3-1-9 スタックのリソース詳細情報一覧(describe-stack-resources)
		3-1-10 スタックのリソース詳細情報(describe-stack-resource)
		3-1-11 更新ロールバックを続ける(continue-update-rollback)
		3-1-12 スタックをロールバック(rollback-stack)
		3-1-13 テンプレートを取得(get-template)
		3-1-14 スタック削除 (delete-stack)
		3-1-15 変更セットを作成 (create-change-set)
		3-1-16 変更セットを実行 (execute-change-set)
		3-1-17 変更セットの内容確認 (describe-change-set)
		3-1-18 変更セット削除 (delete-change-set)
		3-1-19 変更セットの一覧(list-change-sets)
		3-1-20 ドリフトの検出(detect-stack-drift)
		3-1-21 ドリフトの検出(describe-stack-drift-detection-status)
		3-1-22 ドリフト結果を表示(describe-stack-resource-drifts)
		3-1-23 特定のリソースのドリフトを検出(detect-stack-resource-drift)
		3-1-24 スタックポリシーを設定(set-stack-policy)
		3-1-25 スタックポリシーを取得(get-stack-policy)
		3-1-26 テンプレートの事前検証(validate-templateコマンド)
		3-1-27 エクスポート一覧(list-exports)
		3-1-28 エクスポートをインポートしているスタック一覧(list-imports)
		3-1-29 スタックの保護設定を変更 (update-termination-protection)
	3-2 共通のコマンドオプション（API名を利用）	356
		3-2-1 スタック名(--stack-name)
		3-2-2 テンプレートファイル(--template-body,--template-url)
		3-2-3 前回のテンプレートを利用(--use-previous-template)
		3-2-4 変更セット名(--change-set-name)
		3-2-5 明示的な承認(--capabilities)
		3-2-6 パラメータ指定(--parameters)
		3-2-7 実行ロール(--role-arn)
		3-2-8 スタックの失敗オプション(ロールバックの一時停止) (--on-failure,--on-stack-failure,--disable-rollback)
		3-2-9 失敗時は新規作成リソースをすべて削除(--retain-except-on-create)
		3-2-10 SNS通知(--notification-arns)
		3-2-11 ロールバック設定（CloudWatchアラーム利用）(--rollback-configuration)
		3-2-12 タイムアウト(--timeout-in-minutes)
		3-2-13 リソースタイプを制限(--resource-types)
		3-2-14 スタックポリシー(--stack-policy-body,--stack-policy-url)
		3-2-15 タグ付与(--tags)
		3-2-16 クライアントリクエストトークン（識別子）(--client-request-token)
	3-3 スタック作成・更新コマンド(DEPLOY)	374
		3-3-1 deployコマンド 概要と特徴
	3-4 スタックセット用コマンド	381
		3-4-1 スタックセット新規作成(create-stack-set)
		3-4-2 スタックセット更新(update-stack-set)
		3-4-3 スタックインスタンス作成(create-stack-instances)
		3-4-4 スタックインスタンスを更新(update-stack-instances)
		3-4-5 スタックインスタンスを削除(delete-stack-instances)
		3-4-6 スタックセットにインポート(import-stacks-to-stack-set)
		3-4-7 スタックセットの実行の停止(stop-stack-set-operation)
		3-4-8 スタックセット削除(delete-stack-set)
		3-4-9 組織の信頼されたアクセスを有効化(activate-organizations-access)
		3-4-10 組織の信頼されたアクセスを無効化(deactivate-organizations-access)
		3-4-11 組織の信頼されたアクセスの情報(describe-organizations-access)
		3-4-12 スタックセットの一覧(list-stack-sets)
		3-4-13 スタックセット情報(describe-stack-set)
		3-4-14 スタックセット内の各インスタンスの情報(list-stack-instances)
		3-4-15 スタックセット内の各スタックの情報(describe-stack-instance)
		3-4-16 スタックセットのオペレーション一覧(list-stack-set-operations)
		3-4-17 スタックセットのオペレーション結果情報(list-stack-set-operation-results)
		3-4-18 オペレーションの詳細情報(describe-stack-set-operation)
		3-4-19 スタックセットのドリフト検知(detect-stack-set-drift)
		3-4-20 スタックインスタンスのリソースドリフト一覧(list-stack-instance-resource-drifts)
	3-5 共通のコマンドオプション（スタックセット）	408
		3-5-1 スタックセット名(--stack-set-name)
		3-5-2 テンプレートファイル(--template-body,--template-url)
		3-5-3 明示的な承認(--capabilities)
		3-5-4 許可モデル(--permission-model)
		3-5-5 管理ロールのARN(--administration-role-arn)
		3-5-6 実行ロール名(--execution-role-name)
		3-5-7 自動デプロイ(--auto-deployment)
		3-5-8 デプロイ先リージョン(--regions)
		3-5-9 デプロイ先アカウントID(--accounts)
		3-5-10 サービスマネージドのデプロイ先(--deployment-targets)
		3-5-11 パラメータ(--parameters)
		3-5-12 パラメータの上書き(--parameter-overrides)
		3-5-13 タグ付与(--tags)
		3-5-14 マネージド型の実行(--managed-execution)
		3-5-15 デプロイオプション(--operation-preferences)
		3-5-16 委任された管理者として実行(--call-as)
		3-5-17 オペレーションID(--operation-id)
		3-5-18 スタックインスタンスのアカウントID(--stack-instance-account)
		3-5-19 スタックインスタンスのリージョン(--stack-instance-region)
	3-6 IACジェネレーター用コマンド	420
		3-6-1 リソーススキャンを開始
		3-6-2 リソーススキャンの進捗を表示
		3-6-3 リソーススキャンの一覧
		3-6-4 リソーススキャンに含まれるリソースの一覧
		3-6-5 リソーススキャンに含まれるリソースの関連リソース一覧
		3-6-6 IaC ジェネレーターにテンプレートを作成
		3-6-7 IaC ジェネレーターのテンプレートを更新
		3-6-8 IaC ジェネレーターのテンプレートを削除
		3-6-9 IaC ジェネレーターのテンプレート一覧
		3-6-10 IaC ジェネレーターのテンプレート詳細表示
		3-6-11 IaC ジェネレーターのテンプレート表示
	3-7 拡張機能用コマンド	432
	3-8 その他コマンド	434
		3-8-1 テンプレートのサマリーを作成 (get-template-summary)
		3-8-2 コストを試算する(estimate-template-cost)
		3-8-3 record-handler-progress
		3-8-4 シグナル送信(signal-resource)
## [第 4 章] テンプレートファイル の構造と仕様	
	4-1 セクション	443
		4-1-1 形式バージョン(AWSTemplateFormatVersion)セクション
		4-1-2 Descriptionセクション
		4-1-3 Metadataセクション
		4-1-4 パラメータ(Parameters)セクション
		4-1-5 ルール(Rules)セクション
		4-1-6 Mappings セクション
		4-1-7 条件(Conditions)セクション
		4-1-8 変換（Transform）セクション
		4-1-9 リソース(Resources)セクション
		4-1-10 出力(Outputs)セクションとエクスポート
		4-1-11 補足：AWS Systems Managerパラメータストア
		4-1-12 補足：AWS Secrets Managerシークレット
		4-1-13 補足：EC2 AMI IDとSSMパブリックパラメータ
	4-2 組み込み(INTRINSIC)関数	521
		4-2-1 Ref
		4-2-2 Fn::GetAtt
		4-2-3 Fn::Sub
		4-2-4 Fn::Base64
		4-2-5 Fn::Cidr
		4-2-6 Fn::FindInMap
		4-2-7 Fn::GetAZs
		4-2-8 Fn::ImportValue
		4-2-9 Fn::Join
		4-2-10 Fn::Select
		4-2-11 Fn::Split
	4-3 条件関数 (CONDITION FUNCTIONS)	535
	4-4 疑似(PSEUDO)パラメータ	536
	4-5 EC2向けの機能：ヘルパースクリプト（CloudFormation HELPER SCRIPTS）	537
		4-5-1 cfn-signal
		4-5-2 cfn-init
		4-5-3 cfn-get-metadata
		4-5-4 cfn-hup
		4-5-5 MetadataのAWS::CloudFormation::Init
		4-5-6 MetadataのAWS::CloudFormation::Authentication
		4-5-7 補足１：EC2ユーザーデータ概要
		4-5-8 補足２：UserDataのYAML表記とJSON表記
	4-6 変換：TRANSFORM	573
		4-6-1 「変換」一覧
		4-6-2 AWS::Include (Fn::Transform)
		4-6-3 AWS::LanguageExtensions
		4-6-4 AWS::Serverless（AWS SAM）
		4-6-5 AWS::SecretsManager
		4-6-6 AWS::CodeDeployBlueGreen
	4-7 循環参照（circular dependencies）問題と解決方法	604
		4-7-1 セキュリティグループで発生する循環参照（自己参照）
		4-7-2 ポリシーで発生する循環参照
		4-7-3 依存関係(DependsOn)
	4-8 テンプレートファイルの主な上限	623
	
## [第 5 章] CloudFormationのカスタマイズ方法 概要	625
	5-1 カスタムリソース	628
	5-2 マクロ	631
	5-3 モジュール(MODULE)	635
	5-4 拡張機能（EXTENSIONS）リソースタイプとフック	640
## [第 6 章] CloudFormation用ツール		641
	6-1 cfn-lint	643
		6-1-1 インストール
		6-1-2 利用例
		6-1-3 グラフ構造(-gオプション)
		6-1-4 VisualStudio Code用 cfn-lint拡張機能
	6-2 cfn-flip	650
	6-3 cfn_nag	652
		6-3-1 インストール
		6-3-2 利用例
	6-4 rain	655
		6-4-1 インストール
		6-4-2 利用例
	6-5 AWS CloudFormation GUARD (cfn-guard)	658
		6-5-1 実行例：
		6-5-2 インストール
		6-5-3 ルールセットファイル（ガードファイル）の文法
	6-6 taskcat	669
	6-7 Former2	673
	6-8 cfn-docgen	675
	6-9 AWS SAM コマンドラインインターフェイス (AWS SAM CLI)	677
		6-9-1 インストール（pip利用）
		6-9-2 インストール（インストーラ利用）
	6-10 CloudFormation CLI (cfn)	682
## [第 7 章] JSONで理解するYAMLフォーマット		683
	7-1 JSONの概要	685
		7-1-1 ペアとオブジェクト
		7-1-2 KeyとValue
		7-1-3 インデントなど
		7-1-4 エスケープシーケンス
		7-1-5 JSONとシングルクオート
	7-2 YAML：２種のスタイル：ブロックスタイルとフロースタイル	688
		7-2-1 YAMLブロックスタイル 概要
		7-2-2 YAMLフロースタイル 概要
		7-2-3 スタイルの混在
		7-2-4 空のオブジェクト
		7-2-5 YAMLのKeyとValue
		7-2-6 ブロックスタイル詳細：インデント
		7-2-7 配列
		7-2-8 コメント記号
	7-3 リテラル・折りたたみ：文字列中の改行	694
		7-3-1 ブロックスタイルの値の途中の改行（プレーン）
		7-3-2 リテラル(literal)
		7-3-3 折りたたみ（Folded）
		7-3-4 +と-	699
	7-4 CloudFormationのYAML短縮形
	7-5 セパレーターなど	701
	7-6 YAMLでのダブルクオートとシングルクオート、クオートなしの扱い	702
		7-6-1 ①シングルクオート(')で囲む場合
		7-6-2 ②ダブルクオート(")で囲む場合：
		7-6-3 ③クオートで囲まない場合
		7-6-4 ④クオートで囲まず >- または |- で次の行に記載する場合
## [第 8 章] チートシート集		705
	8-1 正規表現 (regular expression ,regex pattern)	707
	8-2 疑似パラメータ(pseudo parameters)	710
	8-3 AWS固有のパラメータタイプ(AWS-specific parameter types)	711
	8-4 SSMパブリックパラメータ　主なAMI ID	713
	8-5 スタックの状態一覧	715
	8-6 スタックセットオペレーションのステータス一覧	717
	8-7 AWS::Serverless::Connector Source/Destination対応表	718
	8-8 SAM ポリシーテンプレートとプレースホルダー値一覧	721
	8-9 ドキュメントURL	725
	一覧表	727
	索引	728

