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
         var _loc5_:ConstructionLayerStepVo = null;
         super();
         this._steps = new ArrayCollection();
         for each(_loc5_ in param1)
         {
            this._steps.addItem(_loc5_);
         }
         this._isUpgrade = param2;
         this._billboardObject = param3;
         this._rcStock = param4;
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
         return LocaUtils.getString("rcl.playfielditems.name","rcl.playfielditems.name." + this._billboardObject.billboardObjectVo.configPlayfieldItemVo.localeId + ".capital");
      }
      
      public function get flavourLabel() : String
      {
         if(this._isUpgrade)
         {
            return LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.flavour.upgrade");
         }
         return LocaUtils.getString("rcl.booklayer.constructionLayer","rcl.booklayer.constructionLayer.flavour.construction");
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
         this._rcStock = param1;
      }
   }
}

