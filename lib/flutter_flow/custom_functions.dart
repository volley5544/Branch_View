import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String getUserLocation(LatLng userLocation) {
  String userLatLng = '${userLocation.latitude},${userLocation.longitude}';
  return userLatLng;
}

DateTime showClock(DateTime currentTime) {
  // real time clock
  String hour = currentTime.hour.toString();
  String minute = currentTime.minute.toString();
  String second = currentTime.second.toString();
  if (currentTime.hour < 10) {
    hour = '0' + hour;
  }

  if (currentTime.minute < 10) {
    minute = '0' + minute;
  }

  if (currentTime.second < 10) {
    second = '0' + second;
  }
  return DateTime(currentTime.year, currentTime.month, currentTime.day,
      int.parse(hour), int.parse(minute), int.parse(second));
}

String imgNameShow(String imgPath) {
  // get upload file name
  if (imgPath == null || imgPath.isEmpty) return '';
  return imgPath.split('/').last.split('.').first;
}
