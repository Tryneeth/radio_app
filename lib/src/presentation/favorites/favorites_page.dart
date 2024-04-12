import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';
import 'package:radio_app/src/core/di/di_initializer.dart';
import 'package:radio_app/src/core/ui/atoms/sizes.dart';
import 'package:radio_app/src/presentation/favorites/bloc/favorites_bloc.dart';
import 'package:radio_app/src/presentation/widgets/radio_station_tile.dart';
import 'package:radio_app/src/utils/assets.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<FavoritesBloc>(),
      child: Scaffold(
        key: UniqueKey(),
        appBar: AppBar(
          elevation: 0.0,
          title: const Text('Favorites'),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        ),
        body: const _RadioStationsList(),
      ),
    );
  }
}

class _RadioStationsList extends StatelessWidget {
  const _RadioStationsList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesBloc, FavoritesState>(
      builder: (context, state) {
        if (state.stations.isEmpty) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox.square(
                  dimension: MediaQuery.of(context).size.width - xxxl,
                  child: Image(
                    image: SvgImage.asset(Assets.boomBox),
                  ),
                ),
                const Text('No favorite stations saved'),
              ],
            ),
          );
        }
        return ListView.builder(
          shrinkWrap: true,
          itemCount: state.stations.length,
          itemBuilder: (context, index) => RadioStationTile(
            station: state.stations[index],
            onTap: () => context
                .read<FavoritesBloc>()
                .add(FavoritesEvent.openStation(state.stations[index])),
          ),
        );
      },
    );
  }
}
