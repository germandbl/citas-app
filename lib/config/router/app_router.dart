import 'package:citas_app/screens/appointment_screen.dart';
import 'package:citas_app/screens/create_appointment_screen.dart';
import 'package:citas_app/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
      path: '/',
      builder: (context, state) => StreamBuilder(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const SignInScreen();
            } else {
              return const HomeScreen();
            }
          }),
      routes: [
        GoRoute(
            path: 'create-appointment',
            builder: (context, state) => const CreateAppointmentScreen()),
        GoRoute(
            path: 'appointment',
            builder: (context, state) => const AppointmentScreen())
      ])
]);
