// Example usage of the timer function
let interval = Date()..<Date().addingTimeInterval(3600) // Example: 1 hour countdown
let timer = MyClass.timer(countingDownIn: interval, showsHours: true, maxFieldCount: 3, maxPrecision: .seconds(1))
