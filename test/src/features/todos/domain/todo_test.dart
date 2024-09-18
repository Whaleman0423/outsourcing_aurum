// import 'package:flutter_test/flutter_test.dart';
// import 'package:todo_list_example_with_riverpod_architecture/src/features/todos/domain/todo.dart';

// void main() {
//   group('Todo', () {
//     test('建立 Todo 實例', () {
//       const todo = Todo(id: '1', description: '測試待辦事項');
//       expect(todo.id, '1');
//       expect(todo.description, '測試待辦事項');
//       expect(todo.isCompleted, false);
//     });

//     test('建立已完成的 Todo 實例', () {
//       const todo = Todo(id: '2', description: '已完成的待辦事項', isCompleted: true);
//       expect(todo.id, '2');
//       expect(todo.description, '已完成的待辦事項');
//       expect(todo.isCompleted, true);
//     });

//     test('從 JSON 創建 Todo', () {
//       final json = {
//         'id': '3',
//         'description': 'JSON 待辦事項',
//         'isCompleted': false
//       };
//       final todo = Todo.fromJson(json);
//       expect(todo.id, '3');
//       expect(todo.description, 'JSON 待辦事項');
//       expect(todo.isCompleted, false);
//     });

//     test('將 Todo 轉換為 JSON', () {
//       const todo = Todo(id: '4', description: '待轉換的待辦事項', isCompleted: true);
//       final json = todo.toJson();
//       expect(json, {'id': '4', 'description': '待轉換的待辦事項', 'isCompleted': true});
//     });

//     test('嘗試修改 description 與 isCompleted', () {
//       const todo = Todo(id: '5', description: '原始待辦事項');
//       expect(todo.description, '原始待辦事項');
//       expect(todo.isCompleted, false);

//       final updatedTodo =
//           todo.copyWith(description: '更新後的待辦事項', isCompleted: true);
//       expect(updatedTodo.id, '5');
//       expect(updatedTodo.description, '更新後的待辦事項');
//       expect(updatedTodo.isCompleted, true);

//       // 確保原始 Todo 物件沒有被修改
//       expect(todo.description, '原始待辦事項');
//       expect(todo.isCompleted, false);
//     });
//   });
// }
