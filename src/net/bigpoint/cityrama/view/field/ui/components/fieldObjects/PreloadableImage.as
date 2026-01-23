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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(!(_loc2_ && _loc2_))
      {
         PRELOADING_COMPLETE = "PRELOADING_COMPLETE";
      }
      
      private var _preloadPresentation:DisplayObject;
      
      private var _fileRuntimeLoader:FileRuntimeImageLoader;
      
      private var _concretePresentation:DisplayObject;
      
      private var _loadComplete:Boolean = false;
      
      public function PreloadableImage(param1:DisplayObject, param2:FileRuntimeImageLoader)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(_loc3_ || Boolean(this))
         {
            super();
            if(!(_loc4_ && Boolean(param2)))
            {
               addr0031:
               this._preloadPresentation = param1;
               if(!(_loc4_ && Boolean(param1)))
               {
                  if(param2 != null)
                  {
                     if(_loc3_)
                     {
                        this._fileRuntimeLoader = param2;
                        if(!_loc4_)
                        {
                           addr005b:
                           §§push(this._fileRuntimeLoader);
                           if(!_loc4_)
                           {
                              §§push(FileRuntimeLoaderEvent.COMPLETE);
                              if(!(_loc4_ && _loc3_))
                              {
                                 §§pop().addEventListener(§§pop(),this.onLoaderComplete);
                                 if(!_loc4_)
                                 {
                                    addr0092:
                                    §§push(this._fileRuntimeLoader);
                                    if(!_loc4_)
                                    {
                                       addr009c:
                                       §§push(FileRuntimeLoaderEvent.ERROR);
                                       if(!(_loc4_ && Boolean(this)))
                                       {
                                          §§pop().addEventListener(§§pop(),this.onLoadingError);
                                          if(!_loc4_)
                                          {
                                             §§goto(addr00bd);
                                          }
                                          §§goto(addr010b);
                                       }
                                       §§goto(addr00cd);
                                    }
                                    §§goto(addr00c7);
                                 }
                                 §§goto(addr010b);
                              }
                              §§goto(addr00cd);
                           }
                           §§goto(addr009c);
                        }
                        §§goto(addr0092);
                     }
                     addr00bd:
                     §§push(this._fileRuntimeLoader);
                     if(!_loc4_)
                     {
                        addr00cd:
                        §§pop().addEventListener(FileRuntimeLoaderEvent.FAIL,this.onLoadingError);
                        addr00c7:
                        if(_loc3_ || Boolean(param2))
                        {
                           §§goto(addr00e5);
                        }
                        §§goto(addr010b);
                     }
                     addr00e5:
                     this._fileRuntimeLoader.load();
                     if(_loc3_)
                     {
                        addr010b:
                        if(this._concretePresentation == null)
                        {
                           if(!(_loc4_ && Boolean(param2)))
                           {
                              addr0122:
                              this._concretePresentation = param1;
                           }
                        }
                     }
                     return;
                  }
                  this._concretePresentation = this._preloadPresentation;
                  if(_loc3_)
                  {
                     §§goto(addr010b);
                  }
                  §§goto(addr0122);
               }
               §§goto(addr005b);
            }
            §§goto(addr010b);
         }
         §§goto(addr0031);
      }
      
      private function onLoadingError(param1:FileRuntimeLoaderEvent) : void
      {
      }
      
      private function onLoaderComplete(param1:FileRuntimeLoaderEvent) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(_loc2_)
         {
            this._concretePresentation = param1.instance;
            if(_loc2_ || _loc2_)
            {
               this._loadComplete = true;
               if(!(_loc3_ && Boolean(this)))
               {
                  dispatchEvent(new Event(PRELOADING_COMPLETE));
               }
            }
         }
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

