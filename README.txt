This is free software, do whatever you want with it.

CL-ATTRIBS

Provides a functionality that allows CLOS classes to have attributes specific for each of their slots.
These attributes are saved in a auto generated slot called %all-attributes so that name is reserved for the cl-attribs.

-----------------------------------------------------------------------

How To Use

All you have to do is define a class and inherit from "attributes-object". Also your class must have a metaclass of "attributes-class".

Example:

CL-ATTRIBS>
(defclass test (attributes-object) 
  ((slot-a :accessor slot-a :initform nil :initarg :slot-a :attributes (:attrib1 "a-1" :attrib2 "a-2"))
   (slot-b :accessor slot-b :initform nil :initarg :slot-b :attributes (:attrib1 "b-1" :attrib2 "b-2")))
  (:metaclass attributes-class))

==> #<ATTRIBUTES-CLASS TEST>

-----------------------------------------------------------------------

Setting Both Value & Attributes

You can use this format to set both the value and attributes of a slot in situations like below: (:value/attribs (slot-value (:attribkey attribval ...)))

Example:

CL-ATTRIBS> (defparameter obj (make-instance 'test :slot-a `(:value/attribs ("new value" (:attrib1 "attrib1 new value" :attrib2 "attrib2 new value")))))

==> OBJ

-----------------------------------------------------------------------

Reading/Writeing Slot Attributes

(This is a setfable method)

Example:

CL-ATTRIBS> (slot-attrib obj 'slot-a :attrib1)

==> "attrib1 new value"

-----------------------------------------------------------------------

Reading All Attributes Of A Slot

Example:

CL-ATTRIBS> (slot-attribs obj 'slot-a)

==> (:ATTRIB2 "attrib2 new value" :ATTRIB1 "attrib1 new value")

-----------------------------------------------------------------------

Attribute Inheritance

Attributes can be inherited from parent class if they have defined any attribute for the slot.

-----------------------------------------------------------------------

Contact Info

If u find bugs or have any idea about making cl-attribs better please contact me at

farzadbekran@gmail.com
