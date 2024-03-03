import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';

class Todolist extends StatefulWidget {
  const Todolist({super.key});

  @override
  State<Todolist> createState() => _TodolistState();
}

class _TodolistState extends State<Todolist> {
  void date() async {
    DateTime? datetime = await showDatePicker(
        context: context, firstDate: DateTime(2000), lastDate: DateTime(2030));
    if (datetime != null) {
      setState(() {
        _datecontroller.text = DateFormat('yyyy-MM-dd').format(datetime);
      });
    }
  }

  final ImagePicker picker = ImagePicker();

  bool flag = false;
  final TextEditingController _datecontroller = TextEditingController();
  final FocusNode _dateNode = FocusNode();

  final TextEditingController _titlecontroller = TextEditingController();
  final FocusNode _titlenode = FocusNode();

  final TextEditingController _descriptionController = TextEditingController();
  final FocusNode _descriptionNode = FocusNode();

  List<Color?> colorList = const [
    Color(0xffFAE8E8),
    Color(0xffE8EDFA),
    Color(0xffFAF9E8),
    Color(0xffFAE8FA)
  ];
  List<ToDoListModel> task = [];
  int currentIndex = -1;

  void addTask(BuildContext context) {
    showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
            margin: const EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  child: Text(
                    "Create Task",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic,
                        fontSize: 25),
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      "Title",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: TextField(
                    controller: _titlecontroller,
                    focusNode: _titlenode,
                    expands: true,
                    maxLines: null,
                    minLines: null,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(8),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(0, 139, 148, 1),
                                style: BorderStyle.solid,
                                width: 1)),
                        hintText: "Enter title",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(0, 139, 148, 1),
                                style: BorderStyle.solid,
                                width: 1))),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      "Enter Description",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  height: 100,
                  child: TextField(
                    controller: _descriptionController,
                    focusNode: _descriptionNode,
                    expands: true,
                    maxLines: null,
                    minLines: null,
                    // focusNode: _descriptionNode,
                    keyboardType: TextInputType.emailAddress,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(0, 139, 148, 1),
                                style: BorderStyle.solid,
                                width: 1)),
                        hintText: "Enter Description",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(0, 139, 148, 1),
                                style: BorderStyle.solid,
                                width: 1.5))),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      "Date",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                  ],
                ),
                TextField(
                  controller: _datecontroller,
                  focusNode: _dateNode,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(
                          color: Color.fromRGBO(0, 139, 148, 1),
                        )),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.amber,
                            width: 2.0,
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignCenter)),
                    hintText: "Choose Date",
                    suffixIcon: const Icon(Icons.calendar_today),
                  ),
                  onTap: () {
                    date();
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    elevation: const MaterialStatePropertyAll(40),
                    backgroundColor:
                        const MaterialStatePropertyAll(Color(0xff008B94)),
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    minimumSize: MaterialStateProperty.all(const Size(200, 60)),
                  ),
                  onPressed: () {
                    if (flag == false &&
                        _titlecontroller.text != "" &&
                        _datecontroller.text != "" &&
                        _descriptionController.text != "") {
                      task.add(ToDoListModel(
                        title: _titlecontroller.text,
                        description: _descriptionController.text,
                        date: _datecontroller.text,
                      ));
                    } else if (flag == true) {
                      task[currentIndex].title = _titlecontroller.text;
                      task[currentIndex].description =
                          _descriptionController.text;
                      task[currentIndex].date = _datecontroller.text;
                      addTask(context);
                      Navigator.pop(context);
                    }
                    setState(() {
                      flag = false;
                      if (_titlecontroller.text != "" &&
                          _datecontroller.text != "" &&
                          _descriptionController.text != "") {
                        currentIndex = -1;
                        _titlecontroller.clear();
                        _datecontroller.clear();
                        _descriptionController.clear();
                        Navigator.pop(context);
                      } else {
                        printSnackbar();
                      }
                    });
                    if (_titlecontroller.text != "" &&
                        _datecontroller.text != "" &&
                        _descriptionController.text != "") {
                      Navigator.pop(context);
                    }
                  },
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      backgroundColor: Color(0xff008B94),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        flexibleSpace: Container(
          width: double.infinity,
          height: 35,
          color: Colors.white,
        ),
        foregroundColor: Colors.white,
        title: const Text(
          "To-do list",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 35),
        ),
        backgroundColor: const Color(0xff02A7B1),
      ),
      body: ListView.builder(
        itemCount: task.length,
        itemBuilder: (BuildContext context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Card(
                elevation: 30,
                child: Container(
                  key: UniqueKey(),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: colorList[index % colorList.length],
                  ),
                  height: 170,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 70,
                              width: 70,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: Image.asset(
                                  height: 60,
                                  width: 60,
                                  'assets/photos/aditya.png'),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(task[index].date),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 50,
                              width: 280,
                              child: Text(
                                task[index].title,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                            ),
                            Expanded(
                              child: SizedBox(
                                height: 50,
                                width: 280,
                                child: Text(
                                  task[index].description,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                ),
                              ),
                            ),
                            Row(
                              //mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const SizedBox(width: 110),
                                IconButton(
                                  onPressed: () {
                                    flag = true;
                                    currentIndex = index;
                                    _datecontroller.text = task[index].date;
                                    _titlecontroller.text = task[index].title;
                                    _descriptionController.text =
                                        task[index].description;
                                    addTask(context);
                                  },
                                  icon: const Icon(Icons.edit),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                IconButton(
                                  onPressed: () {
                                    currentIndex = index;
                                    deleteTask(index);
                                  },
                                  icon: const Icon(Icons.delete),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            addTask(context);
          });
        },
        elevation: 30,
        child: const Icon(Icons.add),
      ),
    );
  }

  void deleteTask(int currentIndex) {
    setState(() {
      if (task.isNotEmpty && currentIndex != -1) {
        task.removeAt(currentIndex);
      }
    });
  }

  void printSnackbar() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const Text('All Fields are mandatory'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Close the alert dialog
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}

class ToDoListModel {
  String title;
  String description;
  String date;

  ToDoListModel(
      {required this.title, required this.description, required this.date});
}
