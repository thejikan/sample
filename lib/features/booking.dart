import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample/dataModel/bookingConfig.dart';
import 'package:sample/router/appRoutesEnum.dart';

class BookingView extends StatelessWidget {
  const BookingView({Key? key, required this.data}) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    return _BookingView(
      data: data,
    );
  }
}

class _BookingView extends StatelessWidget {
  const _BookingView({Key? key, required this.data}) : super(key: key);
  final String data;

  @override
  Widget build(BuildContext context) {
    List<BookingListConfig> itemList = [
      BookingListConfig(
          place: 'place 1',
          isCancellable: false,
          onListItemTap: () {
            context.go(AppRoutes.confirmation.routePath);
          },
          availableTime: ['12:00', '13:00', '18:00']),
      BookingListConfig(
          place: 'place 2',
          isCancellable: true,
          onListItemTap: () {},
          availableTime: ['11:00', '14:00', '18:00', '19:00']),
      BookingListConfig(
          place: 'place 3',
          isCancellable: false,
          onListItemTap: () {},
          availableTime: ['08:00', '09:00', '19:00']),
      BookingListConfig(
          place: 'place 4',
          isCancellable: true,
          onListItemTap: () {},
          availableTime: ['12:00', '13:00']),
      BookingListConfig(
          place: 'place 5',
          isCancellable: true,
          onListItemTap: () {},
          availableTime: ['12:00', '13:00', '18:00', '14:00', '15:00']),
      BookingListConfig(
          place: 'place 6',
          isCancellable: true,
          onListItemTap: () {},
          availableTime: ['12:00', '14:00', '17:00']),
      BookingListConfig(
          place: 'place 7',
          isCancellable: false,
          onListItemTap: () {},
          availableTime: ['10:00', '13:00', '16:00']),
      BookingListConfig(
          place: 'place 8',
          isCancellable: false,
          onListItemTap: () {},
          availableTime: ['11:00', '15:00', '20:00']),
      BookingListConfig(
          place: 'place 9',
          isCancellable: false,
          onListItemTap: () {},
          availableTime: ['08:00', '09:00', '11:00', '12:00']),
      BookingListConfig(
          place: 'place 10',
          isCancellable: false,
          onListItemTap: () {},
          availableTime: ['09:00', '11:00', '14:00']),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text('Booking'),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: itemList.map((item) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              item.place,
                            ),
                            Text(
                              item.isCancellable
                                  ? 'Cancellation Available'
                                  : 'Non-Cancellable',
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                                children: List.generate(
                                    item.availableTime.length, (index) {
                              return Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: GestureDetector(
                                  onTap: () {
                                    context.go(AppRoutes.confirmation.routePath,
                                        extra: {
                                          "place": item.place,
                                          "isCancellable": item.isCancellable,
                                          "time": item.availableTime[index],
                                          "employee": data,
                                        });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(),
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(8)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        item.availableTime[index].toString(),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                height: 1,
                thickness: 1,
                color: Colors.black26,
              ),
            ],
          );
        }).toList(),
      )),
    );
  }
}
