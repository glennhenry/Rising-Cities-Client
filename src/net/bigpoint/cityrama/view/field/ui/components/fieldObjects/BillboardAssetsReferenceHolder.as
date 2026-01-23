package net.bigpoint.cityrama.view.field.ui.components.fieldObjects
{
   import flash.display.DisplayObjectContainer;
   
   public class BillboardAssetsReferenceHolder
   {
      
      private var _mainAsset:DisplayObjectContainer;
      
      private var _buildUpAssets:DisplayObjectContainer;
      
      private var _basementAsset:DisplayObjectContainer;
      
      public function BillboardAssetsReferenceHolder()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      public function get mainAsset() : DisplayObjectContainer
      {
         return this._mainAsset;
      }
      
      public function set mainAsset(param1:DisplayObjectContainer) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_ || Boolean(this))
         {
            this._mainAsset = param1;
         }
      }
      
      public function get buildUpAssets() : DisplayObjectContainer
      {
         return this._buildUpAssets;
      }
      
      public function set buildUpAssets(param1:DisplayObjectContainer) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || _loc3_)
         {
            this._buildUpAssets = param1;
         }
      }
      
      public function get basementAsset() : DisplayObjectContainer
      {
         return this._basementAsset;
      }
      
      public function set basementAsset(param1:DisplayObjectContainer) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._basementAsset = param1;
         }
      }
   }
}

