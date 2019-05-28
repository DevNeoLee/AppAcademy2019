// fizzBuzz, takes an arr, returns a new arr every # is divisible by either 3 or 5 but not both

let fizzBuzz = function(arr){
    const fizzbuzzArr = [];

    arr.foreach(el => {
       if((ele % 3 == 0 && ele % 5 != 0) || (ele % 5 == 0 && ele % 3 != 0)) {
           fizzbuzzArr.push(el);
       }
    });
    return fizzBuzzArr;
}

function fizzBuzz(array) {
    const fizzBuzzArr = [];

    array.forEach(el => {
        if ((el % 3 === 0) ^ (el % 5 === 0)) {
            fizzBuzzArr.push(el);
        }
    });

    return fizzBuzzArr;
}
let isPrime = functioin(number){
    if (number < 2){
        return false;
    }

    i = 2
    for (i < number){
        if (number % i == 0) {
            return false;
        }
        return true;
    }
}