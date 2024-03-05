import 'package:flutter/material.dart';
import 'package:pr2602/countries/countries.dart';
import 'package:card_swiper/card_swiper.dart';

class AfricaList extends StatelessWidget {
  const AfricaList({super.key});

  @override
  Widget build(BuildContext context) {

    var height2 = MediaQuery.of(context).size.height / 2;
    var width2 = MediaQuery.of(context).size.width / 2;

    return Scaffold(
      body: GridView.builder(gridDelegate: 
      const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
      itemCount: countriesList.length,
      itemBuilder: (BuildContext context, int index) {
      
        final List<String> picsList = [
        countriesList[index].flag, countriesList[index].flag2, countriesList[index].flag3,
      ];
      
        return ListView.builder(
      itemCount: 1,
      itemBuilder: (BuildContext context, int index3) {
        return Container(height: height2, width: width2, margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5), color: Colors.grey,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(child: 
            Text('#${countriesList[index].id}',
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
            child: Text('Country: ${countriesList[index].name}\n' 
           'Total area: ${countriesList[index].area}\n' 
           'Population: ${countriesList[index].population}',
            style: const TextStyle(color: Colors.white,
            ),
            overflow: TextOverflow.fade,
            textScaler: const TextScaler.linear(2),
            ),
            ),
          ],
          ),
          );
      }
        );
      },
       
       ),
    );
  }
}