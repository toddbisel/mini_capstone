# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Supplier.create(name: "Molten Core", email: "Ragnaros@moltencore.com", phone_number: "123.456.1256")

Supplier.create(name: "Sunwell Plateau", email: "Kiljaeden@sunwellplateau.com", phone_number: "678.438.0911")

Supplier.create(name: "Ulduar", email: "Yogg@Ulduar.com", phone_number: "467.299.7534")



product = Product.new(
  name: "Thunderfury, Blessed Blade of the Windseeker",
  price: 1000000,
  description: "Thunderfury, Blessed Blade of the Windseeker is the legendary sword once wielded by Thunderaan, Prince of Air."
  )

product.save

product = Product.new(
  name: "Thori'dal, the Stars' Furyr",
  price: 5000000,
  description: "The legendary bow resonates with the power of the Sunwell. The origins and history of the weapon remain a mystery."
  )

product.save

product = Product.new(
  name: "Val'anyr, Hammer of Ancient Kings",
  price: 10000000,
  description: "Created by the titans themselves, Val'anyr was given to the first Earthen king, Urel Stoneheart. With it, he was to create and give life to the rest of his brethren. Val'anyr was shattered during the first war between the earthen and the iron dwarves. The weapon's remnants were believed lost in the conflict."
  )

product.save

product = Product.new(
  name: "Sulfuras, Hand of Ragnaros",
  price: 70000000,
  description: "Sulfuras is the mighty weapon of Ragnaros the Firelord. The weapon never leaves his grasp. It is composed of flaming red elementium and etched from end to end with intricate runes that seem to move like flowing lava across the weapons surface."
  )

product.save



Image.create!([
  { 
    url: "https://i.ytimg.com/vi/2TGRpvb5Nos/maxresdefault.jpg", product_id: "1"
  },
  {
    url: "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/bfd5f251-4987-4812-ab8d-da8ae166c5a1/d5bii1f-0846702c-662f-4f95-8382-5727b2015106.png/v1/fill/w_900,h_507,q_80,strp/thori_dal__the_stars__fury_by_zajeczyca_d5bii1f-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NTA3IiwicGF0aCI6IlwvZlwvYmZkNWYyNTEtNDk4Ny00ODEyLWFiOGQtZGE4YWUxNjZjNWExXC9kNWJpaTFmLTA4NDY3MDJjLTY2MmYtNGY5NS04MzgyLTU3MjdiMjAxNTEwNi5wbmciLCJ3aWR0aCI6Ijw9OTAwIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmltYWdlLm9wZXJhdGlvbnMiXX0.7u2Kmm1vq5hYtvy0lxQNBPp6CQZUdgsYaPM2DEEEgwY", product_id: "2"
  },
  {
    url: "https://www.digiseller.ru/preview/126187/p1_20521184254567.PNG", product_id: "3"
  },
  {
    url: "https://img-new.cgtrader.com/items/900746/fe53657cd3/sulfuras-hand-of-ragnaros-3d-model-low-poly-obj-mtl-fbx-c4d-ma-mb-stl.jpg", product_id: "4"
  },
  {
    url: "https://img-new.cgtrader.com/items/900746/fe53657cd3/sulfuras-hand-of-ragnaros-3d-model-low-poly-obj-mtl-fbx-c4d-ma-mb-stl.jpg", product_id: "5"
  }
])
