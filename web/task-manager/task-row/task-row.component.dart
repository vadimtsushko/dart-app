import 'package:angular2/angular2.dart'
    show Component, Input, Output, EventEmitter;
import 'package:angular2/common.dart' show NgFor,NgIf;

@Component(
    selector: 'task-row',
    templateUrl: 'task-row.template.html',
    styleUrls: const ['task-row.style.css'],
    directives: const [NgFor,NgIf]
)
class TaskRowComponent {
  @Input()
  var task;
  @Input()
  int position;
  @Output()
  EventEmitter<int> removeTask = new EventEmitter();

  bool showClose = false;
}