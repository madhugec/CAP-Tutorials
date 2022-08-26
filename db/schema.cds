namespace poc.db;

using
{
    cuid,
    managed
}
from '@sap/cds/common';

entity Product : cuid, managed
{
    name : String not null;
    description : String(100);
    mrp : Double;
    quantity : Integer not null;
}

entity Order : cuid
{
    name : String not null;
    date : DateTime;
    totalAmount : Double;
    item : Composition of many Item on item.order = $self;
}

entity Item : cuid
{
    name : String not null;
    quantity : Integer;
    price : Double;
    order : Association to one Order;
    product : Association to one Product;
}
