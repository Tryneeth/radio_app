import 'package:flutter/material.dart';
import 'package:radio_app/src/domain/models/radio_station.dart';

class RadioStationTile extends StatelessWidget {
  const RadioStationTile({
    super.key,
    required this.station, required this.onTap,
  });

  final RadioStation station;
  final VoidCallback onTap;

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
      onTap: onTap,
    );
  }
}
