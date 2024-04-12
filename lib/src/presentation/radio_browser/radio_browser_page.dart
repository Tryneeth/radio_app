import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_app/src/core/di/di_initializer.dart';
import 'package:radio_app/src/core/ui/pages/error_view.dart';
import 'package:radio_app/src/core/ui/pages/loading_view.dart';
import 'package:radio_app/src/domain/models/radio_station.dart';
import 'package:radio_app/src/presentation/radio_browser/bloc/radio_browser_bloc.dart';
import 'package:radio_app/src/presentation/widgets/radio_station_tile.dart';

class RadioBrowserPage extends StatelessWidget {
  const RadioBrowserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<RadioBrowserBloc>(),
      child: BlocBuilder<RadioBrowserBloc, RadioBrowserState>(
        builder: (context, state) => state.maybeMap(
          content: (st) => Scaffold(
            appBar: AppBar(
              elevation: 0.0,
              title: Text(st.countryName ?? ''),
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              leading: IconButton(
                onPressed: () => context
                    .read<RadioBrowserBloc>()
                    .add(const RadioBrowserEvent.openFavorites()),
                icon: const Icon(Icons.favorite),
              ),
              actions: [
                IconButton(
                  onPressed: () => _showCountryPicker(context),
                  icon: const Icon(Icons.flag),
                ),
              ],
            ),
            body: const _Content(),
          ),
          orElse: () => const SizedBox.shrink(),
        ),
      ),
    );
  }

  void _showCountryPicker(BuildContext context) => showCountryPicker(
        context: context,
        favorite: ['US', 'ES'],
        onSelect: (Country country) => context
            .read<RadioBrowserBloc>()
            .add(RadioBrowserEvent.changeCountry(country.countryCode)),
      );
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RadioBrowserBloc, RadioBrowserState>(
      builder: (context, state) => state.maybeMap(
        content: (value) => _RadioStationsList(
          stations: value.stations,
          bloc: context.read<RadioBrowserBloc>(),
        ),
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

class _RadioStationsList extends StatefulWidget {
  const _RadioStationsList({required this.stations, required this.bloc});

  final List<RadioStation> stations;
  final RadioBrowserBloc bloc;

  @override
  State<_RadioStationsList> createState() => _RadioStationsListState();
}

class _RadioStationsListState extends State<_RadioStationsList> {
  final _scrollController = ScrollController();
  final _scrollThreshold = 200.0;

  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: _scrollController,
      itemCount: widget.stations.length,
      itemBuilder: (context, index) => RadioStationTile(
        station: widget.stations[index],
        onTap: () => context.read<RadioBrowserBloc>().add(
              RadioBrowserEvent.openStation(widget.stations[index]),
            ),
      ),
    );
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll - currentScroll <= _scrollThreshold) {
      widget.bloc.add(const RadioBrowserEvent.loadMore());
    }
  }
}
