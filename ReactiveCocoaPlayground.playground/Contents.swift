//: Playground - noun: a place where people can play

import ReactiveCocoa

let helloWorldProducer = SignalProducer<String,NoError> { sink, disposable in
    sink.sendNext("Hello World !")
    sink.sendCompleted()
}

func printMessage(message: String) {
    print("Message: \(message)")
}

helloWorldProducer.startWithNext(printMessage)