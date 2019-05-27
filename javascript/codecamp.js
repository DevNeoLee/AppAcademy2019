// html 다큐먼트 에서 JS파일을 <script scr=""></script> 안에서 불러주고 콘솔에서 오픈해야함.

// comment
/* this is a
multi-line comment */

/* Data types 
undefined, null boolean, string, symbol, number, object */

//variable
// var
// var myName ="beau"
// let
// let ourName ="brian"
// const
// contst pi = 3.14

// declarations
var a = 5;
var b = 2;
a = b;
var c = "I am who I am";

// go go!

var quo = 11 % 3 ;
var ourDecimal = 5.7;
var myDecimal = 0.009;
var product = ourDecimal * myDecimal;
var prod1 = quo / ourDecimal;

//a += 1
//a -= 1
// a *= 1
// a /= 1

// b -- 
// b ++


//var str = "alright"; 
//var str1 = 'this also alright';

var mystr = "I said \"James\'s partner\" " ;

//back tick ` `

// \'
// \n newline
// \t tab
// \b backspace

var myStr = "FirstLine\n\tSecondLine\nThirdLine";

// concatenating
var ab = mystr + " dance ";
ab += ab;

//length
var st ="hello"
ab = st.length
// st.length 
//5

//word blanks

function wordBlanks(myNoun, myAdjective, myVerb, myAdverb) {
    var result = ""

    result = "The " + myAdjective + " " + myNoun  +" "+ myVerb +" "+ myAdverb;
    return result;
}

//array
var arr = ["hohoho", 23];
var arr1 = [[23, 33], [33,99]];
var abb = arr1[0]
console.log(wordBlanks("dog", "big", "ran", "fast"));
console.log(arr);
console.log(abb);

//
// let callback = function() {
//     console.log("It has been 5 sec!");
// }
// let timeToWait = 5000;

// window.setTimeout(callback(), timeToWait);

// ES5
// window.setTimeout(function() {
//     console.log("It has been 3 seconds!");
// }, 3000); 

//ES6
window.setTimeout(() => console.log("It has been 3 seconds"), 3000);