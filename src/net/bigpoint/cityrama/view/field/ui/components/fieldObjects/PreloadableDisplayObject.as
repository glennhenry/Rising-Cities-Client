package net.bigpoint.cityrama.view.field.ui.components.fieldObjects
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeClassLoader;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoaderEvent;
   
   public class PreloadableDisplayObject extends Sprite
   {
      
      public static const PRELOADING_COMPLETE:String = "PRELOADING_COMPLETE";
      
      private var _preloadPresentation:Sprite;
      
      private var _fileRuntimeLoader:FileRuntimeClassLoader;
      
      private var _concretePresentation:MovieClip;
      
      private var _loadComplete:Boolean = false;
      
      public function PreloadableDisplayObject(param1:Sprite, param2:FileRuntimeClassLoader)
      {
         super();
         this._preloadPresentation = param1;
         this._fileRuntimeLoader = param2;
         this._fileRuntimeLoader.addEventListener(FileRuntimeLoaderEvent.COMPLETE,this.onLoaderComplete);
         this._fileRuntimeLoader.addEventListener(FileRuntimeLoaderEvent.ERROR,this.onLoadingError);
         this._fileRuntimeLoader.addEventListener(FileRuntimeLoaderEvent.FAIL,this.onLoadingError);
         this._fileRuntimeLoader.load();
         if(this._concretePresentation == null)
         {
            this._concretePresentation = param1 as MovieClip;
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
      
      public function get presentation() : MovieClip
      {
         return this._concretePresentation;
      }
      
      public function get loadComplete() : Boolean
      {
         return this._loadComplete;
      }
   }
}

