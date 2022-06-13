import 'package:flutter/material.dart';

var boxDecoration = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10),
  border: Border.all(color: Colors.white, width: 2),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.shade200,
      blurRadius: 10,
      spreadRadius: 2,
    )
  ],
);

var boxShadow = BoxDecoration(
  color: Colors.transparent,
  borderRadius: BorderRadius.circular(20),
  boxShadow: [
    BoxShadow(
      color: Colors.grey.shade200,
      blurRadius: 20,
      spreadRadius: 2,
    )
  ],
);
