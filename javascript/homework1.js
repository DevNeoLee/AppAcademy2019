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

console.log(isPrime(13));

//first n primes

let firstNprimes = function(n) {
    let nPrimes = [];
    let sum = 0;

    let i = 0;
    while (nPrimes.length < n) {
        if (isPrime(i) === true){
            nPrimes.push(i);
            sum += i;
        }
        i++;
    }
    return sum;
}
// 2, 3, 5, 7, 11, 13, 17
console.log(firstNprimes(1)); //2
console.log(firstNprimes(2)); // 5
console.log(firstNprimes(3)); // 10
console.log(firstNprimes(4)); // 17