import 'package:flutter/material.dart';
import 'package:instagram_clone_ui/model/avatar/avatar.dart';
import 'package:instagram_clone_ui/model/avatar/image_avatar.dart';
import 'package:instagram_clone_ui/repository/avatar_repository.dart';

class InstagramClonePage extends StatefulWidget {
  const InstagramClonePage({Key? key}) : super(key: key);

  @override
  State<InstagramClonePage> createState() => _InstagramClonePageState();
}

class _InstagramClonePageState extends State<InstagramClonePage> {
  List<Avatar> feed = [];

  @override
  void setState(VoidCallback fn) async {
    feed = await AvatarRepository().findAll();
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              const Text(
                'Instagram',
                style: TextStyle(
                  fontFamily: 'Frontspring',
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/more.png',
                    color: Colors.white,
                    width: 20,
                    height: 20,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/heart.png',
                    color: Colors.white,
                    width: 20,
                    height: 20,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/icons/chat.png',
                    color: Colors.white,
                    width: 20,
                    height: 20,
                  )),
            ],
          ),
          ListView(
            physics: const AlwaysScrollableScrollPhysics(),
            // scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            children: [
              Row(
                children: const [
                  ImageAvatar(
                    urlImage:
                        'https://ovicio.com.br/wp-content/uploads/2021/07/20210712-one-piece-zoro-wano-postcover-555x555.jpg',
                    live: true,
                    visto: false,
                  ),
                  ImageAvatar(
                    urlImage: 'https://i.pinimg.com/564x/b2/79/92/b27992199b45e0384cb8606977581a75.jpg',
                    live: false,
                    visto: false,
                  ),
                  ImageAvatar(
                    urlImage: 'https://cdns-images.dzcdn.net/images/cover/cf408a04d2abfd13e98df96eabfd3dbe/500x500.jpg',
                    live: false,
                    visto: false,
                  ),
                  ImageAvatar(
                    urlImage:
                        'https://criticalhits.com.br/wp-content/uploads/2021/12/one-piece-sanji-1102394-1280x0-1-2.jpeg',
                    live: false,
                    visto: false,
                  ),
                  ImageAvatar(
                    urlImage:
                        'https://www.einerd.com.br/wp-content/uploads/2021/09/one-piece-usopp-e1631106248403-890x464.jpg',
                    live: false,
                    visto: false,
                  ),
                  ImageAvatar(
                    urlImage: 'https://sm.ign.com/ign_br/screenshot/default/blob_n8g8.jpg',
                    live: false,
                    visto: false,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
