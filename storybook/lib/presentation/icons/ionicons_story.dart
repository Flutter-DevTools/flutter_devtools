import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../../scaffold_story.dart';

class IoniconsStory extends ScaffoldStory {
  IoniconsStory._({
    required super.name,
    required super.body,
  });

  factory IoniconsStory() {
    final List<IconData> allIoniconsDataStub =
        ioniconsMapping.values.map((code) => IoniconsData(int.parse(code))).toList();

    return IoniconsStory._(
      name: 'Components/Ionicons',
      body: (context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: GridView.builder(
          itemCount: allIoniconsDataStub.length,
          itemBuilder: (context, index) => Column(
            children: [
              Icon(
                allIoniconsDataStub[index],
                size: 32,
              ),
              const SizedBox(height: 4),
              Text(
                ioniconsMapping.keys.elementAt(index),
                style: const TextStyle(
                  fontSize: 8,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 0.9,
            crossAxisCount: 5,
          ),
        ),
      ),
    );
  }
}
