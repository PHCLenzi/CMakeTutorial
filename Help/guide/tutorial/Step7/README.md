
Souce:
https://cmake.org/cmake/help/latest/guide/tutorial/Adding%20System%20Introspection.html#step-7-adding-system-introspection

Step 7: Adding System Introspection

Let us consider adding some code to our project that depends on features the target platform may not have. For this example, we will add some code that depends on whether or not the target platform has the log and exp functions. Of course almost every platform has these functions but for this tutorial assume that they are not common.
Exercise 1 - Assessing Dependency Availability

