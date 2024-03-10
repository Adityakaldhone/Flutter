import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WhatsAppHome(),
    );
  }
}

class WhatsAppHome extends StatelessWidget {
  const WhatsAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    // WidgetsBinding.instance?.addPostFrameCallback((_) {
    //   _buildBottomSheet(context);
    // });

    return Scaffold(
      backgroundColor: const Color(0xFF001F3F),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                SizedBox(
                  height: 100,
                ),
                Icon(Icons.arrow_back, color: Colors.white, size: 30,),
                Spacer(),
                Text("Profile", style: TextStyle(color: Colors.white, fontSize: 25)),
                Spacer(),
                Text("Save", style: TextStyle(color: Colors.white, fontSize: 25)),
              ],
            ),
          ),
           const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: ProfileAvatar(
                  size: 120,
                  hasEditButton: true,
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                
                height: 700,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
                ),
                child: const HomeScreen(),
              ),
            ),
          ),
        ],
      ),
    );
  }

}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            isScrollable: true,
            controller: _tabController,
            indicatorColor: Colors.blue,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            tabs: const [
                 Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.0), // Adjust the horizontal spacing
                child: Tab(child: Text("Details", style: TextStyle(fontSize: 20),),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0), // Adjust the horizontal spacing
                child: Tab(child: Text("Settings", style: TextStyle(fontSize: 20),),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0), // Adjust the horizontal spacing
                child: Tab(child: Text("Forum", style: TextStyle(fontSize: 20),),),
              ),
          
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                SingleChildScrollView(child: ChatScreen()),
                CallsScreen(),
                StatusScreen(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileAvatar extends StatefulWidget {
  final double size;
  final bool hasEditButton;

  const ProfileAvatar({
    super.key,
    required this.size,
    this.hasEditButton = false,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ProfileAvatarState createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(widget.size / 2),
          child: _selectedImage != null
              ? Image.file(
                  File(_selectedImage!.path),
                  width: widget.size,
                  height: widget.size,
                  fit: BoxFit.cover,
                )
              : Container(
                  width: widget.size,
                  height: widget.size,
                  color: Colors.grey,
                ),
        ),
        if (widget.hasEditButton)
          Container(
            margin: const EdgeInsets.only(bottom: 8, right: 8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.edit,
                color: Colors.white,
              ),
              onPressed: _pickImage,
            ),
          ),
      ],
    );
  }

  Future<void> _pickImage() async {
    final pickedImage =
        await _imagePicker.pickImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _selectedImage = pickedImage;
      });
    }
  }
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 200,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Type your message...',
          ),
        ),
        // Add other chat widgets as needed
      ],
    );
  }
}

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Status Screen - Stateful"),
    );
  }
}

class CallsScreen extends StatefulWidget {
  const CallsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CallsScreenState createState() => _CallsScreenState();
}

class _CallsScreenState extends State<CallsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Calls Screen - Stateful"),
    );
  }
}
