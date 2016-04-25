import 'package:angular2/angular2.dart';
import 'package:angular2/common.dart' show NgFor;
import 'task-row/task-row.component.dart' show TaskRowComponent;
import 'task-header/task-header.component.dart' show TaskHeaderComponent;

@Component(
    selector: 'task-manager',
    templateUrl: 'task-manager.template.html',
    directives: const [NgFor, TaskRowComponent, TaskHeaderComponent]
)
class TaskManagerComponent {
  String title = 'Задачи';
  List tasks = [
    {
      'title':'Написать user-card',
      'tags':[ {
        'class':'label-success',
        'title':'готово',
        'isChecked':true
      },
      {
        'class':'label-warning',
        'title':'улучшение',
        'isChecked':false
      }
      ]
    },
    {
      'title':'Написать user-list',
      'tags':[ {
        'class':'label-success',
        'title':'готово',
        'isChecked':true
      },
      {
        'class':'label-warning',
        'title':'улучшение',
        'isChecked':false
      }
      ]
    },
    {
      'title':'Наприсать tags-manager',
      'tags':[ {
        'class':'label-success',
        'title':'готово',
        'isChecked':true
      },
      {
        'class':'label-warning',
        'name':'улучшение',
        'isChecked':false
      }
      ]
    }
  ];

  void removeTask(int position) {
    this.tasks.removeAt(position);
  }

  void addTask(tag) {
    this.tasks.add(tag);
  }
}