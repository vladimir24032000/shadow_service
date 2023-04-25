import 'package:flutter/material.dart';

class LazyLoadIndexedStack extends StatefulWidget {
  LazyLoadIndexedStack({
    Key? key,
    Widget? unloadWidget,
    this.alignment = AlignmentDirectional.topStart,
    this.sizing = StackFit.loose,
    this.textDirection,
    required this.index,
    required this.children,
  }) : super(key: key) {
    this.unloadWidget = unloadWidget ?? Container();
  }

  late final Widget unloadWidget;
  final AlignmentGeometry alignment;
  final StackFit sizing;
  final TextDirection? textDirection;
  final int index;
  final List<Widget> children;

  @override
  _LazyLoadIndexedStackState createState() => _LazyLoadIndexedStackState();
}

class _LazyLoadIndexedStackState extends State<LazyLoadIndexedStack> {
  late final List<bool> _loaded;

  @override
  void initState() {
    super.initState();
    _loaded = List.filled(widget.children.length, false);
    _loaded[widget.index] = true;
  }

  @override
  void didUpdateWidget(final LazyLoadIndexedStack oldWidget) {
    super.didUpdateWidget(oldWidget);
    _loaded[widget.index] = true;
  }

  @override
  Widget build(final BuildContext context) {
    return WillPopScope(
        child: IndexedStack(
          index: widget.index,
          alignment: widget.alignment,
          textDirection: widget.textDirection,
          sizing: widget.sizing,
          children: _loadedChildren(),
        ),
        onWillPop: () async => false);
  }

  List<Widget> _loadedChildren() {
    return widget.children.asMap().entries.map((entry) {
      final index = entry.key;
      final childWidget = entry.value;
      return _loaded[index] ? childWidget : widget.unloadWidget;
    }).toList();
  }
}
