using { poc.db as db } from '../db/schema';

@path : 'orderservice'
service OrderService
{   @odata.draft.enabled        
    entity Order as projection on db.Order;
    entity Product as projection on db.Product;
    entity Item as projection on db.Item;
}
