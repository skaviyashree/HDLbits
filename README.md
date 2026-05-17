# HDLbits
The programs that I felt  difficult or learnt something new or requires revision are here.

Difference Between assign (continous assignemnt) and always (procedure statements)
| Feature                 |  assign                    |  always          |
| ----------------------- | -------------------------- | ---------------- |
| Type                    | Continuous assignment      | Procedural block |
| Used for                | Simple combinational logic | Complex logic    |
| Executes                | Continuously               | When triggered   |
| LHS type                | wire                       | reg              |
| Supports if/case        | ❌ No                      | ✅ Yes          |
| Easier for simple gates | ✅                         | ❌              |
| Needed for FSMs         | ❌                         | ✅              |


Difference between Blocking (line by line executation) and Non-Blocking Statements (parallel execution)
| Feature             | Blocking =    | Non-Blocking <=   |
| ------------------- | ------------- | ----------------- |
| Executes            | immediately   | scheduled later   |
| Used for            | combinational | sequential        |
| Models              | logic flow    | flip-flops        |
| Order matters?      | YES           | NO                |
| Safe for pipelines? | ❌            |   ✅             |
