// import 'package:flutter/material.dart';
// import 'package:project/project.dart' as project;
// import 'package:active_resource/active_resource.dart' as active_resource;
// import 'package:template_parser/template_parser.dart' as template;

// class ProjectPage extends StatelessWidget {
//   final List<template.ActivePageComponent> pages;

//   final String id;

//   const ProjectPage({
//     super.key,
//     required this.id,
//     required this.pages,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return project.ProjectView(
//       projectId: id,
//       builder: (context, project) {
//         print('--- ' + project.toString());
//         return DefaultTabController(
//           length: pages.length,
//           child: Scaffold(
//             appBar: AppBar(
//               title: Text(
//                 project.name,
//                 style: const TextStyle(color: Colors.black),
//               ),
//               bottom: TabBar(
//                 tabs: [
//                   for (final page in pages)
//                     Tab(
//                       text: page.title,
//                     ),
//                 ],
//               ),
//             ),
//             body: TabBarView(
//               physics: const NeverScrollableScrollPhysics(),
//               children: [
//                 for (final page in pages)
//                   active_resource.ActiveResourceCollectionView(
//                     collectionComponent: page.view,
//                   ),
//                 // active_resource.ActiveResourceListView(
//                 //   collectionComponent: template.ActiveCollectionComponent(
//                 //     tile: template.ActiveResourceTileComponent(
//                 //       activeStructureCode: '',
//                 //       titleKey: 'task_name',
//                 //       subtitleKey: 'task_description',
//                 //     ),
//                 //   ),
//                 // ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
