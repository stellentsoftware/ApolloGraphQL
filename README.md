# ApolloGraphQL

This is the simple example Apollo iOS app

## Installation

This project requires Xcode 9+, which you can install from the [Mac App Store].

To clone the Git repository to your local machine, including submodules:

```sh
git clone --recursive https://github.com/apollostack/frontpage-ios-app.git
```

You will also have to install the `apollo-codegen` command globally through npm:

```sh
npm install -g apollo-codegen
```

### Server

This app talks to the myappdemo server.

## Starting the app

Open `ApolloGraphQL.xcworkspace` with Xcode and press the run button to run the app. You will find a list of users along with some information like email and State in the UITableView. You can see an edit option to update the user's info.


This is a very basic app, but it does demonstrate how you can hook up GraphQL query results to your UI. The code in `UsersListViewController.swift` fetches data based on a GraphQL query defined in `UsersListViewController.graphql`. That query refers to a fragment defined in `UsersListViewController.graphql`, which nicely illustrates how you can describe your data needs next to the UI component that uses them.

Building the target will run `apollo-codegen` against all `.graphql` files in your project and generate query-specific result types in `API.swift`.

Try commenting out (GraphQL uses `#` for comments) a user's `name` and rebuild the target. You should get a compile-time error because the code in our view controller accesses `user.name`. The type system guarantees at compile-time that the data we access from our code is actually specified as part of the query.

`apollo-codegen` also validates GraphQL query documents against the schema, and Xcode will show validation errors inline. Try adding an `fullName` field under `userType` fragment for instance, and rebuild to show the errors.

#### For new project setup you can find the full details in the below links.
(https://www.apollographql.com/docs/ios/installation.html)
(https://www.apollographql.com/docs/ios/downloading-schema.html)









