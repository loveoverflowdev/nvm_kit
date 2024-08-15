// import 'package:flutter/material.dart';
// import 'package:template_parser/template_parser.dart';

// import 'active_resource_drawer.dart';

// class ActiveResourceScaffold extends StatefulWidget {
//   final Widget body;
//   final List<PageComponent> pages;

//   const ActiveResourceScaffold({
//     super.key,
//     required this.pages,
//     required this.body,
//   });

//   @override
//   State<ActiveResourceScaffold> createState() => _ActiveResourceScaffoldState();
// }

// class _ActiveResourceScaffoldState extends State<ActiveResourceScaffold> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(_currentPage.title),
//       ),
//       drawer: ActiveResourceDrawer(
//         pages: widget.pages,
//       ),
//       body: w,
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
