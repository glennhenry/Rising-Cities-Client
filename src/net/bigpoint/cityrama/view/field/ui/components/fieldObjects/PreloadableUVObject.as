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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         PRELOADING_COMPLETE = "PRELOADING_COMPLETE";
      }
      
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
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         if(!(_loc9_ && Boolean(param3)))
         {
            super();
            if(!_loc9_)
            {
               this._container = param1;
               if(!(_loc9_ && Boolean(this)))
               {
                  §§goto(addr003e);
               }
               §§goto(addr0079);
            }
            §§goto(addr0052);
         }
         addr003e:
         this._loader = param5;
         if(!(_loc9_ && Boolean(param1)))
         {
            addr0052:
            this._sheetPath = param2;
            if(!(_loc9_ && Boolean(param3)))
            {
               §§goto(addr0065);
            }
            §§goto(addr0079);
         }
         addr0065:
         this._texturePath = param3;
         if(_loc10_ || Boolean(this))
         {
            addr0079:
            this._lightingPath = param4;
         }
         var _loc6_:FileRuntimeImageLoader = this._loader.getLoaderForImage(param2);
         var _loc7_:FileRuntimeImageLoader = this._loader.getLoaderForImage(param3);
         var _loc8_:FileRuntimeImageLoader = this._loader.getLoaderForImage(param4);
         if(!_loc9_)
         {
            _loc6_.addEventListener(FileRuntimeLoaderEvent.COMPLETE,this.handleSheetComplete);
            if(_loc10_ || Boolean(this))
            {
               _loc7_.addEventListener(FileRuntimeLoaderEvent.COMPLETE,this.handleTextureComplete);
               if(_loc10_ || Boolean(param1))
               {
                  _loc8_.addEventListener(FileRuntimeLoaderEvent.COMPLETE,this.handleLightComplete);
                  if(!(_loc9_ && Boolean(param3)))
                  {
                     §§goto(addr0116);
                  }
               }
               §§goto(addr0130);
            }
            §§goto(addr0167);
         }
         addr0116:
         this.setupListeners(_loc6_);
         if(_loc10_)
         {
            this.setupListeners(_loc7_);
            if(_loc10_)
            {
               addr0130:
               this.setupListeners(_loc8_);
               if(!(_loc9_ && Boolean(param2)))
               {
                  _loc6_.load();
                  if(_loc10_ || Boolean(this))
                  {
                     addr0167:
                     _loc7_.load();
                     if(!(_loc9_ && Boolean(param2)))
                     {
                        addr017b:
                        _loc8_.load();
                        if(!_loc9_)
                        {
                           addr0187:
                           this.addChild(this._container);
                        }
                        §§goto(addr0190);
                     }
                     §§goto(addr0187);
                  }
                  §§goto(addr0190);
               }
               §§goto(addr0167);
            }
            §§goto(addr017b);
         }
         addr0190:
      }
      
      private function handleSheetComplete(param1:FileRuntimeLoaderEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:FileRuntimeImageLoader = param1.target as FileRuntimeImageLoader;
         if(!_loc4_)
         {
            this.removeListeners(_loc2_);
            if(_loc3_ || _loc3_)
            {
               _loc2_.removeEventListener(FileRuntimeLoaderEvent.COMPLETE,this.handleSheetComplete);
               if(_loc3_)
               {
                  this._sheet = param1.instance.rawContent as Bitmap;
                  if(!(_loc4_ && _loc3_))
                  {
                     this.handleAllComplete();
                  }
               }
            }
         }
      }
      
      private function handleTextureComplete(param1:FileRuntimeLoaderEvent) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FileRuntimeImageLoader = param1.target as FileRuntimeImageLoader;
         if(_loc4_)
         {
            this.removeListeners(_loc2_);
            if(_loc4_ || _loc3_)
            {
               _loc2_.removeEventListener(FileRuntimeLoaderEvent.COMPLETE,this.handleTextureComplete);
               if(!_loc3_)
               {
                  addr0067:
                  this._texture = param1.instance.rawContent as Bitmap;
                  if(!_loc3_)
                  {
                     addr007c:
                     this.handleAllComplete();
                  }
               }
               return;
            }
            §§goto(addr0067);
         }
         §§goto(addr007c);
      }
      
      private function handleLightComplete(param1:FileRuntimeLoaderEvent) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:FileRuntimeImageLoader = param1.target as FileRuntimeImageLoader;
         if(_loc3_ || Boolean(param1))
         {
            this.removeListeners(_loc2_);
            if(!_loc4_)
            {
               _loc2_.removeEventListener(FileRuntimeLoaderEvent.COMPLETE,this.handleLightComplete);
               addr0044:
               if(!(_loc4_ && Boolean(this)))
               {
                  this._light = param1.instance.rawContent as Bitmap;
                  if(!_loc4_)
                  {
                     this.handleAllComplete();
                  }
               }
            }
            return;
         }
         §§goto(addr0044);
      }
      
      private function setupListeners(param1:FileRuntimeImageLoader) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(!(_loc2_ && Boolean(param1)))
         {
            param1.addEventListener(FileRuntimeLoaderEvent.ERROR,this.onError);
            if(_loc3_ || Boolean(this))
            {
               param1.addEventListener(FileRuntimeLoaderEvent.FAIL,this.onError);
               if(!(_loc2_ && _loc3_))
               {
                  addr0070:
                  param1.addEventListener(FileRuntimeLoaderEvent.CANCEL,this.onError);
               }
               return;
            }
         }
         §§goto(addr0070);
      }
      
      private function removeListeners(param1:FileRuntimeImageLoader) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            param1.removeEventListener(FileRuntimeLoaderEvent.ERROR,this.onError);
            if(_loc3_ || _loc3_)
            {
               param1.removeEventListener(FileRuntimeLoaderEvent.FAIL,this.onError);
               if(_loc3_ || _loc2_)
               {
                  addr0064:
                  param1.removeEventListener(FileRuntimeLoaderEvent.CANCEL,this.onError);
               }
               §§goto(addr0072);
            }
            §§goto(addr0064);
         }
         addr0072:
      }
      
      private function onError(param1:FileRuntimeLoaderEvent) : void
      {
      }
      
      private function onLoadingError(param1:FileRuntimeLoaderEvent) : void
      {
      }
      
      private function handleAllComplete(param1:Event = null) : void
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_ || Boolean(param1))
         {
            §§push(this._sheet == null);
            if(!_loc2_)
            {
               §§push(!§§pop());
               if(!(_loc2_ && Boolean(param1)))
               {
                  var _temp_4:* = §§pop();
                  §§push(_temp_4);
                  §§push(_temp_4);
                  if(_loc3_ || _loc2_)
                  {
                     if(§§pop())
                     {
                        if(!(_loc2_ && Boolean(param1)))
                        {
                           §§pop();
                           if(!_loc2_)
                           {
                              §§push(this._texture == null);
                              if(!(_loc2_ && _loc3_))
                              {
                                 §§push(!§§pop());
                                 if(!(_loc2_ && _loc3_))
                                 {
                                    addr008b:
                                    var _temp_9:* = §§pop();
                                    addr008c:
                                    §§push(_temp_9);
                                    if(_temp_9)
                                    {
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§goto(addr009d);
                                       }
                                    }
                                 }
                                 §§goto(addr00cb);
                              }
                              addr009d:
                              §§pop();
                              if(_loc3_ || Boolean(this))
                              {
                                 addr00cb:
                                 §§push(this._light == null);
                                 if(!(_loc2_ && Boolean(this)))
                                 {
                                    addr00ca:
                                    §§push(!§§pop());
                                 }
                                 if(§§pop())
                                 {
                                    if(_loc3_ || Boolean(param1))
                                    {
                                       addr00dc:
                                       this._loadComplete = true;
                                       if(!_loc2_)
                                       {
                                          dispatchEvent(new Event(PRELOADING_COMPLETE));
                                       }
                                    }
                                 }
                              }
                              return;
                           }
                           §§goto(addr00dc);
                        }
                     }
                     §§goto(addr008b);
                  }
                  §§goto(addr008c);
               }
               §§goto(addr00cb);
            }
            §§goto(addr00ca);
         }
         §§goto(addr00dc);
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

