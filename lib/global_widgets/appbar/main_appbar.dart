import 'package:flutter/material.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String title;
  final Function(String)? onSearch;
  const MainAppBar({Key? key, required this.title, this.onSearch})
      : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<MainAppBar> createState() => _MainAppBarState();
}

class _MainAppBarState extends State<MainAppBar> {
  bool _isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 17, 176, 166),
              Color.fromARGB(255, 20, 81, 71),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
      title: _isSearching
          ? TextField(
              controller: _searchController,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'Buscar...',
                hintStyle: TextStyle(color: Colors.white70),
                border: InputBorder.none,
              ),
              style: const TextStyle(color: Colors.white, fontSize: 18),
              onChanged: (value) => widget.onSearch?.call(value),
            )
          : Text(
              widget.title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 0.5,
                fontFamily: 'Prompt',
                fontSize: 24,
              ),
            ),
      actions: [
        IconButton(
          icon: Icon(_isSearching ? Icons.close : Icons.search),
          onPressed: () {
            setState(() {
              if (_isSearching) {
                _searchController.clear();
              }
              _isSearching = !_isSearching;
            });
          },
        ),
      ],
    );
  }
}
