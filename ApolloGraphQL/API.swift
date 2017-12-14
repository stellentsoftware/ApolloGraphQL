//  This file was automatically generated and should not be edited.

import Apollo

public final class UpdateProfileMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateProfile($_id: ID, $loginType: String, $email: String, $name: String, $rank: String, $relegiousObservance: String, $yearsOfExperience: String, $state: String, $bio: String, $profilePic: String) {\n  updateProfile(_id: $_id, loginType: $loginType, email: $email, name: $name, rank: $rank, relegiousObservance: $relegiousObservance, yearsOfExperience: $yearsOfExperience, state: $state, bio: $bio, profilePic: $profilePic) {\n    __typename\n    ...UserDetails\n  }\n}"

  public static var requestString: String { return operationString.appending(UserDetails.fragmentString) }

  public var _id: GraphQLID?
  public var loginType: String?
  public var email: String?
  public var name: String?
  public var rank: String?
  public var relegiousObservance: String?
  public var yearsOfExperience: String?
  public var state: String?
  public var bio: String?
  public var profilePic: String?

  public init(_id: GraphQLID? = nil, loginType: String? = nil, email: String? = nil, name: String? = nil, rank: String? = nil, relegiousObservance: String? = nil, yearsOfExperience: String? = nil, state: String? = nil, bio: String? = nil, profilePic: String? = nil) {
    self._id = _id
    self.loginType = loginType
    self.email = email
    self.name = name
    self.rank = rank
    self.relegiousObservance = relegiousObservance
    self.yearsOfExperience = yearsOfExperience
    self.state = state
    self.bio = bio
    self.profilePic = profilePic
  }

  public var variables: GraphQLMap? {
    return ["_id": _id, "loginType": loginType, "email": email, "name": name, "rank": rank, "relegiousObservance": relegiousObservance, "yearsOfExperience": yearsOfExperience, "state": state, "bio": bio, "profilePic": profilePic]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateProfile", arguments: ["_id": GraphQLVariable("_id"), "loginType": GraphQLVariable("loginType"), "email": GraphQLVariable("email"), "name": GraphQLVariable("name"), "rank": GraphQLVariable("rank"), "relegiousObservance": GraphQLVariable("relegiousObservance"), "yearsOfExperience": GraphQLVariable("yearsOfExperience"), "state": GraphQLVariable("state"), "bio": GraphQLVariable("bio"), "profilePic": GraphQLVariable("profilePic")], type: .object(UpdateProfile.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateProfile: UpdateProfile? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateProfile": updateProfile.flatMap { $0.snapshot }])
    }

    public var updateProfile: UpdateProfile? {
      get {
        return (snapshot["updateProfile"] as? Snapshot).flatMap { UpdateProfile(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateProfile")
      }
    }

    public struct UpdateProfile: GraphQLSelectionSet {
      public static let possibleTypes = ["userType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .scalar(GraphQLID.self)),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("email", type: .scalar(String.self)),
        GraphQLField("loginType", type: .scalar(String.self)),
        GraphQLField("rank", type: .scalar(String.self)),
        GraphQLField("relegiousObservance", type: .scalar(String.self)),
        GraphQLField("isSaved", type: .scalar(String.self)),
        GraphQLField("yearsOfExperience", type: .scalar(String.self)),
        GraphQLField("state", type: .scalar(String.self)),
        GraphQLField("bio", type: .scalar(String.self)),
        GraphQLField("loginStatus", type: .scalar(Bool.self)),
        GraphQLField("profilePic", type: .scalar(String.self)),
        GraphQLField("deviceToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID? = nil, name: String? = nil, email: String? = nil, loginType: String? = nil, rank: String? = nil, relegiousObservance: String? = nil, isSaved: String? = nil, yearsOfExperience: String? = nil, state: String? = nil, bio: String? = nil, loginStatus: Bool? = nil, profilePic: String? = nil, deviceToken: String? = nil) {
        self.init(snapshot: ["__typename": "userType", "_id": id, "name": name, "email": email, "loginType": loginType, "rank": rank, "relegiousObservance": relegiousObservance, "isSaved": isSaved, "yearsOfExperience": yearsOfExperience, "state": state, "bio": bio, "loginStatus": loginStatus, "profilePic": profilePic, "deviceToken": deviceToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return snapshot["_id"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var email: String? {
        get {
          return snapshot["email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var loginType: String? {
        get {
          return snapshot["loginType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "loginType")
        }
      }

      public var rank: String? {
        get {
          return snapshot["rank"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "rank")
        }
      }

      public var relegiousObservance: String? {
        get {
          return snapshot["relegiousObservance"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "relegiousObservance")
        }
      }

      public var isSaved: String? {
        get {
          return snapshot["isSaved"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "isSaved")
        }
      }

      public var yearsOfExperience: String? {
        get {
          return snapshot["yearsOfExperience"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "yearsOfExperience")
        }
      }

      public var state: String? {
        get {
          return snapshot["state"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "state")
        }
      }

      public var bio: String? {
        get {
          return snapshot["bio"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "bio")
        }
      }

      public var loginStatus: Bool? {
        get {
          return snapshot["loginStatus"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "loginStatus")
        }
      }

      public var profilePic: String? {
        get {
          return snapshot["profilePic"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "profilePic")
        }
      }

      public var deviceToken: String? {
        get {
          return snapshot["deviceToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deviceToken")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var userDetails: UserDetails {
          get {
            return UserDetails(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }
}

public final class ListUsersQuery: GraphQLQuery {
  public static let operationString =
    "query ListUsers($limit: Int) {\n  listUsers(limit: $limit) {\n    __typename\n    ...UserDetails\n  }\n}"

  public static var requestString: String { return operationString.appending(UserDetails.fragmentString) }

  public var limit: Int?

  public init(limit: Int? = nil) {
    self.limit = limit
  }

  public var variables: GraphQLMap? {
    return ["limit": limit]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("listUsers", arguments: ["limit": GraphQLVariable("limit")], type: .list(.object(ListUser.selections))),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(listUsers: [ListUser?]? = nil) {
      self.init(snapshot: ["__typename": "Query", "listUsers": listUsers.flatMap { $0.map { $0.flatMap { $0.snapshot } } }])
    }

    public var listUsers: [ListUser?]? {
      get {
        return (snapshot["listUsers"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { ListUser(snapshot: $0) } } }
      }
      set {
        snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "listUsers")
      }
    }

    public struct ListUser: GraphQLSelectionSet {
      public static let possibleTypes = ["userType"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("_id", type: .scalar(GraphQLID.self)),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("email", type: .scalar(String.self)),
        GraphQLField("loginType", type: .scalar(String.self)),
        GraphQLField("rank", type: .scalar(String.self)),
        GraphQLField("relegiousObservance", type: .scalar(String.self)),
        GraphQLField("isSaved", type: .scalar(String.self)),
        GraphQLField("yearsOfExperience", type: .scalar(String.self)),
        GraphQLField("state", type: .scalar(String.self)),
        GraphQLField("bio", type: .scalar(String.self)),
        GraphQLField("loginStatus", type: .scalar(Bool.self)),
        GraphQLField("profilePic", type: .scalar(String.self)),
        GraphQLField("deviceToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID? = nil, name: String? = nil, email: String? = nil, loginType: String? = nil, rank: String? = nil, relegiousObservance: String? = nil, isSaved: String? = nil, yearsOfExperience: String? = nil, state: String? = nil, bio: String? = nil, loginStatus: Bool? = nil, profilePic: String? = nil, deviceToken: String? = nil) {
        self.init(snapshot: ["__typename": "userType", "_id": id, "name": name, "email": email, "loginType": loginType, "rank": rank, "relegiousObservance": relegiousObservance, "isSaved": isSaved, "yearsOfExperience": yearsOfExperience, "state": state, "bio": bio, "loginStatus": loginStatus, "profilePic": profilePic, "deviceToken": deviceToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return snapshot["_id"] as? GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "_id")
        }
      }

      public var name: String? {
        get {
          return snapshot["name"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "name")
        }
      }

      public var email: String? {
        get {
          return snapshot["email"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "email")
        }
      }

      public var loginType: String? {
        get {
          return snapshot["loginType"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "loginType")
        }
      }

      public var rank: String? {
        get {
          return snapshot["rank"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "rank")
        }
      }

      public var relegiousObservance: String? {
        get {
          return snapshot["relegiousObservance"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "relegiousObservance")
        }
      }

      public var isSaved: String? {
        get {
          return snapshot["isSaved"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "isSaved")
        }
      }

      public var yearsOfExperience: String? {
        get {
          return snapshot["yearsOfExperience"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "yearsOfExperience")
        }
      }

      public var state: String? {
        get {
          return snapshot["state"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "state")
        }
      }

      public var bio: String? {
        get {
          return snapshot["bio"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "bio")
        }
      }

      public var loginStatus: Bool? {
        get {
          return snapshot["loginStatus"] as? Bool
        }
        set {
          snapshot.updateValue(newValue, forKey: "loginStatus")
        }
      }

      public var profilePic: String? {
        get {
          return snapshot["profilePic"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "profilePic")
        }
      }

      public var deviceToken: String? {
        get {
          return snapshot["deviceToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "deviceToken")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(snapshot: snapshot)
        }
        set {
          snapshot += newValue.snapshot
        }
      }

      public struct Fragments {
        public var snapshot: Snapshot

        public var userDetails: UserDetails {
          get {
            return UserDetails(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }
      }
    }
  }
}

public struct UserDetails: GraphQLFragment {
  public static let fragmentString =
    "fragment UserDetails on userType {\n  __typename\n  _id\n  name\n  email\n  loginType\n  rank\n  relegiousObservance\n  isSaved\n  yearsOfExperience\n  state\n  bio\n  loginStatus\n  profilePic\n  deviceToken\n}"

  public static let possibleTypes = ["userType"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("_id", type: .scalar(GraphQLID.self)),
    GraphQLField("name", type: .scalar(String.self)),
    GraphQLField("email", type: .scalar(String.self)),
    GraphQLField("loginType", type: .scalar(String.self)),
    GraphQLField("rank", type: .scalar(String.self)),
    GraphQLField("relegiousObservance", type: .scalar(String.self)),
    GraphQLField("isSaved", type: .scalar(String.self)),
    GraphQLField("yearsOfExperience", type: .scalar(String.self)),
    GraphQLField("state", type: .scalar(String.self)),
    GraphQLField("bio", type: .scalar(String.self)),
    GraphQLField("loginStatus", type: .scalar(Bool.self)),
    GraphQLField("profilePic", type: .scalar(String.self)),
    GraphQLField("deviceToken", type: .scalar(String.self)),
  ]

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: GraphQLID? = nil, name: String? = nil, email: String? = nil, loginType: String? = nil, rank: String? = nil, relegiousObservance: String? = nil, isSaved: String? = nil, yearsOfExperience: String? = nil, state: String? = nil, bio: String? = nil, loginStatus: Bool? = nil, profilePic: String? = nil, deviceToken: String? = nil) {
    self.init(snapshot: ["__typename": "userType", "_id": id, "name": name, "email": email, "loginType": loginType, "rank": rank, "relegiousObservance": relegiousObservance, "isSaved": isSaved, "yearsOfExperience": yearsOfExperience, "state": state, "bio": bio, "loginStatus": loginStatus, "profilePic": profilePic, "deviceToken": deviceToken])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: GraphQLID? {
    get {
      return snapshot["_id"] as? GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "_id")
    }
  }

  public var name: String? {
    get {
      return snapshot["name"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "name")
    }
  }

  public var email: String? {
    get {
      return snapshot["email"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "email")
    }
  }

  public var loginType: String? {
    get {
      return snapshot["loginType"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "loginType")
    }
  }

  public var rank: String? {
    get {
      return snapshot["rank"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "rank")
    }
  }

  public var relegiousObservance: String? {
    get {
      return snapshot["relegiousObservance"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "relegiousObservance")
    }
  }

  public var isSaved: String? {
    get {
      return snapshot["isSaved"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "isSaved")
    }
  }

  public var yearsOfExperience: String? {
    get {
      return snapshot["yearsOfExperience"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "yearsOfExperience")
    }
  }

  public var state: String? {
    get {
      return snapshot["state"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "state")
    }
  }

  public var bio: String? {
    get {
      return snapshot["bio"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "bio")
    }
  }

  public var loginStatus: Bool? {
    get {
      return snapshot["loginStatus"] as? Bool
    }
    set {
      snapshot.updateValue(newValue, forKey: "loginStatus")
    }
  }

  public var profilePic: String? {
    get {
      return snapshot["profilePic"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "profilePic")
    }
  }

  public var deviceToken: String? {
    get {
      return snapshot["deviceToken"] as? String
    }
    set {
      snapshot.updateValue(newValue, forKey: "deviceToken")
    }
  }
}