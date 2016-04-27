import 'package:angular2/angular2.dart' show Component, ViewEncapsulation;
import 'task-row/task-row.component.dart' show TaskRowComponent;
import 'task-header/task-header.component.dart' show TaskHeaderComponent;

@Component(
    selector: 'task-manager',
    templateUrl: 'task-manager.template.html',
    directives: const [TaskRowComponent, TaskHeaderComponent],
    encapsulation: ViewEncapsulation.None
)
class TaskManagerComponent {
  String title = 'Задачи';
  List tasks = [
    {
      'title':'Написать user-card',
      'tags':[ {
        'class':'label-success',
        'title':'готово'
      },
      {
        'class':'label-warning',
        'title':'улучшение'
      }
      ]
    },
    {
      'title':'Написать user-list',
      'tags':[ {
        'class':'label-success',
        'title':'готово'
      },
      {
        'class':'label-warning',
        'title':'улучшение'
      }
      ]
    },
    {
      'title':'Написать tags-manager',
      'tags':[ {
        'class':'label-success',
        'title':'готово'
      },
      {
        'class':'label-warning',
        'title':'улучшение'
      }
      ]
    }
  ];

  void removeTask(int position) {
    this.tasks.removeAt(position);
  }

  void removeTag(options) {
    this.tasks[options['position']]['tags'].removeAt(options['tagPosition']);
  }

  void addTask(tag) {
    this.tasks.add(tag);
  }
}