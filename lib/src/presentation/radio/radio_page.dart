import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:radio_app/src/core/di/di_initializer.dart';
import 'package:radio_app/src/core/ui/atoms/sizes.dart';
import 'package:radio_app/src/domain/models/radio_station.dart';
import 'package:radio_app/src/presentation/radio/bloc/radio_bloc.dart';
import 'package:radio_app/src/utils/assets.dart';
import 'package:siri_wave/siri_wave.dart';

class RadioPage extends StatelessWidget {
  const RadioPage({super.key, required this.station});

  final RadioStation station;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0.0,
        elevation: 0.0,
        title: Text(station.name),
      ),
      extendBodyBehindAppBar: true,
      body: BlocProvider<RadioBloc>(
        create: (_) => getIt<RadioBloc>(param1: station),
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
    final mediaQuery = MediaQuery.of(context);
    return BlocBuilder<RadioBloc, RadioState>(
      builder: (context, state) => SizedBox.expand(
        child: Stack(
          children: [
            if (state.isPlaying) ...[
              Positioned(
                right: -xxxl,
                bottom: 0,
                top: 0,
                child: Transform.rotate(
                  angle: -math.pi / 2.0,
                  child: SiriWaveform.ios9(),
                ),
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  height: mediaQuery.size.height,
                  width: xxxl,
                ),
              ),
            ],
            Container(
              color: Colors.grey.shade200,
              width: mediaQuery.size.width / 5,
              height: mediaQuery.size.height,
            ),
            Positioned(
              top: mediaQuery.size.height / 6,
              left: -200,
              child: Container(
                height: mediaQuery.size.height / 2,
                width: mediaQuery.size.height / 2,
                decoration: BoxDecoration(
                  color: Colors.blueGrey.shade200,
                  image: const DecorationImage(
                    image: AssetImage(Assets.background),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.blueGrey.shade100,
                    width: xs,
                  ),
                  borderRadius: BorderRadius.circular(mediaQuery.size.height),
                  boxShadow: [
                    BoxShadow(blurRadius: lg, color: Colors.grey.shade300),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: mediaQuery.viewPadding.bottom + xxl,
              child: SizedBox(
                width: mediaQuery.size.width,
                child: Column(
                  children: [
                    if (state.stationName != '') ...[
                      Text(
                        state.stationName,
                        style: Theme.of(context)
                            .primaryTextTheme
                            .headlineMedium
                            ?.copyWith(color: Colors.black),
                      ),
                      const SizedBox(height: micro),
                    ],
                    if (state.stationDescription != '') ...[
                      Text(
                        'by ${state.stationDescription}',
                        style: Theme.of(context)
                            .primaryTextTheme
                            .labelMedium
                            ?.copyWith(color: Colors.grey),
                      ),
                      const SizedBox(height: xs),
                    ],
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton.large(
                          shape: const CircleBorder(),
                          elevation: state.isPlaying ? 0.0 : 3.0,
                          onPressed: () => state.isPlaying
                              ? bloc.add(const RadioEvent.pause())
                              : bloc.add(const RadioEvent.play()),
                          tooltip: 'Play/Pause',
                          child: state.isPlaying
                              ? const Icon(Icons.stop)
                              : const Icon(Icons.play_arrow),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _OldContent extends StatelessWidget {
  const _OldContent();

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
