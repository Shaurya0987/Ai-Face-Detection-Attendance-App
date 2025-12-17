// ================= SLIDE TO BEGIN (UNCHANGED) =================

import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class SlideToBegin extends StatefulWidget {
  final Widget nextPage;

  const SlideToBegin({super.key, required this.nextPage});

  @override
  State<SlideToBegin> createState() => _SlideToBeginState();
}

class _SlideToBeginState extends State<SlideToBegin>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  double dragPosition = 0.0;
  double maxDrag = 0.0;
  bool completed = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController.unbounded(vsync: this)
      ..addListener(() {
        setState(() {
          dragPosition = _controller.value;
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _springTo(double target) {
    final spring = SpringDescription(
      mass: 1,
      stiffness: 500,
      damping: 20,
    );

    final simulation = SpringSimulation(
      spring,
      dragPosition,
      target,
      0,
    );

    _controller.animateWith(simulation);
  }

  void _completeSlide() async {
    if (completed) return;
    completed = true;

    _springTo(maxDrag);

    await Future.delayed(const Duration(milliseconds: 300));

    if (!mounted) return;
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => widget.nextPage),
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        maxDrag = constraints.maxWidth - 60;

        return Container(
          height: 60,
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            alignment: Alignment.centerLeft,
            children: [
              Center(
                child: Text(
                  "Slide to Begin",
                  style: TextStyle(
                    color: Colors.blue.shade700,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Positioned(
                left: dragPosition,
                child: GestureDetector(
                  onHorizontalDragUpdate: (details) {
                    if (completed) return;
                    setState(() {
                      dragPosition =
                          (dragPosition + details.delta.dx)
                              .clamp(0.0, maxDrag);
                    });
                  },
                  onHorizontalDragEnd: (_) {
                    if (dragPosition > maxDrag * 0.85) {
                      _completeSlide();
                    } else {
                      _springTo(0);
                    }
                  },
                  child: Container(
                    height: 56,
                    width: 56,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.4),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
