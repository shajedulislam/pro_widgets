import 'package:flutter/material.dart';

double doNotUseThisDesignValue({required BuildContext context}) {
  if (MediaQuery.of(context).size.width <= 842) {
    return (MediaQuery.of(context).size.width / 100) * 0.267;
  } else {
    return 1;
  }
}

double doNotUseThisHorizontalValue({required BuildContext context}) {
  return (MediaQuery.of(context).size.width / 100);
}
