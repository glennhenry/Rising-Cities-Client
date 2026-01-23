package net.bigpoint.cityrama.model.detailViews.vo
{
   public class ProductionNeedVo
   {
      
      private var _assetLibName:String;
      
      private var _assetImageName:String;
      
      private var _goodGfxId:Number;
      
      private var _stockAmount:int;
      
      private var _requiredAmount:int;
      
      private var _assetSWFName:String;
      
      private var _goodName:String;
      
      public function ProductionNeedVo(param1:String, param2:String, param3:String, param4:int, param5:int, param6:String)
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         if(!(_loc7_ && Boolean(param1)))
         {
            super();
            if(!(_loc7_ && Boolean(param2)))
            {
               §§goto(addr0034);
            }
            §§goto(addr009f);
         }
         addr0034:
         this._assetSWFName = param1;
         if(!(_loc7_ && Boolean(param1)))
         {
            this._assetLibName = param2;
            if(_loc8_ || Boolean(param3))
            {
               this._assetImageName = param3;
               if(_loc8_ || Boolean(param2))
               {
                  this._goodName = param6;
                  if(!(_loc7_ && Boolean(param3)))
                  {
                     addr009f:
                     this._stockAmount = param4;
                     if(!_loc7_)
                     {
                        this._requiredAmount = param5;
                     }
                  }
                  §§goto(addr00b1);
               }
            }
            §§goto(addr009f);
         }
         addr00b1:
      }
      
      public function set requiredAmount(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._requiredAmount = param1;
         }
      }
      
      public function set stockAmount(param1:int) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            this._stockAmount = param1;
         }
      }
      
      public function get assetLibName() : String
      {
         return this._assetLibName;
      }
      
      public function get assetImageName() : String
      {
         return this._assetImageName;
      }
      
      public function get available() : Boolean
      {
         return this._stockAmount >= this._requiredAmount;
      }
      
      public function get goodGfxId() : Number
      {
         return this._goodGfxId;
      }
      
      public function get stockAmount() : int
      {
         return this._stockAmount;
      }
      
      public function get requiredAmount() : int
      {
         return this._requiredAmount;
      }
      
      public function get assetSWFName() : String
      {
         return this._assetSWFName;
      }
      
      public function get goodName() : String
      {
         return this._goodName;
      }
   }
}

