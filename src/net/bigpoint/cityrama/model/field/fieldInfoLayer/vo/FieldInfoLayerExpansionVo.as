package net.bigpoint.cityrama.model.field.fieldInfoLayer.vo
{
   public class FieldInfoLayerExpansionVo extends FieldInfoLayerHeaderVo
   {
      
      public var realCurrencyCost:String;
      
      public var discountedRealCurrencyCost:String;
      
      public var virtualCurrencyCost:String;
      
      public var hasSecretBuilding:Boolean;
      
      public var secretText:String;
      
      public var midText:String;
      
      public var onSale:Boolean;
      
      public var saleTimeLeft:Number;
      
      public var saleTimeTotal:Number;
      
      public var isLocked:Boolean;
      
      public var unlockLevel:Number;
      
      public function FieldInfoLayerExpansionVo()
      {
         super();
      }
   }
}

