# pe_paytm

A new Flutter package project is created by Harsh Tyagi (harshtyagimdr@gmail.com) and Harsh Agrawal(agrawalharsh90@gmail.com).


#For Demo
<img src="https://user-images.githubusercontent.com/46324817/80282465-58b9b680-872f-11ea-93ec-594253cfc674.gif" alt="Demo" height="500px" width="250px"/>


## Getting Started

Follow the following Steps to integrate the paytm payment in Flutter Application.

1) Go to Firebase console and Create a Firebase Project (e.g. payments Testing).
2) Set up Node.js and the Firebase CLI

    You'll need a Node.js environment to write functions, and you'll need the Firebase CLI to deploy functions to the Cloud Functions runtime. Node.js versions 8 and 10 are supported. For installing Node.js and npm, Node Version Manager is recommended.

    Once you have Node.js and npm installed, install the Firebase CLI via your preferred method. To install the CLI via npm, use:

    npm install -g firebase-tools

3) Initialize Firebase SDK for Cloud Functions

    When you initialize Firebase SDK for Cloud Functions, you create an empty project containing dependencies and some minimal sample code, and you choose either TypeScript or JavaScript for composing functions.

        To initialize your project:

        Run firebase login to log in via the browser and authenticate the firebase tool.
        Go to your Firebase project directory.
        Run firebase init functions. The tool gives you an option to install dependencies with npm. It is safe to decline if you want to manage dependencies in another way.
        The tool gives you two options for language support:

        JavaScript
        TypeScript.
        For this tutorial, select JavaScript.

        After these commands complete successfully, your project structure looks like this:

        myproject
        +- .firebaserc    # Hidden file that helps you quickly switch between
        |                 # projects with `firebase use`
        |
        +- firebase.json  # Describes properties for your project
        |
        +- functions/     # Directory containing all your functions code
            |
            +- .eslintrc.json  # Optional file containing rules for JavaScript linting.
            |
            +- package.json  # npm package file describing your Cloud Functions code
            |
            +- index.js      # main source file for your Cloud Functions code
            |
            +- node_modules/ # directory where your dependencies (declared in
                            # package.json) are installed

    For more details regarding firebase functions go to https://firebase.google.com/docs/functions/get-started

4) Install some node packages by running this command in your project folder:

    npm install express body-parser

5) Clone the some necessary file from this repository:
    https://github.com/harshtyagimdr/pe_paytm_requirements/

    Put these file in your functions Folder and replace your credentials and CallbackURL.

6) Deploy your function by running the command :

    firebase deploy --only functions

# In flutter code, You have to change something as shown below:
Example :

     onPressed: () async {
              PePaytm pePaytm = new PePaytm(
                  paymentURL:
                      'https://us-central1-payments-testing-5fc15.cloudfunctions.net/customFunctions/payment');

              await pePaytm.makePayment(context,
                  order: Order(
                      orderId: DateTime.now().millisecondsSinceEpoch.toString(),
                      phoneNumber: '7777777777',
                      amount: '100',
                      custId: 'CUST123456',
                      email: 'test123@gmail.com'));
                     // TODO send your data for payment
            },

   
