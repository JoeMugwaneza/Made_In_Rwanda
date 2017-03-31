CartedProduct.create!([
  {product_id: 34, order_id: 1, quantity: 3},
  {product_id: 36, order_id: 1, quantity: 1},
  {product_id: 34, order_id: 1, quantity: 3},
  {product_id: 34, order_id: 1, quantity: 3},
  {product_id: 36, order_id: 1, quantity: 1},
  {product_id: 34, order_id: 1, quantity: 3},
  {product_id: 34, order_id: 1, quantity: 3},
  {product_id: 36, order_id: 1, quantity: 1},
  {product_id: 34, order_id: 1, quantity: 3},
  {product_id: 34, order_id: 1, quantity: 3},
  {product_id: 36, order_id: 1, quantity: 1},
  {product_id: 34, order_id: 1, quantity: 3},
  {product_id: 34, order_id: 1, quantity: 3},
  {product_id: 36, order_id: 1, quantity: 1},
  {product_id: 34, order_id: 1, quantity: 3},
  {product_id: 34, order_id: 1, quantity: 3},
  {product_id: 36, order_id: 1, quantity: 1},
  {product_id: 34, order_id: 1, quantity: 3},
  {product_id: 34, order_id: 1, quantity: 3},
  {product_id: 36, order_id: 1, quantity: 1},
  {product_id: 34, order_id: 1, quantity: 3},
  {product_id: 17, order_id: 5, quantity: 14},
  {product_id: 21, order_id: 1, quantity: 1},
  {product_id: 21, order_id: 1, quantity: 1},
  {product_id: 21, order_id: 7, quantity: 1},
  {product_id: 18, order_id: 7, quantity: 6},
  {product_id: 21, order_id: 6, quantity: 1},
  {product_id: 22, order_id: 6, quantity: 1},
  {product_id: 21, order_id: 6, quantity: 2},
  {product_id: 21, order_id: 8, quantity: 6},
  {product_id: 22, order_id: 9, quantity: 2},
  {product_id: 18, order_id: 9, quantity: 3},
  {product_id: 22, order_id: 10, quantity: 2},
  {product_id: 21, order_id: 11, quantity: 2},
  {product_id: 18, order_id: 12, quantity: 5},
  {product_id: 23, order_id: 12, quantity: 4},
  {product_id: 18, order_id: 12, quantity: 6},
  {product_id: 21, order_id: 13, quantity: 4},
  {product_id: 34, order_id: 1, quantity: 3},
  {product_id: 36, order_id: 1, quantity: 1},
  {product_id: 34, order_id: 1, quantity: 3},
  {product_id: 18, order_id: 13, quantity: 11},
  {product_id: 19, order_id: 13, quantity: 1},
  {product_id: 34, order_id: 1, quantity: 3},
  {product_id: 36, order_id: 1, quantity: 1},
  {product_id: 34, order_id: 1, quantity: 3}
])
Category.create!([
  {name: "Women's Shoes"},
  {name: "Women's Dresses"},
  {name: "Women's Bag"},
  {name: "Men's Shoes"},
  {name: "T-Shirt"},
  {name: "Arts and Crafts"},
  {name: "styles and fashion"},
  {name: "Agricultural Products"}
])
CategoryProduct.create!([
  {category_id: 7, product_id: 13},
  {category_id: 5, product_id: 14},
  {category_id: 2, product_id: 15},
  {category_id: 6, product_id: 16},
  {category_id: 8, product_id: 17}
])
Comment.create!([
  {name: "Joseph Mugwaneza", body: "skfjndkfjdkfjdkfjd", post_id: 6}
])
Order.create!([
  {user_id: 4, subtotal: nil, tax: nil, total: nil, completed: false},
  {user_id: 4, subtotal: nil, tax: nil, total: nil, completed: false},
  {user_id: 1, subtotal: "0.0", tax: "0.0", total: "0.0", completed: true},
  {user_id: 1, subtotal: nil, tax: nil, total: nil, completed: false},
  {user_id: 2, subtotal: "16800.0", tax: "1512.0", total: "18312.0", completed: true},
  {user_id: 5, subtotal: nil, tax: nil, total: nil, completed: false},
  {user_id: 7, subtotal: "14000.0", tax: "1260.0", total: "15260.0", completed: true},
  {user_id: 7, subtotal: "30000.0", tax: "2700.0", total: "32700.0", completed: true},
  {user_id: 7, subtotal: "28500.0", tax: "2565.0", total: "31065.0", completed: true},
  {user_id: 7, subtotal: "24000.0", tax: "2160.0", total: "26160.0", completed: true},
  {user_id: 7, subtotal: "10000.0", tax: "900.0", total: "10900.0", completed: true},
  {user_id: 7, subtotal: "46500.0", tax: "4185.0", total: "50685.0", completed: true},
  {user_id: 7, subtotal: nil, tax: nil, total: nil, completed: false},
  {user_id: 4, subtotal: nil, tax: nil, total: nil, completed: false},
  {user_id: 4, subtotal: nil, tax: nil, total: nil, completed: false}
])
Post.create!([
  {title: "Unbelievable", body: "The objective of this technique is to provide a long description without requiring the user to jump off to another location for the description. It also allows all users to see the description which may be useful to anyone who might miss some features in the non-text content.\r\n\r\nWith this technique, the long description is provided as part of the standard presentation (i.e., everyone receives it). The description is located near the non-text content but does not have to be the very next item. For example, there may be a caption under a chart with the long description provided in the following paragraph.\r\n\r\nThe location of this long description is then provided within the short text alternative so the user knows where to look for it if they cannot view the non-text content.", user_id: 1},
  {title: "Send a text message", body: "With the Google Voice website and apps, you can text people messages and photos and send texts to groups of people.\r\n\r\nIf you send a text longer than 160 characters to a non-Google Voice number, it will be sent as multiple messages.\r\n\r\nNote: You can't send texts to five- or six-digit “short code” numbers.\r\n\r\n    On your computer, open Google Voice.\r\n    Open the tab for Messages Messages tab.\r\n    At the top, click Send a message.\r\n    Enter a contact’s name or phone number.\r\n        To create a group text message, add up to 30 names or phone numbers.\r\n    At the bottom, enter your message, and click Send Send.\r\n\r\nTo include an image with your message, click Select image Choose image. If your image is bigger than 2MB, it'll be sent as a smaller file. But GIFs over 2MB won't send.", user_id: nil},
  {title: "Reply to a text message", body: "\r\n    On your computer, open Google Voice.\r\n    Open the tab for Messages Messages tab.\r\n    Click the text message you want to reply to.\r\n    At the bottom, enter your message, and click Send Send.\r\n\r\nNote: If you have more than one Google Voice number, you can only send texts from your main number. If you get a text to your second number, your reply will be sent from the main one.", user_id: 1},
  {title: "Get a Text Message", body: "You can get text messages from anywhere in the world.\r\n\r\n    On your computer, open Google Voice.\r\n    Open the tab for Messages Messages tab. Messages you haven't read yet are in bold.\r\n\r\nIf you don't see a text that you're expecting, check if it got marked as spam. At the top left, click Menu Menu and then Spam.\r\n\r\nNote: To get text messages from websites, like a bank or subscription service, you'll need to use your mobile carrier number.", user_id: 1},
  {title: "Unbelievable", body: "The objective of this technique is to provide a long description without requiring the user to jump off to another location for the description. It also allows all users to see the description which may be useful to anyone who might miss some features in the non-text content.\r\n\r\nWith this technique, the long description is provided as part of the standard presentation (i.e., everyone receives it). The description is located near the non-text content but does not have to be the very next item. For example, there may be a caption under a chart with the long description provided in the following paragraph.\r\n\r\nThe location of this long description is then provided within the short text alternative so the user knows where to look for it if they cannot view the non-text content.", user_id: 1},
  {title: "Send a text message", body: "With the Google Voice website and apps, you can text people messages and photos and send texts to groups of people.\r\n\r\nIf you send a text longer than 160 characters to a non-Google Voice number, it will be sent as multiple messages.\r\n\r\nNote: You can't send texts to five- or six-digit “short code” numbers.\r\n\r\n    On your computer, open Google Voice.\r\n    Open the tab for Messages Messages tab.\r\n    At the top, click Send a message.\r\n    Enter a contact’s name or phone number.\r\n        To create a group text message, add up to 30 names or phone numbers.\r\n    At the bottom, enter your message, and click Send Send.\r\n\r\nTo include an image with your message, click Select image Choose image. If your image is bigger than 2MB, it'll be sent as a smaller file. But GIFs over 2MB won't send.", user_id: nil},
  {title: "Reply to a text message", body: "\r\n    On your computer, open Google Voice.\r\n    Open the tab for Messages Messages tab.\r\n    Click the text message you want to reply to.\r\n    At the bottom, enter your message, and click Send Send.\r\n\r\nNote: If you have more than one Google Voice number, you can only send texts from your main number. If you get a text to your second number, your reply will be sent from the main one.", user_id: 1},
  {title: "Get a Text Message", body: "You can get text messages from anywhere in the world.\r\n\r\n    On your computer, open Google Voice.\r\n    Open the tab for Messages Messages tab. Messages you haven't read yet are in bold.\r\n\r\nIf you don't see a text that you're expecting, check if it got marked as spam. At the top left, click Menu Menu and then Spam.\r\n\r\nNote: To get text messages from websites, like a bank or subscription service, you'll need to use your mobile carrier number.", user_id: 1},
  {title: "Unbelievable", body: "The objective of this technique is to provide a long description without requiring the user to jump off to another location for the description. It also allows all users to see the description which may be useful to anyone who might miss some features in the non-text content.\r\n\r\nWith this technique, the long description is provided as part of the standard presentation (i.e., everyone receives it). The description is located near the non-text content but does not have to be the very next item. For example, there may be a caption under a chart with the long description provided in the following paragraph.\r\n\r\nThe location of this long description is then provided within the short text alternative so the user knows where to look for it if they cannot view the non-text content.", user_id: 1},
  {title: "Send a text message", body: "With the Google Voice website and apps, you can text people messages and photos and send texts to groups of people.\r\n\r\nIf you send a text longer than 160 characters to a non-Google Voice number, it will be sent as multiple messages.\r\n\r\nNote: You can't send texts to five- or six-digit “short code” numbers.\r\n\r\n    On your computer, open Google Voice.\r\n    Open the tab for Messages Messages tab.\r\n    At the top, click Send a message.\r\n    Enter a contact’s name or phone number.\r\n        To create a group text message, add up to 30 names or phone numbers.\r\n    At the bottom, enter your message, and click Send Send.\r\n\r\nTo include an image with your message, click Select image Choose image. If your image is bigger than 2MB, it'll be sent as a smaller file. But GIFs over 2MB won't send.", user_id: nil},
  {title: "Reply to a text message", body: "\r\n    On your computer, open Google Voice.\r\n    Open the tab for Messages Messages tab.\r\n    Click the text message you want to reply to.\r\n    At the bottom, enter your message, and click Send Send.\r\n\r\nNote: If you have more than one Google Voice number, you can only send texts from your main number. If you get a text to your second number, your reply will be sent from the main one.", user_id: 1},
  {title: "Get a Text Message", body: "You can get text messages from anywhere in the world.\r\n\r\n    On your computer, open Google Voice.\r\n    Open the tab for Messages Messages tab. Messages you haven't read yet are in bold.\r\n\r\nIf you don't see a text that you're expecting, check if it got marked as spam. At the top left, click Menu Menu and then Spam.\r\n\r\nNote: To get text messages from websites, like a bank or subscription service, you'll need to use your mobile carrier number.", user_id: 1},
  {title: "Unbelievable", body: "The objective of this technique is to provide a long description without requiring the user to jump off to another location for the description. It also allows all users to see the description which may be useful to anyone who might miss some features in the non-text content.\r\n\r\nWith this technique, the long description is provided as part of the standard presentation (i.e., everyone receives it). The description is located near the non-text content but does not have to be the very next item. For example, there may be a caption under a chart with the long description provided in the following paragraph.\r\n\r\nThe location of this long description is then provided within the short text alternative so the user knows where to look for it if they cannot view the non-text content.", user_id: 1},
  {title: "Send a text message", body: "With the Google Voice website and apps, you can text people messages and photos and send texts to groups of people.\r\n\r\nIf you send a text longer than 160 characters to a non-Google Voice number, it will be sent as multiple messages.\r\n\r\nNote: You can't send texts to five- or six-digit “short code” numbers.\r\n\r\n    On your computer, open Google Voice.\r\n    Open the tab for Messages Messages tab.\r\n    At the top, click Send a message.\r\n    Enter a contact’s name or phone number.\r\n        To create a group text message, add up to 30 names or phone numbers.\r\n    At the bottom, enter your message, and click Send Send.\r\n\r\nTo include an image with your message, click Select image Choose image. If your image is bigger than 2MB, it'll be sent as a smaller file. But GIFs over 2MB won't send.", user_id: nil},
  {title: "Reply to a text message", body: "\r\n    On your computer, open Google Voice.\r\n    Open the tab for Messages Messages tab.\r\n    Click the text message you want to reply to.\r\n    At the bottom, enter your message, and click Send Send.\r\n\r\nNote: If you have more than one Google Voice number, you can only send texts from your main number. If you get a text to your second number, your reply will be sent from the main one.", user_id: 1},
  {title: "Get a Text Message", body: "You can get text messages from anywhere in the world.\r\n\r\n    On your computer, open Google Voice.\r\n    Open the tab for Messages Messages tab. Messages you haven't read yet are in bold.\r\n\r\nIf you don't see a text that you're expecting, check if it got marked as spam. At the top left, click Menu Menu and then Spam.\r\n\r\nNote: To get text messages from websites, like a bank or subscription service, you'll need to use your mobile carrier number.", user_id: 1}
])
Product.create!([
  {name: " Leather Sandals", description: "With this type of shoes you can look luxurious. ", price: "7500.0", quantity: 29, seller_profile_id: 4, image_file_name: "_Leather_Sandals.jpg", image_content_type: "image/jpeg", image_file_size: 21915, image_updated_at: "2017-03-28 16:17:50", category_id: 1},
  {name: "Sleeveless T-shirt", description: "Funny and amazing sleeveless t-shirt that is made in rwanda; now we have many in store", price: "1500.0", quantity: 45, seller_profile_id: 1, image_file_name: "funny-sleeveless-t-shirt-made-in-rwanda-shooter-tee-shirt_28278914.jpeg", image_content_type: "image/jpeg", image_file_size: 11512, image_updated_at: "2017-03-26 20:24:35", category_id: 5},
  {name: "Milk Jugs", description: "You can decorate your house at the same time reminding yourself with our culture. Enjoy what we make", price: "3500.0", quantity: 105, seller_profile_id: 4, image_file_name: "african-milk-jugs-rwanda-300x300.png", image_content_type: "image/png", image_file_size: 200863, image_updated_at: "2017-03-26 20:30:11", category_id: 6},
  {name: "Summer Dress", description: "This is good for you in hot season. It is a sleeveless dress", price: "5000.0", quantity: 27, seller_profile_id: 4, image_file_name: "dress-summer-indigo.jpg", image_content_type: "image/jpeg", image_file_size: 74771, image_updated_at: "2017-03-26 20:30:51", category_id: 2},
  {name: "Black T-Shirt", description: "complete and original black ", price: "3000.0", quantity: 59, seller_profile_id: 4, image_file_name: "T-shirt.jpg", image_content_type: "image/jpeg", image_file_size: 4370, image_updated_at: "2017-03-26 20:31:36", category_id: 5},
  {name: "Rwanda pure white Honey", description: "We have natural honey that can do much to your health including helping you to cure different diseases.", price: "1200.0", quantity: 30, seller_profile_id: 4, image_file_name: "rwandan-pure-white-honey-1kg.jpg", image_content_type: "image/jpeg", image_file_size: 36200, image_updated_at: "2017-03-30 08:36:17", category_id: 8},
  {name: "Complete Clothes", description: "You will never miss your size, all we do is to give you what you deserve", price: "17000.0", quantity: 17, seller_profile_id: 1, image_file_name: "Clothes.jpg", image_content_type: "image/jpeg", image_file_size: 18569, image_updated_at: "2017-03-26 20:33:50", category_id: 7},
  {name: "High Hills shoes", description: "Women's long shoes you can where in ceremonies. Try this and tell us later", price: "9000.0", quantity: 30, seller_profile_id: 1, image_file_name: "High_hills.jpg", image_content_type: "image/jpeg", image_file_size: 7093, image_updated_at: "2017-03-26 20:34:30", category_id: 1},
  {name: "Man's Shoes", description: "You can find all your size of this shoes. It looks nice though you can be loved", price: "20000.0", quantity: 14, seller_profile_id: 1, image_file_name: "men's_shoes.jpg", image_content_type: "image/jpeg", image_file_size: 3978, image_updated_at: "2017-03-26 20:35:45", category_id: 4},
  {name: "Agaseke", description: "The beautifully laid crafts display a unique view of Rwandan culture, right from the baskets to bracelets, arm bands, bags paintings, woodcarvings and mats. ", price: "4000.0", quantity: 53, seller_profile_id: 1, image_file_name: "Made_in_rwanda.jpg", image_content_type: "image/jpeg", image_file_size: 93059, image_updated_at: "2017-03-26 20:37:26", category_id: 6},
  {name: "Jersey Frunk", description: "100% Rwanda made clothes. it is weightless yet looking awesome with all types of people. never mind of your size we have all size for that can look nicer to you", price: "6000.0", quantity: 24, seller_profile_id: 1, image_file_name: "Jersey_Frunk.jpg", image_content_type: "image/jpeg", image_file_size: 41754, image_updated_at: "2017-03-26 20:38:28", category_id: 5},
  {name: "Fruit Basket Large", description: "Rwandan culture is rich enough to serve traditionally the needs of population. This basket is beautiful as well as representing how our culture looks like", price: "4000.0", quantity: 89, seller_profile_id: 1, image_file_name: "Fruit_Basket_Large.jpg", image_content_type: "image/jpeg", image_file_size: 11369, image_updated_at: "2017-03-26 20:39:11", category_id: 6},
  {name: "Woman Bag", description: "Carry with you a bag that can support you with smart phone, keys and other material women use to go with", price: "7000.0", quantity: 12, seller_profile_id: 1, image_file_name: "3539613_20151230164522___jpeg6c1829d752f4074ed5585bfa9f2de349", image_content_type: "image/jpeg", image_file_size: 82995, image_updated_at: "2017-03-26 22:37:29", category_id: 3},
  {name: "Brown Designed Sandals", description: "So cool and relaxing especially in sunny season. ", price: "5000.0", quantity: 30, seller_profile_id: 4, image_file_name: "Short_shoes.jpg", image_content_type: "image/jpeg", image_file_size: 33351, image_updated_at: "2017-03-28 15:46:20", category_id: 1},
  {name: "Ladies Patent Leather Flats", description: "You can try it in all official ceremony; wedding, business presentation and all the places you want to look prettier", price: "12000.0", quantity: 19, seller_profile_id: 4, image_file_name: "Ladies_Patent_Leather_Flats.jpg", image_content_type: "image/jpeg", image_file_size: 7827, image_updated_at: "2017-03-28 16:11:22", category_id: 1}
])
SellerProfile.create!([
  {company_name: "Jean luc Abayo", location: "Kimironko", contact: "7683890939039", company_email: "luc.bayo@gmail.com", user_id: 2, street_code: "KG 25 Av", latitude: -1.9298822, longitude: 30.1333898, image_file_name: "round-abstract-shape-logo_23-2147536127.jpg", image_content_type: "image/jpeg", image_file_size: 27526, image_updated_at: "2017-03-25 14:00:00"},
  {company_name: "MadeinRwanda", location: "Zindiro", contact: "0725085564", company_email: "plante@gmail.com", user_id: 3, street_code: "KG 25 Av, Kigali, Rwanda", latitude: -1.9298822, longitude: 30.1333898, image_file_name: "logo.png", image_content_type: "image/png", image_file_size: 6834, image_updated_at: "2017-03-30 11:08:18"}
])
User.create!([
  {first_name: "Joseph", email: "muganezajoseph@gmail.com", password_digest: "$2a$10$m9nHvmHOCkKOX1MvnvLEo.3JbhcSNBlDxLyX3a1Oc5tOoFBO9AJyi", admin: true, last_name: "Mugwaneza"},
  {first_name: "Jean Luc", email: "luc.bayo@gmail.com", password_digest: "$2a$10$qsd9O.36ypX2KAXNbEzzuOPyopIUgKvf2Pbcum2zrq7jcobb1nkNi", admin: nil, last_name: "Abayo"},
  {first_name: "Josh", email: "plante@gmail.com", password_digest: "$2a$10$/ajgcq.MYhAmqkq4PU3eeuF4EhQXAM72gmqrv11bzfoRW761US1we", admin: nil, last_name: "Plante"},
  {first_name: "Eugene", email: "eugene@gmail.com", password_digest: "$2a$10$jo2/Iru3YQWz1G0TgLPnUeNlR27UHwnvt9ShDKM.n5WETb/BhQa0W", admin: nil, last_name: "Niyitanga"},
  {first_name: "Dodo", email: "dodo@gmail.com", password_digest: "$2a$10$Qw5y1L0YE0596wp1RHms8ODmbksmnhfdBdZMItTxYwHstUXKxinBy", admin: nil, last_name: "Mukunzi"},
  {first_name: "Lionel ", email: "lionel@gmail", password_digest: "$2a$10$z234KTeEYajPWk5UOAJjxOxJ0MVz1/QH9vvCL0xKkqzwUdJE3aMdi", admin: nil, last_name: "Kagaba"}
])
