using { poc.db as db } from '../db/schema';

@path : 'orderservice'
service OrderService 
{   @odata.draft.enabled   

    entity Order  as projection on db.Order;
    entity Product @(restrict:[{grant:'READ', to:'VIEWER' },{grant:'*', to:'ADMIN' },
    { grant: ['READ', 'CREATE'], to:'CUSTOMER', where: 'createdBy = $user' } ]) as projection on db.Product;
    entity Item as projection on db.Item;
}
