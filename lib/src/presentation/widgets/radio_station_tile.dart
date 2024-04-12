import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_app/src/domain/models/radio_station.dart';
import 'package:radio_app/src/presentation/radio_browser/bloc/radio_browser_bloc.dart';

class RadioStationTile extends StatelessWidget {
  const RadioStationTile({
    super.key,
    required this.station,
  });

  final RadioStation station;

  Widget _errorImageBuilder(context, error, stackTrace) => const CircleAvatar(
        child: Icon(Icons.radio),
      );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: station.favicon != ''
          ? CircleAvatar(
              backgroundImage: Image.network(
                station.favicon!,
                errorBuilder: _errorImageBuilder,
              ).image,
            )
          : const CircleAvatar(
              child: Icon(Icons.radio),
            ),
      title: Text(station.name),
      onTap: () => context.read<RadioBrowserBloc>().add(
            RadioBrowserEvent.openStation(station),
          ),
    );
  }
}