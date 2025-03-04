import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});
  static const String routeName = 'buttons_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Botones')),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
            const ElevatedButton(onPressed: null, child: Text('Elevated null')),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_a_photo_outlined),
              label: const Text('Photo'),
            ),

            FilledButton(onPressed: () {}, child: Text('Filled')),
            FilledButton.icon(
              onPressed: () {},
              icon: Icon(Icons.add),
              label: Text('Add'),
            ),

            FilledButton.tonal(
              onPressed: null,
              child: const Text('Filled Tonal'),
            ),
            OutlinedButton(onPressed: null, child: const Text('Outlined')),
            OutlinedButton.icon(
              onPressed: null,
              icon: Icon(Icons.access_alarm_rounded),
              label: const Text('Outlined'),
            ),
            TextButton(onPressed: null, child: const Text('Text Button')),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) => colors.primary,
                ),
                iconColor: MaterialStateProperty.resolveWith(
                  (states) => colors.onSecondary,
                ),
              ),
            ),
            _CustomButton(),
            // Y sus variaciones con íconos
          ],
        ),
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text(
              'Custom Button',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
