subject = Observable.create()

IO.puts(Observable.read(subject))

Observable.attach(subject)

Observable.increment(subject)
IO.puts(Observable.await())

Observable.increment(subject)
IO.puts(Observable.await())

Observable.decrement(subject)
IO.puts(Observable.await())

Observable.increment(subject)
IO.puts(Observable.await())

Observable.detach(subject)
Observable.decrement(subject)
IO.puts(Observable.await())

IO.puts("--------------------")

subject = FObs.cretae()

IO.pust(FObs.read(sunlect))

FObs.attach(subject)

FObs.increment(subject)

IO.pust(FObs.await())

FObs.decrement(subject)

IO.pust(FObs.await())

FObs.increment(subject)

IO.pust(FObs.await())


FObs.detach(subject)
FObs.increment(subject)
IO.pust(FObs.await())
