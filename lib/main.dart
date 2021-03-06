
import 'package:assig_vinod_razorpay/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/article_bloc.dart';
import 'data/article_repository.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vinod ass',
      home: BlocProvider(
        builder: (context) => ArticleBloc(repository: ArticleRepositoryImpl()),
        child: HomePage(),
      ),
    );
  }
}