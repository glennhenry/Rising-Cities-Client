package net.bigpoint.cityrama.model.construction
{
   import mx.collections.ArrayCollection;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.util.LocaUtils;
   
   public class ConstructionLayerVo
   {
      
      private var _steps:ArrayCollection;
      
      private var _isUpgrade:Boolean;
      
      private var _billboardObject:BillboardObject;
      
      private var _rcStock:Number;
      
      public function ConstructionLayerVo(param1:Vector.<ConstructionLayerStepVo>, param2:Boolean, param3:BillboardObject, param4:Number)
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc5_:ConstructionLayerStepVo = null;
         if(!_loc9_)
         {
            super();
            if(!_loc9_)
            {
               addr0027:
               this._steps = new ArrayCollection();
            }
            for each(_loc5_ in param1)
            {
               if(!(_loc9_ && Boolean(this)))
               {
                  this._steps.addItem(_loc5_);
               }
            }
            if(_loc8_)
            {
               this._isUpgrade = param2;
               if(_loc8_)
               {
                  §§goto(addr0093);
               }
               §§goto(addr00a6);
            }
            addr0093:
            this._billboardObject = param3;
            if(!(_loc9_ && Boolean(param1)))
            {
               addr00a6:
               this._rcStock = param4;
            }
            return;
         }
         §§goto(addr0027);
      }
      
      public function get isUpgrade() : Boolean
      {
         return this._isUpgrade;
      }
      
      public function get constructionSteps() : ArrayCollection
      {
         return this._steps;
      }
      
      public function get headerLabel() : String
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         §§push(LocaUtils);
         §§push("rcl.playfielditems.name");
         §§push("rcl.playfielditems.name.");
         if(!_loc1_)
         {
            §§push(§§pop() + this._billboardObject.billboardObjectVo.configPlayfieldItemVo.localeId);
            if(_loc2_ || Boolean(this))
            {
               §§push(§§pop() + ".capital");
            }
         }
         return §§pop().getString(§§pop(),§§pop());
      }
      
      public function get flavourLabel() : String
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc1_)
         {
            if(this._isUpgrade)
            {
               if(_loc1_)
               {
                  addr0034:
                  §§push(LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.flavour.upgrade"));
                  if(!_loc2_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr0046:
                  return LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.flavour.construction");
               }
               return §§pop();
            }
            §§goto(addr0046);
         }
         §§goto(addr0034);
      }
      
      public function get billboardObject() : BillboardObject
      {
         return this._billboardObject;
      }
      
      public function get rcStock() : Number
      {
         return this._rcStock;
      }
      
      public function set rcStock(param1:Number) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._rcStock = param1;
         }
      }
   }
}

