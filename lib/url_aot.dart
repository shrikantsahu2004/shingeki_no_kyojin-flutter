import 'package:flutter/material.dart';

TextStyle st() => TextStyle(
      fontSize: 15.0,
      color: Colors.white,
    );

class UrlAot {
  String imageUrl = "https://cdn.myanimelist.net/images/anime/1000/110531.jpg";
  List<Widget> synText = [
    Text(
        "Gabii Braun and Falco Grice have been training their entire lives to inherit one of the seven titans under Marley's control and aid their nation in eradicating the Eldians on Paradis. However, just as all seems well for the two cadets, their peace is suddenly shaken by the arrival of Eren Yeager and the remaining members of the Survey Corps.",
        style: st()),
    Text(
        "Having finally reached the Yeager family basement and learned about the dark history surrounding the titans, the Survey Corps has at long last found the answer they so desperately fought to uncover. With the truth now in their hands, the group set out for the world beyond the walls.",
        style: st()),
    Text(
        "In Shingeki no Kyojin: The Final Season, two utterly different worlds collide as each party pursues its own agenda in the long-awaited conclusion to Paradis' fight for freedom.",
        style: st()),
  ];
}
