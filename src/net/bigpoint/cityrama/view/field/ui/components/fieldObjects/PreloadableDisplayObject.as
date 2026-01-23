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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         PRELOADING_COMPLETE = "PRELOADING_COMPLETE";
      }
      
      private var _preloadPresentation:Sprite;
      
      private var _fileRuntimeLoader:FileRuntimeClassLoader;
      
      private var _concretePresentation:MovieClip;
      
      private var _loadComplete:Boolean = false;
      
      public function PreloadableDisplayObject(param1:Sprite, param2:FileRuntimeClassLoader)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(_loc4_ || Boolean(this))
         {
            super();
            if(!(_loc3_ && Boolean(param2)))
            {
               this._preloadPresentation = param1;
               if(!(_loc3_ && _loc3_))
               {
                  this._fileRuntimeLoader = param2;
                  if(!_loc3_)
                  {
                     §§push(this._fileRuntimeLoader);
                     if(_loc4_)
                     {
                        §§push(FileRuntimeLoaderEvent.COMPLETE);
                        if(_loc4_ || Boolean(param2))
                        {
                           §§pop().addEventListener(§§pop(),this.onLoaderComplete);
                           if(_loc4_ || Boolean(this))
                           {
                              §§push(this._fileRuntimeLoader);
                              if(!(_loc3_ && Boolean(param2)))
                              {
                                 addr00a1:
                                 §§push(FileRuntimeLoaderEvent.ERROR);
                                 if(!_loc3_)
                                 {
                                    §§goto(addr00ac);
                                 }
                                 §§goto(addr00d9);
                              }
                              §§goto(addr00d3);
                           }
                           §§goto(addr00c2);
                        }
                        addr00ac:
                        §§pop().addEventListener(§§pop(),this.onLoadingError);
                        if(_loc4_ || Boolean(this))
                        {
                           addr00c2:
                           §§push(this._fileRuntimeLoader);
                           if(!(_loc3_ && _loc3_))
                           {
                              addr00d9:
                              §§pop().addEventListener(FileRuntimeLoaderEvent.FAIL,this.onLoadingError);
                              if(!_loc3_)
                              {
                                 addr00f6:
                                 this._fileRuntimeLoader.load();
                                 addr00f2:
                                 if(_loc4_)
                                 {
                                    if(this._concretePresentation == null)
                                    {
                                       if(_loc4_ || _loc3_)
                                       {
                                          addr0117:
                                          this._concretePresentation = param1 as MovieClip;
                                       }
                                    }
                                    §§goto(addr0120);
                                 }
                              }
                              §§goto(addr0117);
                              addr00d3:
                           }
                           §§goto(addr00f6);
                        }
                        §§goto(addr0120);
                     }
                     §§goto(addr00a1);
                  }
                  §§goto(addr0117);
               }
               addr0120:
               return;
            }
            §§goto(addr00f2);
         }
         §§goto(addr0117);
      }
      
      private function onLoadingError(param1:FileRuntimeLoaderEvent) : void
      {
      }
      
      private function onLoaderComplete(param1:FileRuntimeLoaderEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            this._concretePresentation = param1.instance;
            if(!_loc3_)
            {
               this._loadComplete = true;
               if(!_loc3_)
               {
                  addr0030:
                  dispatchEvent(new Event(PRELOADING_COMPLETE));
               }
               return;
            }
         }
         §§goto(addr0030);
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

