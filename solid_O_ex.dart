abstract class NotificationSender {
  void send(String message);
}

class EmailSender implements NotificationSender {
  @override
  void send(String message) => print("Sending Email: $message");
}

class SmsSender implements NotificationSender{
    void send(String message) => print("Sending SMS: $message");
}

class TelegramSender implements NotificationSender {
  void send(String message) => print("Sending Telegram: $message");
}


class WhatsAppSender implements NotificationSender {
  @override
  void send(String message) => print("Sending WhatsApp: $message");
}

void main() {
  List<NotificationSender> notifications = [
    EmailSender(),
    WhatsAppSender(),
    TelegramSender(),
  ];

  for (var notify in notifications) {
    notify.send("Hello Ahmed");
  }
}
