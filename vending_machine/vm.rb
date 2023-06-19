# ステップ０　お金の投入と払い戻しの例コード
  # ステップ１　扱えないお金の例コード
  # 10円玉、50円玉、100円玉、500円玉、1000円札を１つずつ投入できる。
  MONEY = [10, 50, 100, 500, 1000].freeze
  # （自動販売機に投入された金額をインスタンス変数の @slot_money に代入する）
  def initialize
    # 最初の自動販売機に入っている金額は0円
    puts "いくら入れますか？"
    MONEY.each do |money|
      puts "#{money}"
    end
  input_money = gets.to_i
    @slot_money = input_money
  end
  # 投入金額の総計を取得できる。
  def current_slot_money
    # 自動販売機に入っているお金を表示する
    @slot_money
  end
  # 10円玉、50円玉、100円玉、500円玉、1000円札を１つずつ投入できる。
  # 投入は複数回できる。
  def slot_money(money)
    # 想定外のもの（１円玉や５円玉。千円札以外のお札、そもそもお金じゃないもの（数字以外のもの）など）
    # が投入された場合は、投入金額に加算せず、それをそのまま釣り銭としてユーザに出力する。
    return false unless MONEY.include?(money)
    # 自動販売機にお金を入れる
    @slot_money += money
  end
  # 払い戻し操作を行うと、投入金額の総計を釣り銭として出力する。
  def return_money
    # 返すお金の金額を表示する
    puts @slot_money
    # 自動販売機に入っているお金を0円に戻す
    @slot_money = 0
  end
end
      vm = VendingMachine.new
# ステップ０　お金の投入と払い戻し
# 10円玉、50円玉、100円玉、500円玉、1000円札を１つずつ投入できる。
# 投入は複数回できる。
# 投入金額の総計を取得できる。
# 払い戻し操作を行うと、投入金額の総計を釣り銭として出力する。
# ステップ１　扱えないお金
# 想定外のもの（硬貨：１円玉、５円玉。お札：千円札以外のお札）が投入された場合は、投入金額に加算せず、それをそのまま釣り銭としてユーザに出力する。
# ステップ２　ジュースの管理
# 値段と名前の属性からなるジュースを１種類格納できる。初期状態で、コーラ（値段:120円、名前”コーラ”）を5本格納している。
juice = { name: "コーラ", price: 120, quantity: 5 }
# 格納されているジュースの情報（値段と名前と在庫）を取得できる。
# hash.each do |key, value|
# puts "key: #{key} value: #{value}"
# end
juice.each_with_index do |(key, value), index|
  puts " #{index + 1} #{key} #{value} "
 end
# 注意：責務を持ちすぎていませんか？責任を持ちすぎていたら分割しましょう
# ステップ３　購入
# 投入金額、在庫の点で、コーラが購入できるかどうかを取得できる。
if @slot_money < juice[:price] || juice[:quantity] > 0 # 投入金額が足りない場合もしくは在庫がない場合、購入操作を行っても何もしない。
  puts "購入できません"
  return
end
# if @slot_money >= juice[:price] && juice[:quantity] > 0
# #   # 投入金額が足りない場合、お金を入れる
#   put juice # 購入できるジュースを表示　
#   get juice{#index+1} # ボタンを押す（買うジュースを選ぶ）
# # ジュースの在庫を減らす
# # @slot_moneyから代金を引いて表示する
# # 売り上げ金額を増やす
# # 続けて買いますか？
# else #
#   puts return_money # 買わない場合、お金を返却
# end
# ジュース値段以上の投入金額が投入されている条件下で購入操作を行うと、ジュースの在庫を減らし、売り上げ金額を増やす。
# sales_amount = juice(price*quantity)