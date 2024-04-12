import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_app/src/core/di/di_initializer.dart';
import 'package:radio_app/src/presentation/favorites/bloc/favorites_bloc.dart';
import 'package:radio_app/src/presentation/widgets/radio_station_tile.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<FavoritesBloc>(),
      child: Scaffold(
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
          return const Center(
            child: Text('No favorite stations saved'),
          );
        }
        return ListView.builder(
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
