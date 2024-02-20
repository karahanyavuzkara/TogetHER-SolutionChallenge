import 'package:flutter/material.dart';
List<String> _roomTypes = ['Cloud', 'Android','Flutter', 'Java'];


class ForumSearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade200,
        leading: IconButton(
          icon: Icon(Icons.search),
          color: Colors.white,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.border_color), // Replace with your desired icon
            color: Colors.white,
            onPressed: () {
              // Handle button press functionality here
            },
          ),
        ],
        title: Container(
          height: 30,
          child: Row(
            // Wrap the TextField and new IconButton in a Row for horizontal alignment
            children: [
              Expanded(
                // Use Expanded widget to ensure TextField fills available space
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    hintText: 'Search',
                    fillColor: Colors.white.withOpacity(0.7),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.pink.shade200),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.pink.shade50,
              Colors.pink.shade200,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildBox('@bilge11', 'FirebaseCloudMessaging', "I'm trying to send notifications from an Node.js API to a Flutter application. First, I want to make my application able to receive notifications from Firebase.", 10),
            _buildBox('@janemaxey', 'Problem with com.google.gson after upgrading gradle?', 'After upgrading Gradle to 8.2.1, Kotlin 1.9.21 and Java 17 I have an error like: java.lang.Class...', 5),
            SizedBox(height: 8.0),

            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center, // Horizontally center column contents
                children: [
                  Text(
                    'RECOMMENDED ROOMS',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0,
                    ),
                  ),

                  SizedBox(height: 8.0), // Maintain vertical spacing after title

                  Container(
                    height: 100.0, // Set appropriate height for scrollable area
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: _roomTypes.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add horizontal padding
                        child: _buildSmallBox(_roomTypes[index]),

                      ),
                      separatorBuilder: (context, index) => SizedBox(width: 16.0), // Add spacer between room boxes
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBox(String nickname, String title, String content, int answerCount) {
    return Container(
      width: 140.0,
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        border: Border.all(
          color: Colors.red.shade200,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.pink.shade200,
            spreadRadius: 5,
            blurRadius: 15,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 10.0,
                  backgroundImage: AssetImage('assets/profile_picture.jpg'),
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  child: Text('A'),
                ),
                SizedBox(width: 10), // Add some spacing between the elements
                Text(
                  nickname,
                  style: TextStyle(
                    color: Colors.pink.shade300,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 2.0),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.pink.shade300,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 2.0),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    content,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.pink.shade300,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1.0),
          Padding(
            padding: const EdgeInsets.fromLTRB(4.0, 0.0, 10.0, 4.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Text(
                '($answerCount) yanıt',
                style: TextStyle(
                  color: Colors.pink.shade300,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 20.0, 10.0), // Her kenardan 8px boşluk ekle
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Text('Devamını Oku', style: TextStyle(color: Colors.pink.shade300)),
            ),
          ),

        ],
      ),
    );
  }

  Widget _buildSmallBox(String title) {
    return Container(
      width: 130.0,
      height: 110.0,
      margin: EdgeInsets.symmetric(vertical: 4.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        border: Border.all(
          color: Colors.red.shade200,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.pink.shade200.withOpacity(0.7),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: Colors.red.shade200,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
