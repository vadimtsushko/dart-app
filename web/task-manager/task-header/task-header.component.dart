import 'package:angular2/angular2.dart'
    show Component, Input, Output, EventEmitter, ViewEncapsulation;

@Component(
    selector: 'task-header',
    templateUrl: 'task-header.template.html',
    styleUrls: const ['task-header.style.css'],
    encapsulation: ViewEncapsulation.None
)
class TaskHeaderComponent {
  @Input()
  var task;
  @Output()
  EventEmitter addTask = new EventEmitter();
  var inputValue;

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