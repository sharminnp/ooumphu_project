const String loginMutation = r'''
mutation LoginByUsernameEmailPhone($usernameEmailPhone: String!, $password: String!) {
  loginByUsernameEmailPhone(usernameEmailPhone: $usernameEmailPhone, password: $password) {
    token
    user {
      id    
      username
      firstName
      lastName
      email
      isStaff
      isActive
      dateJoined
    }
  }
}
''';