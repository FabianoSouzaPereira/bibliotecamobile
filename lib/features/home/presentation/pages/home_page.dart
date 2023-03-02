import 'package:bibliotecamobile/features/home/presentation/cubit/home_cubit.dart';
import 'package:bibliotecamobile/features/home/presentation/widgets/loading_widget.dart';
import 'package:bibliotecamobile/features/home/presentation/widgets/message_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bibliotecamobile/injection_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: buildBody(context),
      ),
    );
  }

  BlocProvider<HomeCubit> buildBody(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<HomeCubit>(),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10),
              BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) {
                  if (state is Empty) {
                  } else if (state is Loading) {
                    return LoadingWidget();
                  } else if (state is Loaded) {
                    return LoadingWidget();
                  } else if (state is Error) {
                    return MessageDisplay(
                      message: state.message,
                    );
                  }
                  return throw Exception();
                },
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
