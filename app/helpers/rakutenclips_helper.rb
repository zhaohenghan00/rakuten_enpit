module RakutenclipsHelper
  def search_items(item_code)
    dummy_items
  end

  def dummy_items
    item1 = { itemName: "３．５チャンネルヘリコプター", 
              imageUrl: "https://thumbnail.image.rakuten.co.jp/@0_mall/show-by-ya/cabinet/03157564/imgrc0065878024.jpg?_ex=200x200&s=0&r=1", 
              itemCaption: "初心者に最適なジャイロ搭載3.5ch、墜落しても壊れにくい素材でどんどん飛ばそう！便利なコントローラ充電とＵＳＢ充電・ラジコン ヘリコプター 室内ラジコンヘリ日本語説明書付（ブルー）",  
              itemPrice: 25000}
    item2 = { itemName: "（国産金魚）オタマ金魚ミックス（１０匹）", 
              imageUrl: "https://thumbnail.image.rakuten.co.jp/@0_mall/chanet/cabinet/1503/149869-1.jpg", 
              itemCaption: "生産者による選別漏れの為、ヒレの曲がりや若干難のある個体も含まれますが、色彩や体型のバラエティが豊富で、大変お買い得なセットです。体型、色彩を考慮のうえ出荷致しますが、在庫状況により偏りが生じる場合が御座います。ヒレ裂けがある個体も出荷対象となります、予めご了承の上お買い求め下さい。",  
              itemPrice: 1700}
    item3 = { itemName: "ホームベーカリー", 
              imageUrl: "https://thumbnail.image.rakuten.co.jp/@0_mall/biccamera/cabinet/product/0315/00000001552234_a01.jpg?_ex=250x250&s=0&r=1", 
              itemCaption: "インバーターモーター搭載のもちつきベーカリー登場！
充実の40メニュー搭載の、たっぷり2斤タイプ。",  
              itemPrice: 21830}

    @items = [item1, item2, item3]
  end

  def dummy_item
    dummy_items
    @item = @items.first
  end

end
