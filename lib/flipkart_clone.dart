import 'package:flutter/material.dart';

class FlipkartClone extends StatelessWidget {
  const FlipkartClone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        elevation: 0.0,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Container(
          height: 50.0,
          width: 100.0,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/Flipkartlogo.png'),
            fit: BoxFit.contain,
          )),
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.0,
          ),
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      bottomSheet: const BottomSheetContainer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchBar(),
            const SizedBox(
              height: 5.0,
            ),
            const MenuStripe(),
            // const SizedBox(
            //   height: 5.0,
            // ),
            const OfferSlider(),
            // SizedBox(
            //   height: 5.0,
            // ),
            Container(
              color: Colors.white,
              child: const Row(
                children: [
                  ItemsCard(),
                  ItemsCard(
                    imageUrl: 'assets/electronics.jpg',
                    offer: 'Min. 60% off',
                  ),
                  ItemsCard(
                    imageUrl: 'assets/mobiles.jpg',
                    offer: 'Min. 30% off',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Discounts for You',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                        color: Colors.white),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40.0,
                      width: 80.0,
                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(12.0)),
                      child: const Center(
                          child: Text(
                        'View all',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      )),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              height: 350.0,
              child: const Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: ItemsCard()),
                        Expanded(
                          child: ItemsCard(
                            imageUrl: 'assets/electronics.jpg',
                            offer: 'Min. 60% off',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: ItemsCard(
                            imageUrl: 'assets/fashion.jpg',
                            offer: 'Min. 60% off',
                          ),
                        ),
                        Expanded(
                            child: ItemsCard(
                          imageUrl: 'assets/Grocery.jpg',
                          offer: 'Min. 20% off',
                        )),
                        Expanded(
                            child: ItemsCard(
                          imageUrl: 'assets/electronics.jpg',
                          offer: 'Min. 60% off',
                        )),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const OfferSlider(),
            Container(
              color: Colors.white,
              child: const Row(
                children: [
                  ItemsCard(),
                  ItemsCard(
                    imageUrl: 'assets/electronics.jpg',
                    offer: 'Min. 60% off',
                  ),
                  ItemsCard(
                    imageUrl: 'assets/mobiles.jpg',
                    offer: 'Min. 30% off',
                  ),
                  // ItemsCard(
                  //   imageUrl: 'assets/appliances.jpg',
                  //   offer: 'Min. 50% off',
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            hintText: 'Search for Products, Brands and New Products..',
            filled: true,
            fillColor: Colors.white,
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            suffixIcon: InkWell(
              onTap: () {},
              child: Container(
                width: 50.0,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.2),
                ),
                child: const Center(
                  child: Icon(
                    Icons.mic,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            )),
      ),
    );
  }
}

class MenuStripe extends StatelessWidget {
  const MenuStripe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      decoration: const BoxDecoration(color: Colors.white),
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 0.6,
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              children: [
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueAccent,
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Text(
                  'All Categories',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13.0),
                )
              ],
            ),
          ),
          const MenuStripeItem(),
          const MenuStripeItem(
            imageUrl: 'mobiles',
            itemLabel: 'Mobiles',
          ),
          const MenuStripeItem(imageUrl: 'appliances', itemLabel: 'Appliences'),
          const MenuStripeItem(
            imageUrl: 'electronics',
            itemLabel: 'Electronics',
          ),
          const MenuStripeItem(
            imageUrl: 'fashion',
            itemLabel: 'Fashion',
          ),
          const MenuStripeItem(
            imageUrl: 'Grocery',
            itemLabel: 'Grocery',
          ),
        ],
      ),
    );
  }
}

class MenuStripeItem extends StatelessWidget {
  final String? imageUrl;
  final String? itemLabel;

  const MenuStripeItem({Key? key, this.imageUrl, this.itemLabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/${imageUrl ?? 'topoffers'}.png'))),
        ),
        Text(
          itemLabel ?? 'Top Offers',
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13.0),
        )
      ],
    );
  }
}

class OfferSlider extends StatelessWidget {
  const OfferSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260.0,
      child: GridView.count(
        crossAxisCount: 1,
        childAspectRatio: 0.62,
        scrollDirection: Axis.horizontal,
        children: const [
          OfferSliderItem(),
          OfferSliderItem(),
          OfferSliderItem(),
          OfferSliderItem(),
        ],
      ),
    );
  }
}

class OfferSliderItem extends StatelessWidget {
  final String? imageUrl;
  final String? offerLabel;
  final String? offerPercentage;
  const OfferSliderItem(
      {Key? key, this.imageUrl, this.offerLabel, this.offerPercentage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.network(imageUrl ??
                            'https://images.unsplash.com/photo-1522198734915-76c764a8454d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80')
                        .image,
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(35.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  offerLabel ??
                      'Computer Bestsellers \n Laptops, Printers, Monitors',
                  style: const TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  height: 30.0,
                  width: 100.0,
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                  ),
                  child: Center(
                      child: Text(
                    offerPercentage ?? '30-75% OFF',
                    style: const TextStyle(fontWeight: FontWeight.w500),
                  )),
                ),
                const SizedBox(
                  height: 70.0,
                ),
                Container(
                    color: Colors.yellow,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'No Cost EMI Durability Certified',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ItemsCard extends StatelessWidget {
  final String? imageUrl;
  final String? offer;
  const ItemsCard({Key? key, this.imageUrl, this.offer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 160.0,
        width: 120,
        decoration: BoxDecoration(
          color: Colors.blueAccent.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 120.0,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage(imageUrl ?? 'assets/appliances.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 20.0,
                  width: 100.0,
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                  ),
                  child: Center(
                    child: Text(
                      offer ?? 'Min. 50% off',
                      style: const TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 13.0),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Icon(
            Icons.shop_rounded,
            color: Colors.blueAccent,
          ),
          const Icon(
            Icons.polymer,
            color: Colors.blueAccent,
          ),
          Container(
              decoration: BoxDecoration(
                color: Colors.grey[700],
                shape: BoxShape.circle,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.grid_view,
                  color: Colors.white,
                ),
              )),
          const Icon(
            Icons.video_call,
            color: Colors.blueAccent,
          ),
          const Icon(
            Icons.videogame_asset,
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
