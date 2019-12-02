 const functions = require('firebase-functions');

var admin = require("firebase-admin");

//var serviceAccount = require("path/to/serviceAccountKey.json");

admin.initializeApp({
  //credential: admin.credential.cert(serviceAccount),
  databaseURL: "https://selab-2760b.firebaseio.com",
  databaseAuthVariableOverride : null
});

const firebase = require("firebase");
// Required for side-effects
require("firebase/firestore");
//var ref = db.ref("/public_resource");
//ref.on("value",function(snapshot){
//console.log(snapshot.val());},
//function(errorObject){
//console.log("Ther read failed:"+errorObject.code);
//});

//const firebase = require("firebase");
////// Required for side-effects
//require("firebase/firestore");
//var Firestore = require('@google-cloud/firestore');
//<caption>Create a client that uses <a
//href="https://cloud.google.com/docs/authentication/production#providing_credentials_to_your_application">Application
//Default Credentials (ADC)</a>:</caption>
//var firestore = new Firestore();
// // Create and Deploy Your First Cloud Functions
// // https://firebase.google.com/docs/functions/write-firebase-functions
//
// exports.helloWorld = functions.https.onRequest((request, response) => {
//  response.send("Hello from Firebase!");
// });

