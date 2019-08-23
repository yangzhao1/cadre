import 'package:flutter/cupertino.dart';

class ToolNotification<T> extends Notification{
  ToolNotification({this.value});
  final T value;
}