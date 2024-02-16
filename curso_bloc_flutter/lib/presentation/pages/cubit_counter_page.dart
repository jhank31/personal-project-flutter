import 'package:curso_bloc_flutter/presentation/blocs/counter_cubit/counter_cubit_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitCounterPage extends StatelessWidget {
  const CubitCounterPage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const CubitCounterVIew(),
    );
  }
}

class CubitCounterVIew extends StatelessWidget {
  const CubitCounterVIew({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final counterState = context.watch<CounterCubit>().state;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit Counter ${counterState.transactionCounter}'),
        actions: [
          IconButton(
              onPressed: () => {
                    context.read<CounterCubit>().reset(),
                  },
              icon: const Icon(Icons.refresh_outlined))
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            return Text('Counter value ${state.counter}');
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "1_boton",
            onPressed: () => {
              context.read<CounterCubit>().increaseBy(3),
            },
            child: const Text("+3"),
          ),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            heroTag: "2_boton",
            onPressed: () => {context.read<CounterCubit>().increaseBy(2)},
            child: const Text("+2"),
          ),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            heroTag: "3_boton",
            onPressed: () => {context.read<CounterCubit>().increaseBy(1)},
            child: const Text("+1"),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }
}
