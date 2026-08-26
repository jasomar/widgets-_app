import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'ProgressScreen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Progress Indicator")),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          SizedBox(height: 30),
          Text("circular progress indicator"),
          SizedBox(height: 10),
          CircularProgressIndicator(strokeWidth: 2),
          SizedBox(height: 10),
          Text("circular progress controlado"),
          SizedBox(height: 10),

          _ControllerProgressIndicador(),
        ],
      ),
    );
  }
}

class _ControllerProgressIndicador extends StatelessWidget {
  const _ControllerProgressIndicador();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<double>(
      stream: Stream.periodic(
        const Duration(milliseconds: 300),
        (value) {
          return (value * 2) / 100;
        },
      ).takeWhile((value) => value < 100),
      builder: (context, asyncSnapshot) {
        final progressValue = asyncSnapshot.data ?? 0;

        return Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                value: progressValue,
                strokeWidth: 2,
                backgroundColor: Colors.black12,
              ),
              const SizedBox(width: 20),
              Expanded(
                child: LinearProgressIndicator(
                  value: progressValue,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
