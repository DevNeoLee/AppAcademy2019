// fizzBuzz, takes an arr, returns a new arr every # is divisible by either 3 or 5 but not both


function fizzBuzz(array) {
    const fizzBuzzArr = [];

    array.forEach(el => {
        if ((el % 3 === 0) ^ (el % 5 === 0)) {
            fizzBuzzArr.push(el);
        }
    });

    return fizzBuzzArr;
}

console.log(fizzBuzz([3,5,15,3,4,5,6,7,8,9,15]));


let isPrime = function(number){
    if (number < 2) {
        return false;
    }

    
    for (let i = 2; i < number; i++){
        if (number % i == 0) {
            return false;
        }
    }
   return true;
}

// isPrime

// function isPrime(n) {
//     if (n < 2) { return false; }

//     for (let i = 2; i < n; i++) {
//         if (n % i === 0) {
//             return false;
//         }
//     }

//     return true;
// }

console.log(isPrime(13));