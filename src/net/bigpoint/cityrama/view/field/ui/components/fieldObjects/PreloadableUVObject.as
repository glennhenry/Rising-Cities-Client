package net.bigpoint.cityrama.view.field.ui.components.fieldObjects
{
   import flash.display.Bitmap;
   import flash.display.Sprite;
   import flash.events.Event;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPreloadable;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeImageLoader;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadService;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoaderEvent;
   
   public class PreloadableUVObject extends Sprite implements IPreloadable
   {
      
      public static const PRELOADING_COMPLETE:String = "PRELOADING_COMPLETE";
      
      private var _loadComplete:Boolean = false;
      
      private var _sheet:Bitmap;
      
      private var _texture:Bitmap;
      
      private var _light:Bitmap;
      
      private var _container:Sprite;
      
      private var _loader:FileRuntimeLoadService;
      
      private var _lightingPath:String;
      
      private var _texturePath:String;
      
      private var _sheetPath:String;
      
      public function PreloadableUVObject(param1:Sprite, param2:String, param3:String, param4:String, param5:FileRuntimeLoadService)
      {
         super();
         this._container = param1;
         this._loader = param5;
         this._sheetPath = param2;
         this._texturePath = param3;
         this._lightingPath = param4;
         var _loc6_:FileRuntimeImageLoader = this._loader.getLoaderForImage(param2);
         var _loc7_:FileRuntimeImageLoader = this._loader.getLoaderForImage(param3);
         var _loc8_:FileRuntimeImageLoader = this._loader.getLoaderForImage(param4);
         _loc6_.addEventListener(FileRuntimeLoaderEvent.COMPLETE,this.handleSheetComplete);
         _loc7_.addEventListener(FileRuntimeLoaderEvent.COMPLETE,this.handleTextureComplete);
         _loc8_.addEventListener(FileRuntimeLoaderEvent.COMPLETE,this.handleLightComplete);
         this.setupListeners(_loc6_);
         this.setupListeners(_loc7_);
         this.setupListeners(_loc8_);
         _loc6_.load();
         _loc7_.load();
         _loc8_.load();
         this.addChild(this._container);
      }
      
      private function handleSheetComplete(param1:FileRuntimeLoaderEvent) : void
      {
         var _loc2_:FileRuntimeImageLoader = param1.target as FileRuntimeImageLoader;
         this.removeListeners(_loc2_);
         _loc2_.removeEventListener(FileRuntimeLoaderEvent.COMPLETE,this.handleSheetComplete);
         this._sheet = param1.instance.rawContent as Bitmap;
         this.handleAllComplete();
      }
      
      private function handleTextureComplete(param1:FileRuntimeLoaderEvent) : void
      {
         var _loc2_:FileRuntimeImageLoader = param1.target as FileRuntimeImageLoader;
         this.removeListeners(_loc2_);
         _loc2_.removeEventListener(FileRuntimeLoaderEvent.COMPLETE,this.handleTextureComplete);
         this._texture = param1.instance.rawContent as Bitmap;
         this.handleAllComplete();
      }
      
      private function handleLightComplete(param1:FileRuntimeLoaderEvent) : void
      {
         var _loc2_:FileRuntimeImageLoader = param1.target as FileRuntimeImageLoader;
         this.removeListeners(_loc2_);
         _loc2_.removeEventListener(FileRuntimeLoaderEvent.COMPLETE,this.handleLightComplete);
         this._light = param1.instance.rawContent as Bitmap;
         this.handleAllComplete();
      }
      
      private function setupListeners(param1:FileRuntimeImageLoader) : void
      {
         param1.addEventListener(FileRuntimeLoaderEvent.ERROR,this.onError);
         param1.addEventListener(FileRuntimeLoaderEvent.FAIL,this.onError);
         param1.addEventListener(FileRuntimeLoaderEvent.CANCEL,this.onError);
      }
      
      private function removeListeners(param1:FileRuntimeImageLoader) : void
      {
         param1.removeEventListener(FileRuntimeLoaderEvent.ERROR,this.onError);
         param1.removeEventListener(FileRuntimeLoaderEvent.FAIL,this.onError);
         param1.removeEventListener(FileRuntimeLoaderEvent.CANCEL,this.onError);
      }
      
      private function onError(param1:FileRuntimeLoaderEvent) : void
      {
      }
      
      private function onLoadingError(param1:FileRuntimeLoaderEvent) : void
      {
      }
      
      private function handleAllComplete(param1:Event = null) : void
      {
         if(this._sheet != null && this._texture != null && this._light != null)
         {
            this._loadComplete = true;
            dispatchEvent(new Event(PRELOADING_COMPLETE));
         }
      }
      
      public function get light() : Bitmap
      {
         return this._light;
      }
      
      public function get texture() : Bitmap
      {
         return this._texture;
      }
      
      public function get sheet() : Bitmap
      {
         return this._sheet;
      }
      
      public function get container() : Sprite
      {
         return this._container;
      }
      
      public function get loadComplete() : Boolean
      {
         return this._loadComplete;
      }
      
      public function get sheetPath() : String
      {
         return this._sheetPath;
      }
      
      public function get texturePath() : String
      {
         return this._texturePath;
      }
      
      public function get lightingPath() : String
      {
         return this._lightingPath;
      }
   }
}

