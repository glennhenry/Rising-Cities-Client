package net.bigpoint.cityrama.view.field.ui.components.fieldObjects
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.Event;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPreloadable;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeImageLoader;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoaderEvent;
   
   public class PreloadableImage extends Sprite implements IPreloadable
   {
      
      public static const PRELOADING_COMPLETE:String = "PRELOADING_COMPLETE";
      
      private var _preloadPresentation:DisplayObject;
      
      private var _fileRuntimeLoader:FileRuntimeImageLoader;
      
      private var _concretePresentation:DisplayObject;
      
      private var _loadComplete:Boolean = false;
      
      public function PreloadableImage(param1:DisplayObject, param2:FileRuntimeImageLoader)
      {
         super();
         this._preloadPresentation = param1;
         if(param2 != null)
         {
            this._fileRuntimeLoader = param2;
            this._fileRuntimeLoader.addEventListener(FileRuntimeLoaderEvent.COMPLETE,this.onLoaderComplete);
            this._fileRuntimeLoader.addEventListener(FileRuntimeLoaderEvent.ERROR,this.onLoadingError);
            this._fileRuntimeLoader.addEventListener(FileRuntimeLoaderEvent.FAIL,this.onLoadingError);
            this._fileRuntimeLoader.load();
         }
         else
         {
            this._concretePresentation = this._preloadPresentation;
         }
         if(this._concretePresentation == null)
         {
            this._concretePresentation = param1;
         }
      }
      
      private function onLoadingError(param1:FileRuntimeLoaderEvent) : void
      {
      }
      
      private function onLoaderComplete(param1:FileRuntimeLoaderEvent) : void
      {
         this._concretePresentation = param1.instance;
         this._loadComplete = true;
         dispatchEvent(new Event(PRELOADING_COMPLETE));
      }
      
      public function get presentation() : DisplayObject
      {
         return this._concretePresentation;
      }
      
      public function get loadComplete() : Boolean
      {
         return this._loadComplete;
      }
      
      public function get fileRuntimeLoader() : FileRuntimeImageLoader
      {
         return this._fileRuntimeLoader;
      }
   }
}

