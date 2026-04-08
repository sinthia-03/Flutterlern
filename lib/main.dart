import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/provider/count_provider.dart';
import 'app.dart';

main()
{
  runApp(
    ChangeNotifierProvider(create: (_)=>CountProvider(),
    child: App(),)
  );
}