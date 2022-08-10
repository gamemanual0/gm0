Transfer Design Fundamentals
============================

There are a few fundamental aspects of the design of any transfer that must be considered. Generally, the most important considerations are

1. What will be transferred?
2. Where will the item(s) be transferred?
3. How will the item(s) be transferred?

Object considerations
---------------------

One important thing to consider when designing a transfer is what object will be transferred by the mechanism. Obviously, any design must be able to physically hold the object being transferred, but it is also important to consider how many objects need to be held by the transfer or if different items need to be transferred. For example, a transfer may need to be able to hold multiple different items at once, in which case care must be taken that all the objects are held properly by the transfer.

Location considerations
-----------------------

Another important consideration when designing a transfer is where the transfer will be moving items. A very common transfer mechanism is one to move objects from the intake of the robot to a scoring mechanism. In this case, it can make sense to combine the transfer system with the intake system or scoring system, so only two mechanisms are needed. In addition, moving objects in multiple axes is difficult and error-prone. When mechanisms are aligned, transfers only have to act in straight lines


.. tip:: Generally, when designing transfers, you want to avoid as much mechanical complexity as possible. The less moving parts in a mechanism, the lower the chance something can fail

Transfer Type Considerations
----------------------------

There are several different types of transfers, ranging from linear to rotational transfers, and different ways of actually moving objects inside the transfer mechanism. When designing a transfer, a design that has lower mechanical complexity will be prone to less mechanical failures. See :doc:`transfer-types` for examples of common transfer types

