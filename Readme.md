### Lost Update 
tx1. Count(*) first === Count(*) second ? "Lost Update" : No Anomaly

### Dirty read
tx1. Selected amount === 40 ? "Dirty Read" : No anomaly

### Non-repeatable read
tx1. select 1 === select 2 ? No anomaly : "Non-repeatable read"

### Phantom read
tx1. count(name) first === count(name) second ? No anomaly : "Phantom read"


### Comparison transactions isolations concurrency anomallies in MySQL and PostgreSQL databases 

![Result table]("./image.png")