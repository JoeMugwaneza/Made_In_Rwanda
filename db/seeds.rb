CartedProduct.create!([
  {product_id: 34, order_id: 1, quantity: 3},
  {product_id: 36, order_id: 1, quantity: 1},
  {product_id: 34, order_id: 1, quantity: 3}
])
Comment.create!([
  {name: "Joseph Mugwaneza", body: "This is awesome", post_id: 11},
  {name: "Plante Josuse", body: "you wrote a wonderful post bro", post_id: 11}
])
Order.create!([
  {user_id: 4, subtotal: nil, tax: nil, total: nil, completed: false}
])
Post.create!([
  {title: "Unbelievable", body: "The objective of this technique is to provide a long description without requiring the user to jump off to another location for the description. It also allows all users to see the description which may be useful to anyone who might miss some features in the non-text content.\r\n\r\nWith this technique, the long description is provided as part of the standard presentation (i.e., everyone receives it). The description is located near the non-text content but does not have to be the very next item. For example, there may be a caption under a chart with the long description provided in the following paragraph.\r\n\r\nThe location of this long description is then provided within the short text alternative so the user knows where to look for it if they cannot view the non-text content.", user_id: 1},
  {title: "Send a text message", body: "With the Google Voice website and apps, you can text people messages and photos and send texts to groups of people.\r\n\r\nIf you send a text longer than 160 characters to a non-Google Voice number, it will be sent as multiple messages.\r\n\r\nNote: You can't send texts to five- or six-digit “short code” numbers.\r\n\r\n    On your computer, open Google Voice.\r\n    Open the tab for Messages Messages tab.\r\n    At the top, click Send a message.\r\n    Enter a contact’s name or phone number.\r\n        To create a group text message, add up to 30 names or phone numbers.\r\n    At the bottom, enter your message, and click Send Send.\r\n\r\nTo include an image with your message, click Select image Choose image. If your image is bigger than 2MB, it'll be sent as a smaller file. But GIFs over 2MB won't send.", user_id: nil},
  {title: "Reply to a text message", body: "\r\n    On your computer, open Google Voice.\r\n    Open the tab for Messages Messages tab.\r\n    Click the text message you want to reply to.\r\n    At the bottom, enter your message, and click Send Send.\r\n\r\nNote: If you have more than one Google Voice number, you can only send texts from your main number. If you get a text to your second number, your reply will be sent from the main one.", user_id: 1},
  {title: "Get a Text Message", body: "You can get text messages from anywhere in the world.\r\n\r\n    On your computer, open Google Voice.\r\n    Open the tab for Messages Messages tab. Messages you haven't read yet are in bold.\r\n\r\nIf you don't see a text that you're expecting, check if it got marked as spam. At the top left, click Menu Menu and then Spam.\r\n\r\nNote: To get text messages from websites, like a bank or subscription service, you'll need to use your mobile carrier number.", user_id: 1}
])
Product.create!([
  {name: "Fruit Basket Large", description: "Rwandan culture is rich enough to serve traditionally the needs of population. This basket is beautiful as well as representing how our culture looks like", price: "4000.0", user_id: 4, image_url: "https://goo.gl/QdeUSn"},
  {name: "Jersey Frunk", description: "100% Rwanda made clothes. it is weightless yet looking awesome with all types of people. never mind of your size we have all size for that can look nicer to you", price: "6000.0", user_id: 4, image_url: "https://goo.gl/UgQjuV"},
  {name: "Agaseke", description: "The beautifully laid crafts display a unique view of Rwandan culture, right from the baskets to bracelets, arm bands, bags paintings, woodcarvings and mats. ", price: "4000.0", user_id: 1, image_url: "https://goo.gl/DlaQEj"},
  {name: "Man's Shoes", description: "You can find all your size of this shoes. It looks nice though you can be loved", price: "20000.0", user_id: 1, image_url: "https://goo.gl/twcuQm"},
  {name: "High Hills shoes", description: "Women's long shoes you can where in ceremonies. Try this and tell us later", price: "9000.0", user_id: 3, image_url: "https://goo.gl/p4EEXu"},
  {name: "Women Bag", description: "Keep everything you wish to go with like phone, keys and other small things you can forget home.", price: "6000.0", user_id: 3, image_url: "https://goo.gl/VZZjRM"}
])
Role.create!([
  {user_id: 4, user_category_id: 2},
  {user_id: 1, user_category_id: 1}
])
UserCategory.create!([
  {user_type: "admin"},
  {user_type: "seller"},
  {user_type: "buyer"}
])
