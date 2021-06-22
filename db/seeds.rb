require "open-uri"

Review.destroy_all
Purchase.destroy_all
Discount.destroy_all
Listing.destroy_all
Product.destroy_all
User.destroy_all

# USER

martin = User.create!(email: 'martin@gmail.com', password:'123456')
yanik = User.create!(email: 'yanikm41@gmail.com', password:'123456')
ana = User.create!(email: 'ana@gmail.com', password:'123456')
trini = User.create!(email: 'trini@gmail.com', password:'123456')
nico = User.create!(email: 'nico@gmail.com', password:'123456')
pablo = User.create!(email: 'pablo@gmail.com', password:'123456')
jesus = User.create!(email: 'jesus@gmail.com', password:'123456')
mohamed = User.create!(email: 'mohamed@gmail.com', password:'123456')
carlos = User.create!(email: 'carlos@gmail.com', password:'123456')
pablito = User.create!(email: 'pablito@gmail.com', password:'123456')
# PRODUCT



toilet_paper = Product.create!(
  user: yanik,
  name:'Premium bamboo toilet paper',
  description:"24 rolls of 100 per cent premium bamboo toilet paper",
  material: 'Cork',
  impact: '27,000 trees are cut down daily to make toilet paper. Reel is made from tree-free, 100per cent amboo paper. Zero plastic packaging, even the tape.',
  origin: 'USA'
  )
toilet_paper_1 = URI.open('https://cdn.shopify.com/s/files/1/0035/9468/2435/t/32/assets/product-image-1_568x@2x.progressive.jpg')
toilet_paper.photos.attach(io: toilet_paper_1, filename: 'product-image-1_568x@2x.progressive.jpg', content_type: 'image/jpg')
puts "mat photo attached: #{toilet_paper.photos.attached?}"

toilet_paper_2 = URI.open('https://cdn.shopify.com/s/files/1/0035/9468/2435/t/32/assets/product-image-2_568x@2x.progressive.jpg')
toilet_paper.photos.attach(io: toilet_paper_2, filename: 'product-image-2_568x@2x.progressive.jpg', content_type: 'image/jpg')
puts "toilet_paper photo attached: #{toilet_paper.photos.attached?}"

toilet_paper_3 = URI.open('https://cdn.shopify.com/s/files/1/0035/9468/2435/t/32/assets/product-image-3_568x@2x.progressive.jpg')
toilet_paper.photos.attach(io: toilet_paper_3, filename: 'product-image-3_568x@2x.progressive.jpg', content_type: 'image/jpg')
puts "toilet_paper photo attached: #{toilet_paper.photos.attached?}"

toilet_paper_4 = URI.open('https://cdn.shopify.com/s/files/1/0035/9468/2435/t/32/assets/product-image-4_568x@2x.progressive.jpg')
toilet_paper.photos.attach(io: toilet_paper_4, filename: 'product-image-4_568x@2x.progressive.jpg', content_type: 'image/jpg')
puts "toilet_paper photo attached: #{toilet_paper.photos.attached?}"

toilet_paper_5 = URI.open('https://cdn.shopify.com/s/files/1/0035/9468/2435/files/reel-sustainable.jpg')
toilet_paper.photos.attach(io: toilet_paper_5, filename: '1reel-sustainable.jpg', content_type: 'image/jpg')
puts "toilet_paper photo attached: #{toilet_paper.photos.attached?}"



mat = Product.create!(
  user: yanik,
  name:'Luxury Cork Mat (Unisex)',
  description:'Luxuriant, warm-to-the-touch cork. Gets grippier the more you sweat. Sustainable, microbial, no need for chemical cleaning. Say goodbye to rubber, plastic smelling mats! Quite possibly the last mat you will ever need. Be good to the environment, be good to yourself.',
  material: 'Cork',
  impact: 'Cork is a renewable harvest. No trees are killed. Grown in beautiful Portugal.
',
  origin: 'Portugal'
  )
mat_image_1 = URI.open('https://cdn.shopify.com/s/files/1/0338/7208/5131/products/e_e52f6025-21b6-4957-9975-2fe3c60c8aac_720x.png')
mat.photos.attach(io: mat_image_1, filename: 'e_e52f6025-21b6-4957-9975-2fe3c60c8aac_720x.png', content_type: 'image/jpg')
puts "mat photo attached: #{mat.photos.attached?}"

mat_image_2 = URI.open('https://cdn.shopify.com/s/files/1/0338/7208/5131/products/original_06e89766-d53d-4b60-9078-fa3e333b97f1_720x.png')
mat.photos.attach(io: mat_image_2, filename: 'original_06e89766-d53d-4b60-9078-fa3e333b97f1_720x.png', content_type: 'image/jpg')
puts "mat photo attached: #{mat.photos.attached?}"

mat_image_3 = URI.open('https://cdn.shopify.com/s/files/1/0338/7208/5131/products/IMG_2653edit3_720x.png')
mat.photos.attach(io: mat_image_3, filename: 'products/IMG_2653edit3_720x.png', content_type: 'image/jpg')
puts "mat photo attached: #{mat.photos.attached?}"

mat_image_4 = URI.open('https://cdn.shopify.com/s/files/1/0338/7208/5131/products/A60A97598c_c730f6f2-5a99-45d6-a323-c7e9e48bf92f_720x.jpg')
mat.photos.attach(io: mat_image_4, filename: 'A60A97598c_c730f6f2-5a99-45d6-a323-c7e9e48bf92f_720x.jpg', content_type: 'image/jpg')
puts "mat photo attached: #{mat.photos.attached?}"


mat_image_5 = URI.open('https://cdn.shopify.com/s/files/1/0338/7208/5131/products/1W9A9843ocd_6d00987d-744e-460c-85da-55e9e62a329f_720x.png')
mat.photos.attach(io: mat_image_5, filename: '1W9A9843ocd_6d00987d-744e-460c-85da-55e9e62a329f_720x.png', content_type: 'image/png')
puts "mat photo attached: #{mat.photos.attached?}"

pants = Product.create!(
  user: yanik,
  name:'Yoga Pants Black',
  description:'These yoga pants are made from certified organic bamboo fabric. It has a wide fit, which gives you enough flexibility. These yoga pants are suitable for activities such as yoga (asana), bikram, meditation and pilates.',
  material: 'Organic bamboo',
  impact: 'These yoga pants are sustainably produced under fair working conditions.',
  origin: 'Germany'
  )
pants_image_1 = URI.open('https://yoganic.eu/wp-content/uploads/2016/08/yogabroek-ruim-heren-zwart-eco.jpg')
pants.photos.attach(io: pants_image_1, filename: 'ogabroek-ruim-heren-zwart-eco.jpg', content_type: 'image/jpg')
puts "pants photo attached: #{pants.photos.attached?}"

pants_image_2 = URI.open('https://yoganic.eu/wp-content/uploads/2016/08/yogabroek-ruim-ecologisch-zwart-heren.jpg')
pants.photos.attach(io: pants_image_2, filename: 'yogabroek-ruim-ecologisch-zwart-heren.jpg', content_type: 'image/jpg')
puts "pants photo attached: #{pants.photos.attached?}"

pants_image_3 = URI.open('https://yoganic.eu/wp-content/uploads/2016/08/yogabroek-ruim-heren-bio-zwart.jpg')
pants.photos.attach(io: pants_image_3, filename: 'yogabroek-ruim-heren-bio-zwart.jpg', content_type: 'image/jpg')
puts "pants photo attached: #{pants.photos.attached?}"

pants_image_4 = URI.open('https://yoganic.eu/wp-content/uploads/2016/08/yogabroek-ruim-heren-zwart-eco.jpg')
pants.photos.attach(io: pants_image_4, filename: 'ogabroek-ruim-heren-zwart-eco.jpg', content_type: 'image/jpg')
puts "pants photo attached: #{pants.photos.attached?}"

pants_image_5 = URI.open('https://yoganic.eu/wp-content/uploads/2016/08/yogabroek-ruim-ecologisch-zwart-heren.jpg')
pants.photos.attach(io: pants_image_5, filename: 'yogabroek-ruim-ecologisch-zwart-heren.jpg', content_type: 'image/jpg')
puts "pants photo attached: #{pants.photos.attached?}"


socks = Product.create!(
  user: ana,
  name:'Organic Socks',
  description:'Perfect adaptability to the foot. Embroidered toe cap for increased durability. Two sizes available: 35-40 and 41-46. Adapts to each type of foot',
  material: 'Organic cotton',
  impact: '3.0 km of avoided driving emissions, 140 days of drinking water saved and 238.5 light hours saved.',
  origin: 'Portugal'
  )
socks_image_1 = URI.open('https://cdn.shopify.com/s/files/1/2470/6078/products/par-de-calcetines-minimalistas-largos-minimalism-brand-ecologicos-negros-verdesjpg.jpg?v=1592906298')
socks.photos.attach(io: socks_image_1, filename: 'par-de-calcetines-minimalistas-largos-minimalism-brand-ecologicos-negros-verdesjpg.jpg?v=1592906298', content_type: 'image/jpg')
puts "socks photo attached: #{socks.photos.attached?}"

socks_image_2 = URI.open('https://cdn.shopify.com/s/files/1/2470/6078/products/Socks-Sostenible-Minimalista-Organica-Minimalism-black.jpg?v=1592906298')
socks.photos.attach(io: socks_image_2, filename: 'Socks-Sostenible-Minimalista-Organica-Minimalism-black.jpg?v=1592906298', content_type: 'image/jpg')
puts "socks photo attached: #{socks.photos.attached?}"

socks_image_3 = URI.open('https://cdn.shopify.com/s/files/1/2470/6078/products/Socks-Sostenible-Minimalista-Organica-Minimalism-black-eco_900x.jpg?v=1592906311')
socks.photos.attach(io: socks_image_3, filename: 'Socks-Sostenible-Minimalista-Organica-Minimalism-black-eco_900x.jpg?v=1592906311', content_type: 'image/jpg')
puts "socks photo attached: #{socks.photos.attached?}"



women_t_shirt = Product.create!(
  user: ana,
  name: "Women's Minimalism T-shirt",
  description:'High quality cotton of 180 grams and 100% combed. Easy ironing. Recommended washing at 30°C. Comfort, durability, quality and everyday use',
  material: 'Organic cotton',
  impact: '9.2 km of avoided driving emissions, 323 days of drinking water saved and 376.8 light hours saved.',
  origin: 'Portugal'
  )

women_t_shirt_image_1 = URI.open('https://cdn.shopify.com/s/files/1/2470/6078/products/camiseta-gris-frontal-mujer-minimalism-brand_1080x.jpg?v=1595228539')
women_t_shirt.photos.attach(io: women_t_shirt_image_1, filename: 'camiseta-gris-frontal-mujer-minimalism-brand_1080x.jpg?v=1595228539', content_type: 'image/jpg')
puts "socks photo attached: #{women_t_shirt.photos.attached?}"

women_t_shirt_image_2 = URI.open('https://cdn.shopify.com/s/files/1/2470/6078/products/camiseta-negra-minimalism-brand-sostenible-organica-mujer-fruta_900x.jpg?v=1595929823')
women_t_shirt.photos.attach(io: women_t_shirt_image_2, filename: 'camiseta-negra-minimalism-brand-sostenible-organica-mujer-fruta_900x.jpg?v=1595929823', content_type: 'image/jpg')
puts "socks photo attached: #{women_t_shirt.photos.attached?}"

women_t_shirt_image_3 = URI.open('https://cdn.shopify.com/s/files/1/2470/6078/products/Camiseta-blanca-minimalista-ropa-mujer-organica-sostenible_900x.jpg?v=1595228539')
women_t_shirt.photos.attach(io: women_t_shirt_image_3, filename: 'Camiseta-blanca-minimalista-ropa-mujer-organica-sostenible_900x.jpg?v=1595228539', content_type: 'image/jpg')
puts "socks photo attached: #{women_t_shirt.photos.attached?}"

forks = Product.create!(
  user: pablito,
  name:'Wooden forks',
  description:'Crafted with wook from sustainable forests, this forks can make your picnics in nature as natural as nature itself. Naturaly, it sound good!',
  material: 'Wood',
  impact: 'No oil has been used in the extraction of the raw materirals of this product, fabrication or transportations.',
  origin: 'Nambia'
  )
forks_image = URI.open('https://images-na.ssl-images-amazon.com/images/I/81gkVenBQ0L._AC_SL1500_.jpg')
forks.photos.attach(io: forks_image, filename: '81gkVenBQ0L._AC_SL1500_.jpg', content_type: 'image/jpg')
puts "forks photo attached: #{forks.photos.attached?}"

glasses = Product.create!(
  user: martin,
  name:'Glasses made of recycled bottles',
  description:'Have a clear vision of the future. With sustainable glass, made out of recycled plastic you can give a glance to the benefits of circular fabrication.',
  material: 'Reycled PET',
  impact: 'A trendy yet simple way to reduce the flow of plastic from our economy to the enviroment.',
  origin: 'Bilbao'
  )
glasses_image_1 = URI.open('https://www.theinertia.com/wp-content/uploads/2017/02/norton-point.jpg')
glasses.photos.attach(io: glasses_image_1, filename: 'norton-point.jpg', content_type: 'image/jpg')
glasses_image_2 = URI.open('https://inhabitat.com/wp-content/blogs.dir/1/files/2019/03/9Feb2019_PreciousPlastic_-30main-600x480.jpg')
glasses.photos.attach(io: glasses_image_2, filename: '9Feb2019_PreciousPlastic_-30main-600x480.jpg', content_type: 'image/jpg')
puts "glasses photo attached: #{glasses.photos.attached?}"

bag = Product.create!(
  user: trini,
  name:'Eco bags',
  description:'The bags are crafted with ethics and intentions. An independent nonprofit member of the Fair Trade Federation, the brand’s goal is to make the international marketplace available to fairly paid artisans. Many of the women artisans making these bags work from home and earn a sustainable income for their families. The totes are perfect for days on-the-go, and the overnighters are perfect for an adventurous weekend away.',
  material: 'Plants',
  impact: 'It does not polute as the traditional bags made with plastic',
  origin: ' Quebec '
  )
bag_image = URI.open('https://malababa.imgix.net/media/catalog/product/1/9/19vb073granada_y.jpg')
bag.photos.attach(io: bag_image, filename: '19vb073granada_y.jpg', content_type: 'image/jpg')
puts "bag photo attached: #{bag.photos.attached?}"

sandal = Product.create!(
  user: ana,
  name:'Eco sandals',
  description:'These fair trade beaded leather sandals are lovingly handmade by empowered artisans in East Africa. The Iris Sandals in Champagne add a pop of shimmering metallic to traditional leather flip flops. They are perfect for lazy afternoons sitting in the garden.',
  material: 'Lether',
  impact: 'It reduces the amout of plastic in the sea and in the food!',
  origin: 'East Africa'
  )
sandal_image = URI.open('https://assets.website-files.com/602e0329d354ce64f9277c43/60a6f7d10456ff5fc3e9f708_sustainable-sandals.jpg')
sandal.photos.attach(io: sandal_image, filename: '60a6f7d10456ff5fc3e9f708_sustainable-sandals.jpg', content_type: 'image/jpg')
puts "Sandal photo attached: #{sandal.photos.attached?}"

cup = Product.create!(
  user: yanik,
  name:'Eco Cup',
  description:'This paper cups are resistant and responsible. Because they are made with thin yet strong layers of recycled paper. Restaurants, hotels and bars are switching to paper Eco Cup. They customers love it. And with collective buying you can have them way more cheap. Order today!',
  material: 'Paper and wax',
  impact: 'Every day millons of cups of coffee and tea are served worldwide generating tons of resources that end up in filling lands. Materials that simply go out of the circular economy and are lost forever. THis is the importance of a biodegradable cup. It will vanish leaving no footprint.',
  origin: 'Egypt'
  )

cup_image = URI.open('https://yaffa-cdn.s3.amazonaws.com/yaffadsp/images/dmImage/SourceImage/planet-saver-cup.jpg')
cup.photos.attach(io: cup_image, filename: 'planet-saver-cup.jpg', content_type: 'image/jpg')
puts "Cup photo attached: #{cup.photos.attached?}"

straw = Product.create!(
  user: martin,
  name:'Bamboo straw',
  description:'Easy to clean, reusable bamboo straws. Made from renweable ptantations of bamboo, house of the reservoir of the nices pandas on earth. Help us conserve this wonderfull ecosystem. Place your order soon!',
  material: 'Bamboo',
  impact: 'Positive impact thanks to that the profit obtained with this product is reinvested in the fields of bamboo of the ChinPebece National Park of Vietnam.',
  origin: 'Vietnam'
  )

straw_image_1 = URI.open('https://i.pinimg.com/736x/6f/9a/8b/6f9a8bded893274c17ff9e2e07b69db6.jpg')
straw_image_2 = URI.open('http://sc04.alicdn.com/kf/Hc5516015b0124a8c8b648f07b87df139Y.jpg')
straw.photos.attach(io: straw_image_1, filename: '6f9a8bded893274c17ff9e2e07b69db6.jpg', content_type: 'image/jpg')
straw.photos.attach(io: straw_image_2, filename: 'Hc5516015b0124a8c8b648f07b87df139Y.jpg', content_type: 'image/jpg')

puts "Straw photo attached: #{straw.photos.attached?}"

# trini seeds

swab = Product.create!(
  user: trini,
  name:'Plastic-free Bamboo Cotton Swabs',
  description: "A simple change to make your morning routine more eco friendly. Switch to these zero waste, plastic-free, 100% biodegradable cotton swabs with bamboo stems. Bamboo is the world's fastest naturally-renewing resource which is also inherently anti-microbial, anti-fungal and anti-bacterial.",
  material: 'Biodegradable bamboo, cotton',
  impact: "The average person disposes of 415 cotton swabs a year. Use these bamboo cotton swabs and save our landfills and oceans from unnecessary single-use plastic. Also the packaged is a compostable kraft paper box.",
  origin: 'Barcelona'
  )

swab_image_1 = URI.open('https://cdn.shopify.com/s/files/1/0063/5181/4708/products/bamboo-qtip-cotton-swab_1024x1024.jpg')
swab_image_2 = URI.open('https://cdn.shopify.com/s/files/1/0063/5181/4708/products/plastic-free-bamboo-cotton-swabs-sustainable-beauty_1024x1024.jpg')
swab_image_3 = URI.open('https://cdn.shopify.com/s/files/1/0063/5181/4708/products/plastic-free-bamboo-cotton-swabs-sustainable-bath-beauty_1024x1024.jpg')
swab_image_4 = URI.open('https://cdn.shopify.com/s/files/1/0063/5181/4708/products/plastic-free-bamboo-cotton-swabs-sustainable-bath-beauty-2_1024x1024.jpg')
swab_image_5 = URI.open('https://cdn.shopify.com/s/files/1/0063/5181/4708/products/plastic-free-bamboo-cotton-swabs-sustainable-bath_1024x1024.jpg')
swab.photos.attach(io: swab_image_1, filename: 'bamboo-qtip-cotton-swab_1024x1024.jpg', content_type: 'image/jpg')
swab.photos.attach(io: swab_image_2, filename: 'plastic-free-bamboo-cotton-swabs-sustainable-beauty_1024x1024.jpg', content_type: 'image/jpg')
swab.photos.attach(io: swab_image_3, filename: 'plastic-free-bamboo-cotton-swabs-sustainable-bath-beauty_1024x1024.jpg', content_type: 'image/jpg')
swab.photos.attach(io: swab_image_4, filename: 'plastic-free-bamboo-cotton-swabs-sustainable-bath-beauty-2_1024x1024.jpg', content_type: 'image/jpg')
swab.photos.attach(io: swab_image_5, filename: 'plastic-free-bamboo-cotton-swabs-sustainable-bath_1024x1024.jpg', content_type: 'image/jpg')

puts "Swabs photo attached: #{swab.photos.attached?}"

toothbrush = Product.create!(
  user: trini,
  name:'Bamboo toothbrush | 4 pack',
  description:'Make the change with our bamboo toothbrushes, these are an environment-friendly alternative to a conventional plastic toothbrushes. They are made out of natural moso bamboo, which is one of the fastest growing plants in the world, making it a very sustainable product.',
  material: 'Moso bamboo',
  impact: 'Bamboo is the fastest growing plant on earth. So like grass, when you cut it back, it continues to grow - and fast. It is naturally antibacterial which means that there is no need to use fertilisers or pesticides during its cultivation.',
  origin: 'Indonesia'
  )

toothbrush_image_1 = URI.open('https://cdn.shopify.com/s/files/1/0141/6190/3673/products/goldrickproduct2020-195_900x.jpg')
toothbrush_image_2 = URI.open('https://cdn.shopify.com/s/files/1/0141/6190/3673/products/ToothbrushBamboo_900x.jpg')
toothbrush_image_3 = URI.open('https://cdn.shopify.com/s/files/1/0141/6190/3673/products/Toothbrush_1080x.png')
toothbrush_image_4 = URI.open('https://cdn.shopify.com/s/files/1/0141/6190/3673/products/Toothbrushpackaging_7c481e09-cd8e-40fd-a1d8-9aedca0cc0d1_900x.jpg')
toothbrush_image_5 = URI.open('https://cdn.shopify.com/s/files/1/0141/6190/3673/products/goldrickproduct2020-184_e3a39b1d-8e91-4172-b8f9-27cee99e2f83_900x.jpg')
toothbrush.photos.attach(io: toothbrush_image_1, filename: 'goldrickproduct2020-195_900x.jpg', content_type: 'image/jpg')
toothbrush.photos.attach(io: toothbrush_image_2, filename: 'ToothbrushBamboo_900x.jpg', content_type: 'image/jpg')
toothbrush.photos.attach(io: toothbrush_image_3, filename: 'Toothbrush_1080x.png', content_type: 'image/jpg')
toothbrush.photos.attach(io: toothbrush_image_4, filename: 'Toothbrushpackaging_7c481e09-cd8e-40fd-a1d8-9aedca0cc0d1_900x.jpg', content_type: 'image/jpg')
toothbrush.photos.attach(io: toothbrush_image_5, filename: 'goldrickproduct2020-184_e3a39b1d-8e91-4172-b8f9-27cee99e2f83_900x.jpg', content_type: 'image/jpg')

puts "Toothbrush photo attached: #{toothbrush.photos.attached?}"

# SALE

toilet_paper_sale = Listing.create!(
  stock: 20000,
  max_price: 7,
  min_price: 3,
  end_date: Date.today + 30,
  product: toilet_paper
  )

mat_sale = Listing.create!(
  stock: 500,
  max_price: 100,
  min_price: 70,
  end_date: Date.today + 30,
  product: mat
  )

pants_sale = Listing.create!(
  stock: 1000,
  max_price: 30,
  min_price: 22,
  end_date: Date.today + 30,
  product: pants
  )

toothbrush_sale = Listing.create!(
  stock: 8000,
  max_price: 12,
  min_price: 8,
  end_date: Date.today + 30,
  product: bag
  )

swab_sale = Listing.create!(
  stock: 5000,
  max_price: 8,
  min_price: 6,
  end_date: Date.today + 30,
  product: swab
  )


women_t_shirt_sale = Listing.create!(
  stock: 9800,
  max_price: 17,
  min_price: 15,
  end_date: Date.today + 30,
  product: women_t_shirt
  )


socks_sale = Listing.create!(
  stock: 12000,
  max_price: 9,
  min_price: 6,
  end_date: Date.today + 30,
  product: socks
  )

bag_sale = Listing.create!(
  stock: 7000,
  max_price: 20,
  min_price: 12,
  end_date: Date.today + 30,
  product: bag
  )

sandal_sale = Listing.create!(
  stock: 5000,
  max_price: 10,
  min_price: 7,
  end_date: Date.today + 30,
  product: sandal
  )

cup_sale = Listing.create!(
  stock: 10000,
  max_price: 0.1,
  min_price: 0.05,
  end_date: Date.today + 30,
  product: cup
  )

straw_sale = Listing.create!(
  stock: 7000,
  max_price: 1,
  min_price: 0.7,
  end_date: Date.today + 25,
  product: straw
  )


bag_purchase = Purchase.create!(
  user: pablito,
  listing: bag_sale,
  quantity: 200
  )

sandal_purchase = Purchase.create!(
  user: martin,
  listing: sandal_sale,
  quantity: 200
  )

sandal_purchase = Purchase.create!(
  user: martin,
  listing: sandal_sale,
  quantity: 500
  )

sandal_purchase = Purchase.create!(
  user: martin,
  listing: sandal_sale,
  quantity: 400
  )

sandal_purchase = Purchase.create!(
  user: martin,
  listing: sandal_sale,
  quantity: 450
  )

cup_purchase = Purchase.create!(
  user: mohamed,
  listing: cup_sale,
  quantity: 2000
  )

cup_purchase_2 = Purchase.create!(
  user: martin,
  listing: cup_sale,
  quantity: 1000
  )

straw_purchase = Purchase.create!(
  user: yanik,
  listing: straw_sale,
  quantity: 4000
  )


bag_review = Review.create!(
  purchase: bag_purchase,
  content:'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium nesciunt sint voluptate? Labore sit quos ad nemo consectetur! Quisquam ipsa voluptatum vitae, impedit doloremque libero numquam rem atque minus asperiores.',
  rating: 3
)

sandal_review = Review.create!(
  purchase: sandal_purchase,
  content:'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium nesciunt sint voluptate? Labore sit quos ad nemo consectetur! Quisquam ipsa voluptatum vitae, impedit doloremque libero numquam rem atque minus asperiores.',
  rating: 5
)

cup_review = Review.create!(
  purchase: cup_purchase,
  content:'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium nesciunt sint voluptate? Labore sit quos ad nemo consectetur! Quisquam ipsa voluptatum vitae, impedit doloremque libero numquam rem atque minus asperiores.',
  rating: 5
)

straw_review = Review.create!(
  purchase: straw_purchase,
  content:'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium nesciunt sint voluptate? Labore sit quos ad nemo consectetur! Quisquam ipsa voluptatum vitae, impedit doloremque libero numquam rem atque minus asperiores.',
  rating: 3
  )






puts "Seeding ended"
puts "User created: #{User.count}"
puts "Review created: #{Review.count}"
puts "Purchase created: #{Purchase.count}"
puts "Listing created: #{Listing.count}"
puts "Discount created: #{Discount.count}"
puts "Product created: #{Product.count}"

