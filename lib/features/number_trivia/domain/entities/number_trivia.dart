import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class NumberTrivia extends Equatable {
  final String text;
  final int number;

  @override
  List<Object> get props => [text, number];

  const NumberTrivia({
    @required this.text,
    @required this.number,
  });
}
