# README

# freemarket_sample_71h DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false, unique: true, index: true|
|password|string|null: false|
### Association
- has_many :items
- has_one :profile dependent: :destroy
- has_one :address dependent: :destroy
- has_one :card dependent: :destroy
- has_many :orders dependent: :destroy

## profilesテーブル
|Column|Type|Options|
|------|----|-------|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|
|birth_year|integer|null: false|
|birth_month|integer|null: false|
|birth_day|integer|null: false|
|user|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
## reference型を使用
  下記をマイグレーションファイルに追加して作成
  t.references :user, foreign_key: true

  ## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|prefecture|integer|null: false, foreign_key: true|
|city|string|null: false|
|house_number|string|null: false|
|post_cord|integer(7)|null: false|
|user|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
## reference型を使用
  下記をマイグレーションファイルに追加して作成
  t.references :user, foreign_key: true

  ## prefecturesテーブル
|Column|Type|Options|
|------|----|-------|
active_hashにて都道府県を追加
### Association
- has_many :items


## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|card_number|string|null: false, unique: true|
|limit_month|integer|null: false|
|limit_year|integer|null: false|
|security_cord|integer|null: false|
|family_name|string|null: false|
|first_name|string|null: false|
|user|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
## reference型を使用
  下記をマイグレーションファイルに追加して作成
  t.references :user, foreign_key: true

  ## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|content|text|null: false|
|price|integer|null: false|
|item_condition|integer|null: false, foreign_key: true|
|postage_payer|integer|null: false, foreign_key: true|
|prefecture|integer|null: false, foreign_key: true|
|preparation_day|integer|null: false, foreign_key: true|
|item_situation|integer|null: false, foreign_key: true|
|user|integer|null: false, foreign_key: true|
|category|integer|null: false, foreign_key: true|
|brand|string||
### Association
- belongs_to :user
- has_many :images
- belongs_to :category
- belongs_to_active_hash :item_condition
- belongs_to_active_hash :postage_payer
- belongs_to_active_hash :preparation_day
- belongs_to_active_hash :prefecture
- belongs_to_active_hash :item_situation
- has_one :order


## reference型を使用
  下記をマイグレーションファイルに追加して作成
  t.references :user, foreign_key: true
  t.references :item_condition, foreign_key: true
  t.references :postage_payer, foreign_key: true
  t.references :prefecture, foreign_key: true
  t.references :preparation_day, foreign_key: true

  ## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|src|text||
|item|integer|null: false, foreign_key: true|
### Association
- belongs_to :item

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string||
### Association
- has_many :items

## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|brand|string|null: false|
### Association
- has_many :items

## item_conditionsテーブル
|Column|Type|Options|
|------|----|-------|
active_hashにて状態を追加
### Association
- has_many :items

## postage_payersテーブル
|Column|Type|Options|
|------|----|-------|
active_hashにて配送負担者を追加
### Association
- has_many :items

## preparation_daysテーブル
|Column|Type|Options|
|------|----|-------|
active_hashにて配送日数を追加
### Association
- has_many :items

## item_situationsテーブル
|Column|Type|Options|
|------|----|-------|
active_hashにて状態を追加
### Association
- has_many :items

## ordersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :item

