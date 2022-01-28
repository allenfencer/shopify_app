class Item{
  final int? id;
  final String? name;
  final String? description;
  final int? price;
  final String? imageUrl;

  Item({this.id, this.name, this.description, this.price, this.imageUrl});
}



class CatalogList{
  static final items=[
    Item(id: 1,name: 'IPhone 12 Pro',description: 'IPhone 12 Pro, Midnight Blue, 256 GB',price: 1299,imageUrl: 'https://cdn.sharafdg.com/cdn-cgi/image/width=600,height=600,fit=pad/assets/e/c/d/e/ecde15a8ca4e4fbb1bdb2d3c4abe8f6a444cdf06_iPhone_12_Pro_PacificBlue_5G_PDP_Image_Position_2_EN.jpg'),
    Item(id: 2,name: 'Google Pixel 5',description: 'Google Pixel 5, Black, 128GB',price: 899,imageUrl: 'https://i2.wp.com/9to5google.com/wp-content/uploads/sites/4/2020/09/Eir8KvGX0AA8ntx.png?ssl=1'),
    Item(id: 3,name: 'Samsung Galaxy S21',description: 'Samsung Galaxy S21, Glossy Purple, 512GB',price: 1099,imageUrl: 'https://images.samsung.com/is/image/samsung/p6pim/in/galaxy-s21/gallery/in-galaxy-s21-5g-g991-371114-371114-sm-g991bzvdinu-368339376?'),
    Item(id: 4,name: 'OnePlus 9',description: 'OnePlus 9, Purple, 256GB',price: 899,imageUrl: 'https://oasis.opstatics.com/content/dam/oasis/page/2021/9-series/spec-image/9/Wintermist_2080a_euna.png'),
    Item(id: 5,name: 'OnePlus 9 Pro',description: 'OnePlus 9 Pro, Green, 256GB',price: 1099,imageUrl: 'https://oasis.opstatics.com/content/dam/oasis/page/2021/9-series/spec-image/9-pro/Pine%20green-gallery..png'),
    Item(id: 6,name: 'Xiaomi Mi 11 Ultra',description: 'Xiaomi Mi 11 Ultra, Space Black, 512GB',price: 1299,imageUrl: 'https://themayanagari.com/wp-content/uploads/2021/04/Xiaomi-Mi-11-Ultra-2.png'),
    Item(id: 7,name: 'Macbook Pro M1',description: 'Macbook Pro M1 13 inch,Space Grey, 512 SSD',price: 1699,imageUrl: 'https://photos5.appleinsider.com/price_guide/m1-macbook-pro-pp-header.png'),
    Item(id: 9,name: 'IPad Pro',description: 'IPad pro, Silver, 128GB',price: 999,imageUrl: 'https://www.ispecialist.com.my/wp-content/uploads/2020/01/ipad-pro-11-select-cell-spacegray-201810.png'),
    Item(id: 8,name: 'Macbook Pro M1',description: 'Macbook Pro M1 16 inch,Space Grey, 1TB SSD',price: 2099,imageUrl: 'https://images-na.ssl-images-amazon.com/images/G/01/appcore/AMZ_FamilyStripe_MacBook_Pro_16_inch._CB1574281091_.png'),
    Item(id: 10,name: 'Airpods Pro',description: 'Airpods Pro, Black Edition ',price: 599,imageUrl: 'https://cdn.shopify.com/s/files/1/0445/5376/5021/products/f766ada3feef502b65361cb1ee25bb64_800x.png?v=1614944115'),
  ];
}