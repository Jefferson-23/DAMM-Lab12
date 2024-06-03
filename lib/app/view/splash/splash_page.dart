import 'package:flutter/material.dart';
import 'package:mi_app02/app/view/components/h1.dart';
import 'package:mi_app02/app/view/components/shape.dart';
import 'package:mi_app02/app/view/task_list/task_list_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Row(
            children: [
              Shape(),
            ],
          ),
          const SizedBox(height: 79),
          Image.asset(
            'assets/images/onboarding-image.png',
            width: 180,
            height: 168,
          ),
          /*
          Text('Lista de Tareas',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  )),
          */
          const SizedBox(height: 99),
          const H1('Lista de Tareas'),
          const SizedBox(height: 21),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 32)),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const TaskListPage();
              }));
            },
            child: const Text(
              'La mejor forma para que no se te olvide nada es anotarlo.Guarda tus tareas y ve completando poco a poco para aumentar tu productividad.',
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

/*
 void _showNewTaskModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => const _NewTaskModal());
  }

  class _NewTaskModal extends StatelessWidget {
    const _NewTaskModal({super.key});

    @override
    Widget build(BuildContext context) {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            H1('Nueva tarea'),
            TextField(),
            ElevatedButton(
              onPressed() {},
              child: Text('Guardar'),
            )
          ],
        )
      );
    }
  }
*/  