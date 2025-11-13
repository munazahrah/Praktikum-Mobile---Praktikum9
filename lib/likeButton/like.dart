import 'package:flutter/material.dart';

// 1. Main Application Setup (Assumed to be in main.dart)
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Like Button Demo', home: LikeButtonPage());
  }
}

// 2. LikeButtonPage (StatefulWidget) - (image_b56da0.png)
class LikeButtonPage extends StatefulWidget {
  const LikeButtonPage({super.key});

  @override
  State<LikeButtonPage> createState() => _LikeButtonPageState();
}

// 3. _LikeButtonPageState (State Class)
class _LikeButtonPageState extends State<LikeButtonPage> {
  // State variables (image_b56da0.png)
  bool _isLiked = false; // state untuk status like
  int _likeCount = 10;

  // Logic to toggle the like status (image_b56dc4.png)
  void _toggleLike() {
    setState(() {
      if (_isLiked) {
        _likeCount--;
        _isLiked = false;
      } else {
        _likeCount++;
        _isLiked = true;
      }
    });
  }

  // Build method with UI (image_b56dff.png)
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Like Button')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(
                // Use ternary operator to switch icons
                _isLiked ? Icons.favorite : Icons.favorite_border,
                // Use ternary operator to switch colors
                color: _isLiked ? Colors.red : Colors.grey,
                size: 48,
              ),
              onPressed: _toggleLike,
            ),
            const SizedBox(height: 8), // Added for spacing
            Text('$_likeCount likes', style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
