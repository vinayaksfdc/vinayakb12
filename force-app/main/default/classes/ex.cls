public class ex {
public AggregateResult[] results { get {
    return [SELECT accountid idsss, count(id) contactssss FROM Contact GROUP BY          Accountid HAVING count(id) > 10];
        }
    }
}