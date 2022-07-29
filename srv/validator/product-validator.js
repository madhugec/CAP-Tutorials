module.exports =  class ProductValidator {
   static  validateProduct(product){
        if(product.mrp>1000){
            return false;
        }
        return true;
    }
}