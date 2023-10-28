import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'dart:math';

// Moving Particles
// Attributed to https://github.com/felixblaschke/simple_animations
//-----------------------------------------------
// author: Ariel Ferreiro
// date: 04-Apr-2020

class Particles extends StatefulWidget {
  final int numberOfParticles;

  Particles(this.numberOfParticles);

  @override
  _ParticlesState createState() => _ParticlesState();
}

class _ParticlesState extends State<Particles> {
  final Random random = Random();

  final List<ParticleModel> particles = [];

  @override
  void initState() {
    List.generate(widget.numberOfParticles, (index) {
      particles.add(ParticleModel(random));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LoopAnimationBuilder<int>(
      tween: IntTween(begin: 1, end: 30),
      duration: Duration(seconds: 30),
      builder: (context, value, _) {
        Duration duration = Duration(seconds: value);
        _simulateParticles(duration);
        return CustomPaint(
          painter: ParticlePainter(particles, duration),
        );
      },
    );

    /*return Rendering(
      startTime: Duration(seconds: 30),
      onTick: _simulateParticles,
      builder: (context, time) {
        return CustomPaint(
          painter: ParticlePainter(particles, time),
        );
      },
    );*/
  }

  _simulateParticles(Duration time) {
    particles.forEach((particle) => particle.maintainRestart(time));
  }
}

class ParticleModel {
  late MovieTween tween;
  late double size;
  late double progress;
  DateTime startTime = DateTime.now();
  //AnimationProgress animationProgress;
  Random random;

  ParticleModel(this.random) {
    restart();
  }

  restart({Duration time = Duration.zero}) {
    final startPosition = Offset(-0.2 + 1.4 * random.nextDouble(), 1.2);
    final endPosition = Offset(-0.2 + 1.4 * random.nextDouble(), -0.2);
    final duration = Duration(milliseconds: 20000 + random.nextInt(6000));

    tween = MovieTween()
      ..tween<double>('x', Tween(begin: startPosition.dx, end: endPosition.dx),
          curve: Curves.easeInOutSine, duration: duration)
      ..tween<double>('y', Tween(begin: startPosition.dy, end: endPosition.dy),
          curve: Curves.easeIn, duration: duration);

    progress = getProgress(duration);
    size = 0.02 + random.nextDouble() * 0.35;
  }

  double getProgress(Duration duration) {
    final Duration diff = DateTime.now().difference(startTime);
    return (diff.inMilliseconds / duration.inMilliseconds)
        .clamp(0.0, 1.0)
        .toDouble();
  }

  maintainRestart(Duration time) {
    if (getProgress(time) == 1.0) {
      restart(time: time);
    }
  }
}

class ParticlePainter extends CustomPainter {
  List<ParticleModel> particles;
  Duration time;

  ParticlePainter(this.particles, this.time);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = Colors.white.withAlpha(50);

    particles.forEach((particle) {
      var progress = particle.getProgress(time);
      final animation = particle.tween.transform(progress);
      final position = Offset(
          animation.get('x') * size.width, animation.get('y') * size.height);
      canvas.drawCircle(position, size.width * 0.2 * particle.size, paint);
    });
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
