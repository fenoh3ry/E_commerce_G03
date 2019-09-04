require 'faker'
Item.destroy_all
User.destroy_all
Cart.destroy_all
JoinTableCartItem.destroy_all
Order.destroy_all
JoinTableOrderItem.destroy_all

cat_pic = ["https://img.ohmymag.com/article/480/race/chaton-bengal_e73c9a5da202b0d7cb40770b0d970dff926d9c98.jpg",

            "https://images-na.ssl-images-amazon.com/images/I/41qhm4UW5bL._SX331_BO1,204,203,200_.jpg",

            "https://jardinage.lemonde.fr/images/dossiers/2018-09/chaton-150204.jpg",

            "https://i.pinimg.com/originals/85/68/c6/8568c6cbf351f4f78e1c820683776756.jpg",

            "https://fac.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2FFAC.2Fvar.2Ffemmeactuelle.2Fstorage.2Fimages.2Fanimaux.2Fanimaux-pratique.2Fon-craque-pour-les-chatons-23939.2F13627116-1-fre-FR.2Fon-craque-pour-les-chatons.2Ejpg/748x372/quality/90/crop-from/center/on-craque-pour-les-chatons.jpeg",

            "https://i.ytimg.com/vi/HPIWXIY2tRE/hqdefault.jpg",

            "https://images.ctfassets.net/ptmn2o3bpcps/6f6AQ8Q69aqc0cUGIW4CAi/f693ddd8f0cb009f2f0eadcb66fa60f1/Cat_Kitten_DF_1000x1000.jpg?fm=jpg&fl=progressive&w=280&q=85",

            "https://www.catapart.fr/7499-large_default/ou-adopter-chat-ou-chaton.jpg",

            "https://associationlisa.org/wp-content/uploads/2018/07/chaton-yeux-fermes.jpg",

            "http://www.animoz.net/photos_annonces/5d6bd2b37af5b_annonce_list_photo_5d6bd60aeae82.jpg",

            "https://www.woopets.fr/assets/img/006/222/categorie-mobile/accueillir-chaton-domicile.jpg",

            "https://resize.programme-television.ladmedia.fr/r/670,670/img/var/premiere/storage/images/tele-7-jours/news-tv/replay-une-vie-de-chaton-france-5-le-documentaire-qui-a-attendri-1-8-million-de-telespectateurs-4510727/91471517-1-fre-FR/REPLAY-Une-vie-de-chaton-France-5-Le-documentaire-qui-a-attendri-1.8-million-de-telespectateurs.jpg",

            "https://www.muramur.ca/image/policy:1.1654938:1455490943/Chaton-debout.jpg?w=490&$p$w=7dfb48c",

            "https://p0.storage.canalblog.com/07/46/1454576/110758278.jpg",

            "http://user-images.strikinglycdn.com/res/hrscywv4p/image/upload/c_limit,fl_lossy,h_9000,w_1200,f_auto,q_auto/1129179/chaton-gris_m6a7db.jpg",

            "https://marieclaire.be/fr/wp-content/uploads/2016/07/chatons-marie-claire.jpg",

            "https://cvlaval.com/sites/default/files/carousel/chat-1.jpg",

            "https://paguyane.com/wp-content/uploads/2018/02/chaton.jpg",

            "https://static.wixstatic.com/media/9a208d_8328bb1c34144c28a5736fdf3b834619~mv2_d_1812_1388_s_2.jpg/v1/fill/w_466,h_644,al_c,q_80,usm_0.66_1.00_0.01/9a208d_8328bb1c34144c28a5736fdf3b834619~mv2_d_1812_1388_s_2.webp"]

    

    for image in (0..cat_pic.length - 1)

        Item.create(title: Faker::Creature::Cat.name,

                    description: Faker::Creature::Cat.breed,

                    price: Faker::Commerce.price(range: 0..10.0, as_string: true),

                    image_url: cat_pic[image]

                    )

    end

puts "20 seed for item created succesfully with 4 attributs"

    10.times do

        User.create(email: Faker::Internet.email,

                    password: "123456789")

    end

puts "10 seed for user created succesfully with 2 attributs"

    for user in (1..10)

        Cart.create(user_id: user)

    end

puts "10 seed for Cart created succesfully with attribut user_id "

    20.times do

        JoinTableCartItem.create(cart_id: rand(1..10),

                                item_id: rand(1..20))

    end

puts "20 seed for JoinTableCartItem created succesfully with 2 attributs"

    for user in (1..10)

        Order.create(user_id: user)

    end

puts "10 seed for Order created succesfully with attribut user_id "

    20.times do

        JoinTableOrderItem.create(order_id: rand(1..10),

                                item_id: rand(1..20))

    end

puts "20 seed for JoinTableOrderItem created succesfully with 2 attributs"

