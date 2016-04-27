import 'package:test/test.dart';
import 'package:angular2_testing/angular2_testing.dart' ;
import '../web/task-manager/task-manager.component.dart' show TaskManagerComponent;

main(){
  initAngularTests();
  var context;
  ngSetUp((TestComponentBuilder tcb) async {
    var fixture = await tcb
        .overrideTemplate(TaskManagerComponent, '<div></div>')
        .createAsync(TaskManagerComponent);
    context = fixture.debugElement.componentInstance;;
  });
  test('firs test ',(){
    expect(context.title,equals('Задачи'));
  });
}