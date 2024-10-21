import 'package:flutter/material.dart';

class EndSectionProfileWidget extends StatelessWidget {
  const EndSectionProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white,
        ),
        width: 400,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'SOCIALLY',
                          style: TextStyle(fontSize: 32),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    color: Colors.black,
                    'icons/bell.png',
                    scale: 2,
                  ),
                ],
              ),
              Container(
                width: 196,
                height: 196,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                        'imgs/profile/27bb60acdac882d7eea9be49c4e8a04b.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const Text(
                'Alex Strohl',
                style: TextStyle(fontSize: 18),
              ),
              const Row(
                children: [
                  Icon(Icons.arrow_back),
                  Text('Explore'),
                ],
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'imgs/profile_posts/99a457ebe956846d0bcecbcbbb92f6da.png'),
                                          fit: BoxFit.cover,
                                        )),
                                    height: double.infinity,
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'imgs/profile_posts/48398bf3fbd2b57d5d3c0d27aaf7acae.png'),
                                          fit: BoxFit.cover,
                                        )),
                                    height: double.infinity,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'imgs/profile_posts/11d6c775a865f95b312508a7cc64ab3e.gif'),
                                    fit: BoxFit.cover,
                                  )),
                              height: double.infinity,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8)),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'imgs/profile_posts/1c429bd8486469bef9d199763259d66e.gif'),
                                    fit: BoxFit.cover,
                                  )),
                              height: double.infinity,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8)),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'imgs/profile_posts/60038c8c3d7abe82aa54e48278afc8f2.png'),
                                                fit: BoxFit.cover,
                                              )),
                                          height: double.infinity,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 4,
                                      ),
                                      Expanded(
                                        child: Container(
                                          decoration: const BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(8)),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'imgs/profile_posts/a32c456c9843e4824aa30fc68ed61fa6.png'),
                                                fit: BoxFit.cover,
                                              )),
                                          height: double.infinity,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8)),
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'imgs/profile_posts/dbb7216c9b52db3d6e8e09cef603db56.png'),
                                          fit: BoxFit.cover,
                                        )),
                                    height: double.infinity,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
