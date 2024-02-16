import 'package:curso_bloc_flutter/presentation/blocs/counter_bloc/counter_bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocCounterPage extends StatelessWidget {
  const BlocCounterPage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.select((CounterBlocBloc value) =>
            Text('BlocCounterPage ${value.state.transactionCounter}')),
        actions: [
          IconButton(
              onPressed: () =>
                  {context.read<CounterBlocBloc>().add(RestedValue())},
              icon: const Icon(Icons.refresh_outlined))
        ],
      ),
      body: BlocBuilder<CounterBlocBloc, CounterBlocState>(
        builder: (context, state) {
          return Center(
            child: Text('counter: ${state.counter}'),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "1_boton",
            onPressed: () => {
              context
                  .read<CounterBlocBloc>()
                  .add(const CounterIncreased(value: 3))
            },
            child: const Text("+3"),
          ),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            heroTag: "2_boton",
            onPressed: () => {
              context
                  .read<CounterBlocBloc>()
                  .add(const CounterIncreased(value: 2))
            },
            child: const Text("+2"),
          ),
          const SizedBox(
            height: 15,
          ),
          FloatingActionButton(
            heroTag: "3_boton",
            onPressed: () => {
              context
                  .read<CounterBlocBloc>()
                  .add(const CounterIncreased(value: 1))
            },
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
