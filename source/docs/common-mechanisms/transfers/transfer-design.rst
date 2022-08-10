Transfer Design Fundamentals
============================

There are a few fundamental aspects of the design of any transfer that must be considered. Generally, the most important considerations are:

#. What will be transferred?
#. Where will the item(s) be transferred?
#. How will the item(s) be transferred?

Object Considerations
---------------------

One important thing to consider when designing a transfer is what object will be transferred by the mechanism. Any design must be able to physically hold the object being transferred, but it is also important to consider how many objects need to be held by the transfer or if different types of items need to be transferred.

Location Considerations
-----------------------

Another important consideration when designing a transfer is where the transfer will be moving items from and to. Moving objects in multiple axes is difficult and error-prone. When mechanisms are aligned, transfers only have to act in straight lines, avoiding unnecessary complexity. A very common use for a transfer mechanism is to move objects from the intake of the robot to a scoring mechanism. In this case, it can make sense to combine the transfer system with the intake system or scoring system, so only two mechanisms are needed.


.. tip:: Generally, when designing transfers, you want to avoid as much mechanical complexity as possible. The less moving parts in a mechanism, the lower the chance something can fail.

Transfer Type Considerations
----------------------------

There are several different types of transfers, ranging from linear to rotational transfers, and different ways of actually moving objects inside the transfer mechanism. When designing a transfer, a design that has lower mechanical complexity will be prone to less mechanical failures. See :doc:`transfer-types` for examples of common transfer types.
