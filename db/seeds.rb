lady = Category.create(name: "レディース")

lady_tops = lady.children.create(name: "トップス")
lady_jacket = lady.children.create(name: "ジャケット/アウター")
lady_pants = lady.children.create(name: "パンツ")
lady_skirt = lady.children.create(name: "スカート")
lady_onePiece = lady.children.create(name: "ワンピース")
lady_shoes = lady.children.create(name: "靴")
lady_roomWear = lady.children.create(name: "ルームウェア/パジャマ")
lady_legWear = lady.children.create(name: "レッグウェア")
lady_hat = lady.children.create(name: "帽子")
lady_bag = lady.children.create(name: "バッグ")
lady_accessories = lady.children.create(name: "アクセサリー")
lady_hairAccessories = lady.children.create(name: "ヘアアクセサリー")
lady_komono = lady.children.create(name: "小物")
lady_watch = lady.children.create(name: "時計")
lady_wig = lady.children.create(name: "ウィッグ/エクステ")
lady_swimWear = lady.children.create(name: "浴衣/水着")
lady_formal = lady.children.create(name: "スーツ/フォーマル/ドレス")
lady_maternity = lady.children.create(name: "マタニティ")
lady_other = lady.children.create(name: "その他")

lady_tops.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"}, {name: "シャツ/ブラウス(半袖/袖なし)"},
                           {name: "シャツ/ブラウス(半袖/袖なし)"}, {name: "シャツ/ブラウス(七分/長袖)"},{name: "ポロシャツ"},
                           {name: "キャミソール"}, {name: "タンクトップ"},{name: "ホルターネック"},
                           {name: "ニット/セーター"}, {name: "チュニック"},{name: "カーディガン/ボレロ"},
                           {name: "アンサンブル"}, {name: "ベスト/ジレ"},{name: "パーカー"},
                           {name: "トレーナー/スウェット"}, {name: "ペアトップ/チューブトップ"},{name: "ジャージ"},
                           {name: "その他"}])
lady_jacket.children.create([{name: "テラードジャケット"}, {name: "ノーカラージャケット"}, {name: "Gジャン/デニムジャケット"},{name: "レザージャケット"},
                             {name: "ダウンジャケット"}, {name: "ライダースジャケット"}, {name: "ミリタリージャケット"}, {name: "ダウンベスト"},
                             {name: "ジャンパー/ブルゾン"}, {name: "ポンチョ"}, {name: "ロングコート"}, {name: "トレンチコート"},
                             {name: "ダッフルコート"}, {name: "ピーコート"}, {name: "チェスターコート"}, {name: "モッズコート"},
                             {name: "スタジャン"}, {name: "毛皮/ファーコート"}, {name: "スプリングコート"}, {name: "スカジャン"},
                             {name: "その他"}])
lady_pants.children.create([{name: "デニム/ジーンズ"}, {name: "ショートパンツ"}, {name: "カジュアルパンツ"},{name: "ハーフパンツ"},
                            {name: "チノパン"}, {name: "ワークパンツ/カーゴパンツ"}, {name: "クロップドパンツ"},{name: "サロペット/オーバーオール"},
                            {name: "オールインワン"}, {name: "サルエルパンツ"}, {name: "ガウチョパンツ"},{name: "その他"}])
lady_skirt.children.create([{name: "ミニスカート"}, {name: "ひざ丈スカート"}, {name: "ロングスカート"},{name: "キュロット"},
                            {name: "その他"}])
lady_onePiece.children.create([{name: "ミニワンピース"}, {name: "ひざ丈ワンピース"}, {name: "ロングワンピース"},{name: "その他"}])
lady_shoes.children.create([{name: "ハイヒール/パンプス"}, {name: "ブーツ"}, {name: "サンダル"},{name: "スニーカー"},
                            {name: "ミュール"}, {name: "モカシン"}, {name: "ローファー/革靴"},{name: "フラットシューズ/バレエシューズ"},
                            {name: "長靴/レインシューズ"}, {name: "その他"}])
lady_roomWear.children.create([{name: "パジャマ"}, {name: "ルームウェア"}])
lady_legWear.children.create([{name: "ソックス"}, {name: "スパッツ/レギンス"}, {name: "ストッキング/タイツ"},{name: "その他"}])
lady_hat.children.create([{name: "ニットキャップ/ビーニー"}, {name: "ハット"}, {name: "ハンチング/ベレー帽"},{name: "キャップ"},
                          {name: "キャスケット"}, {name: "麦わら帽子"}, {name: "その他"}])
lady_bag.children.create([{name: "ハンドバッグ"}, {name: "トートバッグ"}, {name: "エコバッグ"},{name: "リュック/バックパック"},
                          {name: "ボストンバッグ"}, {name: "スポーツバッグ"}, {name: "ショルダーバッグ"},{name: "クラッチバッグ"},
                          {name: "ポーチ/バニティ"}, {name: "ボディバッグ/ウェストバッグ"}, {name: "マザーズバッグ"},{name: "メッセンジャーバッグ"},
                          {name: "ビジネスバッグ"}, {name: "旅行用バッグ/キャリーバッグ"}, {name: "ショップ袋"},{name: "和装用バッグ"},
                          {name: "かごバッグ"}, {name: "その他"}])
lady_accessories.children.create([{name: "ネックレス"}, {name: "ブレスレット"}, {name: "バングル/リストバンド"},{name: "リング"},
                                  {name: "ピアス(片耳用)"}, {name: "ピアス(両耳用)"}, {name: "イヤリング"},{name: "アンクレット"},
                                  {name: "ブローチ/コサージュ"}, {name: "チャーム"}, {name: "その他"}])
lady_hairAccessories.children.create([{name: "ヘアゴム/シュシュ"}, {name: "ヘアバンド/カチューシャ"}, {name: "ヘアピン"},{name: "その他"}])
lady_komono.children.create([{name: "長財布"}, {name: "折り財布"}, {name: "コインケース/小銭入れ"},{name: "名刺入れ/定期入れ"},
                             {name: "キーケース"}, {name: "キーホルダー"}, {name: "手袋/アームカバー"},{name: "ハンカチ"},
                             {name: "ベルト"}, {name: "マフラー/ショール"}, {name: "ストール/スヌード"},{name: "バンダナ/スカーフ"},
                             {name: "ネックウォーマー"}, {name: "サスペンダー"}, {name: "サングラス/メガネ"},{name: "モバイルケース/カバー"},
                             {name: "手帳"}, {name: "イヤマフラー"}, {name: "傘"},{name: "レインコート"},
                             {name: "ミラー"}, {name: "タバコグッズ"}, {name: "その他"}])
lady_watch.children.create([{name: "腕時計(アナログ)"}, {name: "腕時計(デジタル)"}, {name: "ラバーベルト"},{name: "レザーベルト"},
                            {name: "金属ベルト"}, {name: "その他"}])
lady_wig.children.create([{name: "前髪ウィッグ"}, {name: "ロングストレート"}, {name: "ロングカール"},{name: "ショートストレート"},
                          {name: "ショートカール"}, {name: "その他"}])
lady_swimWear.children.create([{name: "浴衣"}, {name: "着物"}, {name: "振袖"},{name: "長襦袢/半襦袢"},
                             {name: "水着セパレート"}, {name: "水着ワンピース"}, {name: "水着スポーツ用"},{name: "その他"}])
lady_formal.children.create([{name: "スカートスーツ上下"}, {name: "パンツスーツ上下"}, {name: "ドレス"},{name: "パーディーバッグ"},
                             {name: "シューズ"}, {name: "ウェディング"}, {name: "その他"}])
lady_maternity.children.create([{name: "トップス"}, {name: "アウター"}, {name: "インナー"},{name: "ワンピース"},
                                {name: "パンツ/スパッツ"}, {name: "スカート"}, {name: "パジャマ"},{name: "授乳服"},
                                {name: "その他"}])
lady_other.children.create([{name: "コスプレ"}, {name: "下着"}, {name: "その他"}])
lady.save






men = Category.create(name: "メンズ")

men_tops = men.children.create(name: "トップス")
men_jacket = men.children.create(name: "ジャケット/アウター")
men_pants = men.children.create(name: "パンツ")
men_shoes = men.children.create(name: "靴")
men_bag = men.children.create(name: "バッグ")
men_formal = men.children.create(name: "スーツ")
men_hat = men.children.create(name: "帽子")
men_accessories = men.children.create(name: "アクセサリー")
men_komono = men.children.create(name: "小物")
men_watch = men.children.create(name: "時計")
men_swimWear = men.children.create(name: "水着")
men_legWear = men.children.create(name: "レッグウェア")
men_underWear = men.children.create(name: "アンダーウェア")
men_other = men.children.create(name: "その他")

men_tops.children.create([{name: "Tシャツ/カットソー(半袖/袖なし)"}, {name: "Tシャツ/カットソー(七分/長袖)"}, {name: "シャツ"},
                          {name: "ポロシャツ"}, {name: "タンクトップ"},{name: "ニット/セーター"}, {name: "パーカー"},
                          {name: "カーディガン"}, {name: "スウェット"},{name: "ジャージ"},{name: "ベスト"},
                          {name: "その他"}])
men_jacket.children.create([{name: "テラードジャケット"}, {name: "ノーカラージャケット"}, {name: "Gジャン/デニムジャケット"},{name: "レザージャケット"},
                           {name: "ダウンジャケット"}, {name: "ライダースジャケット"}, {name: "ミリタリージャケット"}, {name: "ナイロンジャケット"},
                           {name: "フライトジャケット"}, {name: "トレンチコート"}, {name: "ピーコート"}, {name: "ステンカラーコート"},
                           {name: "モッズコート"},{name: "チェスターコート"}, {name: "スタジャン"}, {name: "スカジャン"},
                           {name: "ブルゾン"},{name: "マウンテンパーカー"},{name: "ダウンベスト"}, {name: "ポンチョ"},
                           {name: "カバーオール"},{name: "その他"}])
men_pants.children.create([{name: "デニム/ジーンズ"}, {name: "ワークパンツ/カーゴパンツ"}, {name: "スラックス"}, {name: "チノパン"},
                           {name: "ショートパンツ"}, {name: "ペインターパンツ"}, {name: "サルエルパンツ"}, {name: "オーバーオール"},
                           {name: "その他"}])
men_shoes.children.create([{name: "スニーカー"}, {name: "サンダル"}, {name: "ブーツ"}, {name: "モカシン"},
                           {name: "ドレス/ビジネス"}, {name: "長靴/レインシューズ"}, {name: "デッキシューズ"}, {name: "その他"}])
men_bag.children.create([{name: "ショルダーバッグ"}, {name: "トートバッグ"}, {name: "ボストンバッグ"}, {name: "リュック/バックパック"},
                         {name: "ウエストポーチ"}, {name: "ボディーバッグ"}, {name: "ドラムバッグ"}, {name: "ビジネスバッグ"},
                         {name: "トラベルバッグ"}, {name: "メッセンジャーバッグ"}, {name: "エコバッグ"}, {name: "その他"}])
men_formal.children.create([{name: "スーツジャケット"}, {name: "スーツベスト"}, {name: "スラックス"}, {name: "セットアップ"},
                            {name: "その他"}])
men_hat.children.create([{name: "キャップ"}, {name: "ハット"}, {name: "ニットキャップ/ビーニー"}, {name: "ハンチング/ベレー帽"},
                         {name: "キャスケット"}, {name: "サンバイザー"}, {name: "その他"}])
men_accessories.children.create([{name: "ネックレス"}, {name: "ブレスレット"}, {name: "バングル/リストバンド"}, {name: "リング"},
                                 {name: "ピアス(片耳用)"}, {name: "ピアス(両耳用)"}, {name: "アンクレット"}, {name: "その他"}])
men_komono.children.create([{name: "長財布"}, {name: "折り財布"}, {name: "マネークリップ"}, {name: "コインケース/小銭入れ"},
                            {name: "キーケース"}, {name: "キーホルダー"}, {name: "ネクタイ"}, {name: "手袋"},
                            {name: "ハンカチ"}, {name: "べルト"}, {name: "マフラー"}, {name: "ストール"},
                            {name: "バンダナ"}, {name: "ネックウォーマー"}, {name: "サスペンダー"},{name: "ウォレットチェーン"},
                            {name: "サングラス/メガネ"}, {name: "モバイルケース/カバー"}, {name: "手帳"},{name: "ストラップ"},
                            {name: "ネクタイピン"}, {name: "カフリンクス"}, {name: "イヤーマフラー"},{name: "傘"},
                            {name: "レインコート"}, {name: "ミラー"}, {name: "タバコグッズ"},{name: "その他"}])
men_watch.children.create([{name: "腕時計(アナログ)"}, {name: "腕時計(デジタル)"}, {name: "ラバーベルト"}, {name: "レザーベルト"},
                           {name: "金属ベルト"}, {name: "その他"}])
men_swimWear.children.create([{name: "一般水着"}, {name: "スポーツ用"}, {name: "アクセサリー"}, {name: "その他"}])
men_legWear.children.create([{name: "ソックス"}, {name: "レギンス/スパッツ"}, {name: "レッグウォーマー"}, {name: "その他"}])
men_underWear.children.create([{name: "トランクス"}, {name: "ボクサーパンツ"}, {name: "その他"}])
men.save





kid = Category.create(name: "ベビー・キッズ")

kid_gClothes = kid.children.create(name: "ベビー服(女の子用) ~95cm")
kid_bClothes = kid.children.create(name: "ベビー服(男の子用) ~95cm")
kid_gbClothes = kid.children.create(name: "ベビー服(男女兼用) ~95cm")
kid_gClothes = kid.children.create(name: "キッズ服(女の子用) ~100cm")
kid_bClothes = kid.children.create(name: "キッズ服(男の子用) ~100cm")
kid_bgClothes = kid.children.create(name: "キッズ服(男女兼用) ~100cm")
kid_shoes = kid.children.create(name: "キッズ靴")
kid_komono = kid.children.create(name: "子ども用ファッション小物")
kid_toilet = kid.children.create(name: "おむつ/トイレ/バス")
kid_move = kid.children.create(name: "外出/移動用品")
kid_food = kid.children.create(name: "授乳/食事")
kid_furniture = kid.children.create(name: "ベビー家具/寝具/室内用品")
kid_toy = kid.children.create(name: "おもちゃ")
kid_event = kid.children.create(name: "行事/記念品")
kid_other = kid.children.create(name: "その他")

kid_gClothes.children.create([{name: "トップス"}, {name: "アウター"}, {name: "パンツ"}, {name: "スカート"},
                              {name: "ワンピース"}, {name: "ベビードレス"}, {name: "おくるみ"}, {name: "下着/肌着"},
                              {name: "パジャマ"}, {name: "ロンパース"}, {name: "その他"}])
kid_bClothes.children.create([{name: "トップス"}, {name: "アウター"}, {name: "パンツ"}, {name: "スカート"},
                              {name: "ワンピース"}, {name: "ベビードレス"}, {name: "おくるみ"}, {name: "下着/肌着"},
                              {name: "パジャマ"}, {name: "ロンパース"}, {name: "その他"}])
kid_gbClothes.children.create([{name: "トップス"}, {name: "アウター"}, {name: "パンツ"}, {name: "スカート"},
                               {name: "ワンピース"}, {name: "ベビードレス"}, {name: "おくるみ"}, {name: "下着/肌着"},
                               {name: "パジャマ"}, {name: "ロンパース"}, {name: "その他"}])
kid_gClothes.children.create([{name: "コート"}, {name: "ジャケット/上着"}, {name: "トップス(Tシャツ/カットソー)"}, {name: "トップス(トレーナー)"},
                              {name: "トップス(チュニック)"}, {name: "トップス(タンクトップ)"}, {name: "トップス(その他)"}, {name: "スカート"},
                              {name: "パンツ"}, {name: "ワンピース"}, {name: "セットアップ"}, {name: "パジャマ"},
                              {name: "フォーマル/ドレス"}, {name: "和服"}, {name: "浴衣"},{name: "甚平"},
                              {name: "水着"}, {name: "その他"}])
kid_bClothes.children.create([{name: "コート"}, {name: "ジャケット/上着"}, {name: "トップス(Tシャツ/カットソー)"}, {name: "トップス(トレーナー)"},
                              {name: "トップス(その他)"}, {name: "パンツ"}, {name: "セットアップ"}, {name: "パジャマ"},
                              {name: "フォーマル/ドレス"}, {name: "和服"}, {name: "浴衣"},{name: "甚平"},
                              {name: "水着"}, {name: "その他"}])
kid_bgClothes.children.create([{name: "コート"}, {name: "ジャケット/上着"}, {name: "トップス(Tシャツ/カットソー)"}, {name: "トップス(トレーナー)"},
                               {name: "トップス(その他)"}, {name: "ボトムス"}, {name: "パジャマ"},{name: "その他"}])
kid_shoes.children.create([{name: "スニーカー"}, {name: "サンダル"}, {name: "ブーツ"}, {name: "長靴"},
                           {name: "その他"}])
kid_komono.children.create([{name: "靴下/スパッツ"}, {name: "帽子"}, {name: "エプロン"}, {name: "サスペンダー"},
                            {name: "タイツ"}, {name: "ハンカチ"}, {name: "バンダナ"}, {name: "ベルト"},
                            {name: "マフラー"}, {name: "傘"}, {name: "手袋"}, {name: "スタイ"},
                            {name: "バッグ"}, {name: "その他"}])
kid_toilet.children.create([{name: "おむつ用品"}, {name: "おまる/補助便座"}, {name: "トレーニングパンツ"}, {name: "ベビーバス"},
                            {name: "お風呂用品"}, {name: "その他"}])
kid_move.children.create([{name: "ベビーカー"}, {name: "抱っこひも/スリング"}, {name: "チャイルドシート"}, {name: "その他"}])
kid_food.children.create([{name: "ミルク"}, {name: "ベビーフード"}, {name: "ベビー用食器"}, {name: "その他"}])
kid_furniture.children.create([{name: "ベッド"}, {name: "布団/毛布"}, {name: "イス"}, {name: "たんす"},
                               {name: "その他"}])
kid_toy.children.create([{name: "おふろのおもちゃ"}, {name: "がらがら"}, {name: "オルゴール"}, {name: "ベビージム"},
                         {name: "手押し車/カタカタ"}, {name: "知育玩具"}, {name: "その他"}])
kid_event.children.create([{name: "お宮参り用品"}, {name: "お食い初め用品"}, {name: "アルバム"}, {name: "手形/足型"},
                           {name: "その他"}])
kid_other.children.create([{name: "母子手帳用品"}, {name: "その他"}])
kid.save