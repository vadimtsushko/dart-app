import 'package:angular2/angular2.dart'
    show Component, Input, Output, EventEmitter;
import 'package:angular2/common.dart' show NgFor;

@Component(
    selector: 'task-header',
    templateUrl: 'task-header.template.html',
    styleUrls: const ['task-header.style.css'],
    directives: const [NgFor]
)
class TaskHeaderComponent {
  @Input()
  var task;
  @Output()
  EventEmitter addTask = new EventEmitter();

  List tags = [
    {
      'class':'label-success',
      'title':'готово',
      'isChecked':false
    },
    {
      'class':'label-warning',
      'title':'улучшение',
      'isChecked':false
    },
    {
      'class':'label-info',
      'title':'в процессе',
      'isChecked':false
    },
    {
      'class':'label-danger',
      'title':'баг',
      'isChecked':false
    }
  ];

  addTagsToTask(input) {
    var filteredTags = this.tags.where((tag) {
      return tag['isChecked'];
    }).toList();
    addTask.emit({
      'title':input.value,
      'tags':filteredTags
    });
    input.value = '';
    this.tags.forEach((tag) {
      tag['isChecked'] = false;
    });
  }
}