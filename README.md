# Vend

Vend is a practice project in codifying real world situations. You will design a
program that represents a company that has a fleet of vending machines. The company
will be able to restock and keep track of the inventory of machines. There will need to be a client that can interact with the machine and purchase items.

### Iteration 1

Design an item class that has the following capabilities:
* Has attributes: name, description, price, code, count

Design a vending machine class that has the following capabilities:
* Has inventory of items, and can report the list of items and their counts
* Can report whether or not an item is in the inventory and what its count is
* Can have individual items restocked
* Can be restocked in bulk (ie multiple items restocked in a single transaction)
* Has an interface for purchasing items


### Iteration 2

Design a company class that has the following capabilities:
* Has an inventory of vending machines
* Can query specific vending machines for inventory
* Can find vending machines that have items that are almost or already out of stock
* Can restock vending machines


### Iteration 3

Design a client class that has the following capabilities:
* Has a bank of money
* Can purchase items from a vending machine
