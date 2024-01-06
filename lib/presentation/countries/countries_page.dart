import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import 'package:bloc_base/app/routing/app_router.dart';
import 'package:bloc_base/presentation/countries/countries_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/config/di/di.dart';
import '../common_widgets/loading.dart';
import '../utils/bloc_common.dart';
import '../utils/dimens.dart';

@RoutePage()
class CountriesPage extends StatefulWidget {
  const CountriesPage({super.key});

  @override
  State<CountriesPage> createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage> {
  final router = inject<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => inject<CountriesBloc>()..getCountries(),
      child: Scaffold(
          body: BlocConsumer<CountriesBloc, CountriesState>(
        listener: (context, state) {
          if (state.error.isEmpty) {
           //
          }
        },
        builder: (context, state) => SafeArea(
          child: BlocBuilder<CountriesBloc, CountriesState>(
            builder: (context, state) {
              final bloc = context.read<CountriesBloc>();
              switch (state.stateType) {
                case StateType.loading:
                  return const Loading(isLoading: true);
                case StateType.success:
                  return Stack(
                    children: [
                      SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Stack(
                          children: [
                            ListView.separated(
                              padding: const EdgeInsets.symmetric(
                                horizontal: Dimens.horizontalOffset,
                                vertical: Dimens.verticalOffset,
                              ),
                              itemBuilder: (context, index) {
                                var item = state.countryList[index];
                                return Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.network(item.flags?.png ?? "",width: 50,height: 50,),
                                    const SizedBox(width: 10,),
                                    Text(
                                      item.name?.common ?? "",
                                      style: const TextStyle(
                                          fontSize: 20, fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                );
                              },
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: state.countryList.length,
                              separatorBuilder: (BuildContext context, int index) =>
                                  const SizedBox(height: 10),
                            ),
                            const SizedBox(height: Dimens.verticalOffset),
                          ],
                        ),
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(Dimens.horizontalOffset),
                            child: ElevatedButton.icon(onPressed: (){
                              bloc.getCountries();
                            }, icon: Icon(Icons.refresh),label: Text("Refresh"),),
                          ))
                    ],
                  );
                case StateType.error:
                  return Text(state.error);
                case StateType.initial:
                  return const SizedBox();
              }
            },
          ),
        ),
      )),
    );
  }

}
