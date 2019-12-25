trigger contactdesc on Contact (before insert) {
//trigger ContactBeforeInsert on Contact (before insert) {
// Trigger.New hold new version of Contacts
for(Contact c: Trigger.new)
{
c.Description='Record created sucessfully';
}
// No Need to write DML statement, trigger. New will be take care.

}