namespace poc.db;


using {
    cuid ,
    managed
} from '@sap/cds/common';

entity Product : cuid, managed
{
    name : String not null;
    description : String(100);
    mrp : Double;
    quantity : Integer not null;
}

