import 'package:flutter/material.dart';
import 'package:widgetslayout/account.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text("Home"),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 8,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 5,
          ),
        ],
      ),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=600"),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Dan Brown",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10, right: 25, left: 25),
            child: Text(
              "Best Selling author of the Da Vinci Code and Angels & Demons",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: const [
                    Text(
                      "21",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text("Books")
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: const [
                    Text("4.5",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text("Rating")
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: const [
                    Text("6,000+",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text("Fans")
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, top: 10),
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)))),
                      onPressed: () {},
                      child: const Text("Follow")),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 155, 190, 207),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {
                        Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Account()));
                      },
                      child: const Text(
                        "Share",
                        style:
                            TextStyle(color: Color.fromARGB(255, 61, 101, 134)),
                      )),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
            child: Row(
              children: const [
                Icon(Icons.menu_book),
                Text(
                  "  Books",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: ((context, index) {
                return Column(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        leading: SizedBox(
                          width: 60,
                          height: 50,
                          child: Image(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/7085834/pexels-photo-7085834.jpeg?auto=compress&cs=tinysrgb&w=600"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          "The Da Vinci Code",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                            "The mystery-detective novel resolves around the quest for the..."),
                        trailing: Icon(Icons.star_border_outlined),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        leading: SizedBox(
                          width: 60,
                          height: 50,
                          child: Image(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/5491019/pexels-photo-5491019.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          "Inferno",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                            "The novel fellows Robert Langdon as he tries to solve an ancient..."),
                        trailing: Icon(Icons.star_border_outlined),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        leading: SizedBox(
                          width: 60,
                          height: 50,
                          child: Image(
                            image: NetworkImage(
                                "https://cdn.shopify.com/s/files/1/0285/2821/4050/products/9780063204232.jpg?v=1680233873&width=350"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          "Silent Invasion",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                            "One of the officials on stage who stood in mute horror at a 2020 press...."),
                        trailing: Icon(Icons.star_border_outlined),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        leading: SizedBox(
                          width: 60,
                          height: 50,
                          child: Image(
                            image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkMM7DOxWuDdaSS4_haqVg7m7sgHC4ggrTM4a9rMPhlenqAGIF"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          "Cult Classic",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                            "Crosley, a prolific essayist, has written a novel that combines psychology...."),
                        trailing: Icon(Icons.star_border_outlined),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        leading: SizedBox(
                          width: 60,
                          height: 50,
                          child: Image(
                            image: NetworkImage(
                                "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcSg0TIrE5S3tI2sNqlsmzfTPpfJLoOAsvoD2vFQJBH9GIfVk7cT"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        title: Text(
                          "Digital Fotress",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                            "Digital Fortress is a techno-thriller novel written by Dan Brown..."),
                        trailing: Icon(Icons.star_border_outlined),
                      ),
                    ),
                  ],
                );
              }),
            ),
          )
        ]),
      ),
      bottomNavigationBar: NavigationBar(
        height: 70,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          NavigationDestination(
            icon: Icon(Icons.bookmark_border),
            label: 'Saved',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
