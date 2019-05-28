// fizzBuzz, takes an arr, returns a new arr every # is divisible by either 3 or 5 but not both

let fizzBuzz = function(arr){

    let newArr = arr.map { |ele|
        ((ele % 3 == 0 && ele % 5 != 0) || (ele % 5 == 0 && ele % 3 != 0))
    }
    return newArr
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