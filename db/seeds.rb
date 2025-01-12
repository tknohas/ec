# Admin.create!(email: 'admin@example.com', password: 'password')
names = %w(にんじん ピーマン 玉ねぎ バナナ アボカド)
prices = [100, 1_000, 10_000, 200, 2_000]
(1..names.length).each do |n|
  Product.create!(
    name: names[n - 1],
    price: prices[n - 1],
    description: '商品説明です。',
    position: n
  )
end
