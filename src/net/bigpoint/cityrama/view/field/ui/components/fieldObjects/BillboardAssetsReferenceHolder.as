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
         super();
      }
      
      public function get mainAsset() : DisplayObjectContainer
      {
         return this._mainAsset;
      }
      
      public function set mainAsset(param1:DisplayObjectContainer) : void
      {
         this._mainAsset = param1;
      }
      
      public function get buildUpAssets() : DisplayObjectContainer
      {
         return this._buildUpAssets;
      }
      
      public function set buildUpAssets(param1:DisplayObjectContainer) : void
      {
         this._buildUpAssets = param1;
      }
      
      public function get basementAsset() : DisplayObjectContainer
      {
         return this._basementAsset;
      }
      
      public function set basementAsset(param1:DisplayObjectContainer) : void
      {
         this._basementAsset = param1;
      }
   }
}

