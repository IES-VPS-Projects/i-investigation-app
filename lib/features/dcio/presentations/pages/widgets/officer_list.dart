import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/features/dcio/data/models/users/users.dart';
import 'package:iinvestigation/features/dcio/presentations/state/dcio_cubit.dart';

class OfficersListing extends StatefulWidget {
  const OfficersListing({super.key});

  @override
  State<OfficersListing> createState() => _OfficersListingState();
}

class _OfficersListingState extends State<OfficersListing> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView(
      children:
          context.watch<DcioCubit>().state.payload.users!.map((Users document) {
        return context
                .watch<DcioCubit>()
                .state
                .payload
                .officers!
                .contains(document)
            ? const SizedBox()
            : Draggable<Users>(
                feedback: Material(child: Text("${document.name}")),
                data: document,
                childWhenDragging: Container(),
                child: ListTile(
                  leading: const Icon(Icons.camera_enhance),
                  title: Text("${document.name}"),
                  subtitle: Text("${document.name}"),
                  trailing: const Icon(Icons.drag_handle),
                  dense: true,
                ));
      }).toList(),
    );
  }
}
