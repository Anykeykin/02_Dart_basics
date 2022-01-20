class User {
  final String email;
  User(this.email);
}

class AdminUser extends User with getMailSystem {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

mixin getMailSystem on User {
  search() {
    final strArr = email.split('');
    List arr = [];
    String arrRes = '';
    for (int i = 0; i < strArr.length; i++) {
      if (strArr[i] == '@') {
        arr = strArr.sublist(i + 1);
        arrRes = arr.join();
      }
    }

    return arrRes;
  }
}

class UserManager<T extends User> {
  final List users = [];
  adderUser(email) {
    users.add(email);
  }

  deleterUser(email) {
    for (int elem = 0; elem < users.length; elem++) {
      if (users[elem] == email) {
        users.removeAt(elem);
      }
    }
  }

  resultUser() {
    for (int elem = 0; elem < users.length; elem++) {
      print(users[elem]);
    }
    // return users;
  }
}

void main() {
  final user = AdminUser('deadfrostviper@gmail.com');
  print(user.search());
  final user0 = UserManager();
  user0.adderUser('deadfrostviper@gmail.com');
  final user1 = UserManager();
  user1.adderUser('gamespiritgamer@gmail.com');
  print(user1.resultUser());
}
