class ChatModel{
  final String name;
  final String message;
  final String time;
  final String avatarUrl;


  ChatModel({this.name,this.message,this.time,this.avatarUrl});
}

  List<ChatModel> tList = [];
  List<ChatModel> list = [
    new ChatModel(
      name: 'Abdul Hadi',
      message: 'As salam o alaikum',
      time: '1:00',
      avatarUrl: 'https://i1.rgstatic.net/ii/profile.image/514565550743552-1499693395086_Q128/Kok-Yuen_Ho.jpg'
      
    ),
    new ChatModel(
      name: 'Navaid',
      message: 'Walaikum as salam',
      time: '1:15',
      avatarUrl: 'https://i1.rgstatic.net/ii/profile.image/514565550743552-1499693395086_Q128/Kok-Yuen_Ho.jpg'
      
    )
  ];
