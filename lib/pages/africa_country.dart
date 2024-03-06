import 'package:flutter/material.dart';
import 'package:pr2602/countries/countries.dart';
import 'package:pr2602/pages/africa_list.dart';
import 'package:card_swiper/card_swiper.dart';

final List<String> picsList = [
        countriesList[ind1].flag, countriesList[ind1].flag2, countriesList[ind1].flag3,
      ];

class AfricaCountry extends StatelessWidget {
  const AfricaCountry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView (
        child: Container(height: MediaQuery.of(context).size.height, width: MediaQuery.of(context).size.width,
        color: Colors.grey,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: 
            Text('#${countriesList[ind1].id}',
            style: const TextStyle(color: Colors.white,
            ),
            textScaler: const TextScaler.linear(3),
            ),
            ),
            Expanded(flex: 2,
              child: Swiper(                            
                    itemBuilder:
                        (BuildContext context, int index2) {                         
                return Image.asset(picsList[index2],
                fit: BoxFit.fill);
                        },
                    itemCount: 3,
                    viewportFraction: 0.7,
                    scale: 0.8,
                    pagination: const SwiperPagination(),
                    control: const SwiperControl(),
                    outer: true,
                    ),
                    ),
            Expanded(flex: 2,
            child: Text('Country: ${countriesList[ind1].name}\n' 
            'Total area: ${countriesList[ind1].area}\n' 
            'Population: ${countriesList[ind1].population}',
            style: const TextStyle(color: Colors.white,
            ),
            overflow: TextOverflow.fade,
            textScaler: const TextScaler.linear(2),
            ),
            ),
          ]
          ),
        ),
      ),
    );
      }
  }