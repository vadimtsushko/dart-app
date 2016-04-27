import 'package:angular2/angular2.dart'
    show Component, Input, Output, EventEmitter,ViewEncapsulation;

@Component(
    selector: 'task-row',
    templateUrl: 'task-row.template.html',
    styleUrls: const ['task-row.style.css'],
    encapsulation: ViewEncapsulation.None
)
class TaskRowComponent {
  @Input()
  var task;
  @Input()
  int position;
  @Output()
  EventEmitter<int> removeTask = new EventEmitter();
  @Output()
  EventEmitter<int> removeTag = new EventEmitter();



  bool showClose = false;
}