import 'package:flutter/material.dart';
import 'package:pr2602/countries/countries.dart';
import 'package:pr2602/pages/africa_country.dart';

var ind1 = 0;

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
      
        return ElevatedButton(
          onPressed: () {
            ind1 = index;
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AfricaCountry()),
            );
          },
          child: Container(height: height2, width: width2, margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5), color: Colors.grey,
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
                child: Image.asset(countriesList[index].flag),
                ),
              Expanded(flex: 2,
              child: Text('Country: ${countriesList[index].name}\n' 
             'Total area: ${countriesList[index].area} km^2\n' 
             'Population: ${countriesList[index].population}',
              style: const TextStyle(color: Colors.white,
              ),
              overflow: TextOverflow.fade,
              textScaler: const TextScaler.linear(2),
              ),
              ),
            ],
            ),
          ),
        );
      },
       ),
    );
  }
}