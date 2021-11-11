importScripts("https://www.gstatic.com/firebasejs/8.6.1/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/8.6.1/firebase-messaging.js");

firebase.initializeApp({
    apiKey: "AIzaSyBU29pRFSwwvmYKanoBgs5ThC9iu1XND0g",
    authDomain: "jahswill-dev.firebaseapp.com",
    projectId: "jahswill-dev",
    storageBucket: "jahswill-dev.appspot.com",
    messagingSenderId: "687043285299",
    appId: "1:687043285299:web:e7feca51d9b4b00766ee46",
    measurementId: "G-LMJY467QQ5"
});
// Necessary to receive background messages:
const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((m) => {
    console.log("onBackgroundMessage", m);
});