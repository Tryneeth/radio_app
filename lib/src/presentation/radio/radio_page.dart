import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_app/src/core/di/di_initializer.dart';
import 'package:radio_app/src/presentation/radio/bloc/radio_bloc.dart';

class RadioPage extends StatelessWidget {
  const RadioPage({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Radio App'),
      ),
      body: BlocProvider<RadioBloc>(
        create: (_) => getIt<RadioBloc>(param1: url),
        child: const _Content(),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<RadioBloc>();
    return BlocBuilder<RadioBloc, RadioState>(
      builder: (context, state) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(state.stationName),
          Text(state.stationDescription),
          Center(
            child: FloatingActionButton(
              onPressed: () => state.isPlaying
                  ? bloc.add(const RadioEvent.pause())
                  : bloc.add(const RadioEvent.play()),
              tooltip: 'Play/Pause',
              child: state.isPlaying
                  ? const Icon(Icons.stop)
                  : const Icon(Icons.play_arrow),
            ),
          ),
        ],
      ),
    );
  }
}
