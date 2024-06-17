void outer(String name, String id) {
  String inner() {
    var nameParts = name.split(' ');
    var firstName = nameParts[0];
    var lastName = nameParts[1];

    var agentName = '${lastName[0]}.${firstName}';

    return 'Hello Agent $agentName your id is $id';
  }
  print(inner());
}


