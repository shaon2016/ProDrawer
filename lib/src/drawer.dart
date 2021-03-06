import 'package:flutter/material.dart';

import '../pro_drawer.dart';

class ProDrawer extends StatefulWidget {
  final Color? drawerBackgroundColor;
  final Widget? drawerHeader;
  final Widget drawerBody;
  final Widget? footer;

  final Widget initialPage;
  final double xOffset;

  final Duration drawerAnimationDuration;

  final Decoration? pageContainerDecorationWhileDrawerOpen;
  final double? pageContainerCircularRadiusWhileDrawerOpen;

  const ProDrawer({
    Key? key,
    this.drawerHeader,
    required this.drawerBody,
    required this.initialPage,
    required this.xOffset,
    this.drawerBackgroundColor,
    this.footer,
    required this.drawerAnimationDuration,
    this.pageContainerDecorationWhileDrawerOpen,
    this.pageContainerCircularRadiusWhileDrawerOpen,
  }) : super(key: key);

  @override
  State<ProDrawer> createState() => _ProDrawerState();

  static _ProDrawerState of(BuildContext context) {
    _ProDrawerState? _proDrawerState;

    if (context is StatefulElement && context.state is _ProDrawerState) {
      _proDrawerState = context.state as _ProDrawerState;
    }

    _proDrawerState =
        _proDrawerState ?? context.findAncestorStateOfType<_ProDrawerState>();

    return _proDrawerState!;
  }
}

class _ProDrawerState extends State<ProDrawer> {
  late double _xOffset;
  late double _yOffset;
  late bool _isDrawerOpen;
  late double _scaleFactor;

  late Widget _body;

  bool _isDragging = false;

  @override
  void initState() {
    super.initState();

    _body = widget.initialPage;
    _closeDrawer();
  }

  _openDrawer() => setState(() {
        _xOffset = widget.xOffset;
        _scaleFactor = 0.6;
        _isDrawerOpen = true;
      });

  _closeDrawer() => setState(() {
        _xOffset = 0;
        _yOffset = 0;
        _scaleFactor = 1.0;
        _isDrawerOpen = false;
      });

  toggle() {
    _isDrawerOpen ? _closeDrawer() : _openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.drawerBackgroundColor ?? Theme.of(context).primaryColor,
      child: Stack(
        children: [
          SizedBox(
            width: _xOffset,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (widget.drawerHeader != null)
                  Visibility(
                    child: SizedBox(
                      child: widget.drawerHeader!,
                      width: double.infinity,
                    ),
                    visible: _isDrawerOpen,
                  ),
                Visibility(
                  visible: _isDrawerOpen,
                  child: Expanded(
                    child: SingleChildScrollView(
                      child: widget.drawerBody,
                    ),
                  ),
                ),
                if (widget.footer != null)
                  Visibility(visible: _isDrawerOpen, child: widget.footer!)
              ],
            ),
          ),
          _screenWidget(context),
        ],
      ),
    );
  }

  _screenWidget(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    if (_isDrawerOpen) _yOffset = height * .20;

    return WillPopScope(
      onWillPop: () async {
        if (_isDrawerOpen) {
          _closeDrawer();
          return false;
        } else {
          return true;
        }
      },
      child: GestureDetector(
        onTap: _closeDrawer,
        child: Listener(
          onPointerDown: (details) {
            _isDragging = true;
          },
          onPointerMove: (details) {
            if (!_isDragging) return;

            const delta = 1;

            // we will open drawer when user interact with the first 1/4 of the screen
            if (details.delta.dx > delta &&
                details.position.dx < (width / 10)) {
              _openDrawer();
            } else if (details.delta.dx < -delta &&
                (details.position.dx > (width / 2))) {
              _closeDrawer();
            }

            _isDragging = false;
          },
          child: Center(
            child: AnimatedContainer(
              duration: widget.drawerAnimationDuration,
              transform: Matrix4.translationValues(_xOffset, _yOffset, 0)
                ..scale(_scaleFactor),
              child: _getPages(),
            ),
          ),
        ),
      ),
    );
  }

  _getPages() {
    Decoration? decoration;

    if (_isDrawerOpen) {
      decoration = widget.pageContainerDecorationWhileDrawerOpen ??
          const BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color(0x1e000000),
                  offset: Offset(-10, 6),
                  blurRadius: 60,
                  spreadRadius: 0)
            ],
          );
    }
    return AbsorbPointer(
      absorbing: _isDrawerOpen,
      child: Container(
        decoration: decoration,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            _isDrawerOpen
                ? widget.pageContainerCircularRadiusWhileDrawerOpen ?? 15
                : 0,
          ),
          child: _body,
        ),
      ),
    );
  }

  setPage(DrawerMenu item) => setState(() {
        toggle();
        _body = item.screen!;
      });
}
