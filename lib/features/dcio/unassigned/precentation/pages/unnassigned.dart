import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iinvestigation/features/dcio/presentations/pages/widgets/incoming.dart';
import 'package:iinvestigation/features/dcio/presentations/state/dcio_cubit.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class UnassingedCases extends StatefulWidget {
  const UnassingedCases({super.key});

  @override
  State<UnassingedCases> createState() => _UnassingedCasesState();
}

class _UnassingedCasesState extends State<UnassingedCases> {
  void refresh() {
    context.read<DcioCubit>().getOccurences().then((value) {
      _refreshController.refreshCompleted();
      setState(() {});
    });
  }

  void _onLoading() async {
    await Future.delayed(Duration(milliseconds: 100));
    // if failed,use loadFailed(),if no data return,use LoadNodata()

    if (mounted) setState(() {});
    _refreshController.loadComplete();
  }

  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Unassigned Cases"),
        centerTitle: true,
      ),
      body: SmartRefresher(
          enablePullDown: true,
          header: WaterDropHeader(),
          controller: _refreshController,
          onLoading: _onLoading,
          onRefresh: refresh,
          child: const Incoming()),
    );
  }
}
