const ProductValidator = require("../validator/product-validator");
module.exports = class ProductService extends cds.ApplicationService{
    init(){
        
        this.before('CREATE', 'Product', req=>{
            if(!ProductValidator.validateProduct(req.data)){
                req.reject(400, 'mrp is greater than 1000' );
            }
        });
        this.on('updateMrp', async req=>{
        const result = await    UPDATE(req.entity, req.params[0].ID ).with({mrp:req.data.mrp});
        const product = await SELECT.from(req.entity).where({ID:req.params[0].ID})
           console.log("Action Called");
           return product;
        })
        super.init();
    }
}

