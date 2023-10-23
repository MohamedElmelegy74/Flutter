import 'dart:developer';

import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search City'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onSubmitted: (value) {
              log(value);
            },
            decoration: const InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              labelText: 'Search',
              hintText: 'Enter City Name',
              suffixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}