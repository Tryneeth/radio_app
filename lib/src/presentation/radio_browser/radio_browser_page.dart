import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_app/src/core/di/di_initializer.dart';
import 'package:radio_app/src/core/ui/pages/error_view.dart';
import 'package:radio_app/src/core/ui/pages/loading_view.dart';
import 'package:radio_app/src/domain/models/radio_station.dart';
import 'package:radio_app/src/presentation/radio_browser/bloc/radio_browser_bloc.dart';

class RadioBrowserPage extends StatelessWidget {
  const RadioBrowserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.flag),
          ),
        ],
      ),
      body: BlocProvider(
        create: (_) => getIt<RadioBrowserBloc>(),
        child: const _Content(),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RadioBrowserBloc, RadioBrowserState>(
      builder: (context, state) => state.maybeMap(
        content: (value) => _RadioStationsList(stations: value.stations),
        error: (value) => ErrorView(
          error: value.error!,
          onRetry: () => context
              .read<RadioBrowserBloc>()
              .add(const RadioBrowserEvent.load()),
        ),
        orElse: () => const LoadingView(),
      ),
    );
  }
}

class _RadioStationsList extends StatelessWidget {
  const _RadioStationsList({required this.stations});

  final List<RadioStation> stations;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: stations.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(stations[index].name),
      ),
    );
  }
}
