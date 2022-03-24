import 'Chat_Modal.dart';

class ChatHelper {
  static var chatList = [
    ChatModal('Sarvagya', 'Cute', '30/01/2022'),
    ChatModal('Naruto', 'Dattebayo', '01/11/2020'),
    ChatModal('Takemichi', 'Draken bhai lollipop', '30/12/2021')
  ];

  static ChatModal getChatItem(int index) {
    return chatList[index];
  }

  static var itemCount = chatList.length;
}
