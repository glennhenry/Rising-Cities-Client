package net.bigpoint.cityrama.view.field.ui.components.factory
{
   import flash.display.Sprite;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.model.urbies.vo.UrbieLifeVo;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableImage;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableUVObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IGameObject;
   import net.bigpoint.cityrama.view.field.ui.components.urbies.pedestrians.GenericUrbieBottom;
   import net.bigpoint.cityrama.view.field.ui.components.urbies.pedestrians.GenericUrbieTop;
   import net.bigpoint.cityrama.view.field.ui.components.urbies.vehicles.GenericCar;
   import net.bigpoint.cityrama.view.field.ui.components.urbies.vehicles.GenericSheetCar;
   import net.bigpoint.services.filePreloadService.FilePreloadService;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeImageLoader;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadService;
   import net.bigpoint.util.CityramaLogger;
   
   public class UrbieFactory
   {
      
      private static var _instance:UrbieFactory;
      
      private var _filePreloadService:FilePreloadService;
      
      private var _fileRuntimeLoadService:FileRuntimeLoadService;
      
      private var _animationsClasses:Dictionary;
      
      private var _sheetDictionary:Dictionary;
      
      public function UrbieFactory(param1:FilePreloadService, param2:FileRuntimeLoadService)
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         if(!(_loc4_ && _loc3_))
         {
            super();
            if(_loc3_)
            {
               if(UrbieFactory._instance != null)
               {
                  if(!(_loc4_ && Boolean(param1)))
                  {
                     §§goto(addr0041);
                  }
               }
               this._filePreloadService = param1;
               if(!_loc4_)
               {
                  this._fileRuntimeLoadService = param2;
                  if(!_loc4_)
                  {
                     this._animationsClasses = new Dictionary();
                     if(!(_loc4_ && Boolean(this)))
                     {
                        addr008e:
                        this._animationsClasses["genericcar"] = GenericCar;
                        if(_loc3_)
                        {
                           addr00a1:
                           this._animationsClasses["genericurbietop"] = GenericUrbieTop;
                           if(!(_loc4_ && Boolean(this)))
                           {
                              this._animationsClasses["genericurbiebottom"] = GenericUrbieBottom;
                              if(_loc3_)
                              {
                                 this._animationsClasses["genericsheetcar"] = GenericSheetCar;
                                 if(_loc3_ || Boolean(this))
                                 {
                                    addr00f6:
                                    this._sheetDictionary = new Dictionary(true);
                                 }
                              }
                              §§goto(addr0101);
                           }
                           §§goto(addr00f6);
                        }
                     }
                     addr0101:
                     return;
                  }
                  §§goto(addr00a1);
               }
            }
            §§goto(addr008e);
         }
         addr0041:
         throw new Error("SingletonError::UrbieFactory");
      }
      
      public static function init(param1:FilePreloadService, param2:FileRuntimeLoadService) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && _loc3_))
         {
            UrbieFactory._instance = new UrbieFactory(param1,param2);
         }
      }
      
      public static function get instance() : UrbieFactory
      {
         return UrbieFactory._instance;
      }
      
      public function getUrbie(param1:UrbieLifeVo) : IGameObject
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:Class = null;
         var _loc3_:Sprite = null;
         var _loc4_:IGameObject = null;
         if(!(_loc5_ && Boolean(_loc2_)))
         {
            if(this._animationsClasses[param1.config.animationClass] != null)
            {
               _loc2_ = this._animationsClasses[param1.config.animationClass];
               _loc3_ = this.generateContainer(param1);
               addr0042:
               if(!(_loc5_ && Boolean(param1)))
               {
                  if(_loc3_ == null)
                  {
                     if(!_loc5_)
                     {
                        CityramaLogger.logger.fatal("UrbieFactory:: URBIE NOT FOUND :: ",param1.config.citizenID);
                        if(_loc5_)
                        {
                           addr00af:
                           _loc4_ = new _loc2_(_loc3_,param1);
                           if(_loc6_ || Boolean(this))
                           {
                              return IGameObject(_loc4_);
                           }
                           §§goto(addr00d1);
                        }
                     }
                     return null;
                  }
               }
               §§goto(addr00af);
            }
            addr00d1:
            return null;
         }
         §§goto(addr0042);
      }
      
      private function generateContainer(param1:UrbieLifeVo) : Sprite
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:FileRuntimeImageLoader = null;
         if(!(_loc3_ && Boolean(_loc2_)))
         {
            §§push(param1.config);
            if(_loc4_ || Boolean(_loc2_))
            {
               §§push(§§pop().sheetPath);
               if(!(_loc3_ && Boolean(this)))
               {
                  §§push(§§pop());
                  if(!_loc3_)
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     §§push(_temp_5);
                     if(_loc4_)
                     {
                        if(§§pop())
                        {
                           if(_loc4_)
                           {
                              §§pop();
                              if(_loc4_ || Boolean(this))
                              {
                                 addr006c:
                                 §§push(param1.config);
                                 if(_loc4_)
                                 {
                                    §§push(§§pop().texturePath);
                                    if(_loc4_ || Boolean(_loc2_))
                                    {
                                       §§push(§§pop());
                                       if(!_loc3_)
                                       {
                                          addr008c:
                                          var _temp_8:* = §§pop();
                                          §§push(_temp_8);
                                          §§push(_temp_8);
                                          if(!(_loc3_ && Boolean(_loc2_)))
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc3_)
                                                {
                                                   §§pop();
                                                   if(!_loc3_)
                                                   {
                                                      §§push(param1.config);
                                                      if(!_loc3_)
                                                      {
                                                         addr00b1:
                                                         §§push(§§pop().lightingPath);
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§pop());
                                                            if(!(_loc3_ && _loc3_))
                                                            {
                                                               §§goto(addr00c8);
                                                            }
                                                            §§goto(addr01aa);
                                                         }
                                                         §§goto(addr0128);
                                                      }
                                                      §§goto(addr0166);
                                                   }
                                                   §§goto(addr01ae);
                                                }
                                                §§goto(addr014f);
                                             }
                                             addr00c8:
                                             if(§§pop())
                                             {
                                                if(_loc4_)
                                                {
                                                   return new PreloadableUVObject(new Sprite(),param1.config.sheetPath,param1.config.texturePath,param1.config.lightingPath,this._fileRuntimeLoadService);
                                                   addr00d2:
                                                }
                                                else
                                                {
                                                   addr01ae:
                                                   _loc2_ = this._fileRuntimeLoadService.getLoaderForImage(param1.config.sheetPath);
                                                   if(!(_loc3_ && _loc3_))
                                                   {
                                                      return new PreloadableImage(new Sprite(),_loc2_);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(param1.config);
                                                if(_loc4_ || Boolean(param1))
                                                {
                                                   §§push(§§pop().sheetPath);
                                                   if(!(_loc3_ && Boolean(this)))
                                                   {
                                                      addr0128:
                                                      §§push(§§pop());
                                                      if(!(_loc3_ && _loc3_))
                                                      {
                                                         var _temp_15:* = §§pop();
                                                         §§push(_temp_15);
                                                         §§push(_temp_15);
                                                         if(!(_loc3_ && Boolean(this)))
                                                         {
                                                            addr0145:
                                                            if(§§pop())
                                                            {
                                                               if(_loc4_)
                                                               {
                                                                  addr014f:
                                                                  §§pop();
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§push(param1.config);
                                                                     if(_loc4_ || Boolean(this))
                                                                     {
                                                                        addr0166:
                                                                        §§push(§§pop().texturePath);
                                                                        if(_loc4_)
                                                                        {
                                                                           §§push(!§§pop());
                                                                           if(_loc4_)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!(_loc3_ && Boolean(_loc2_)))
                                                                              {
                                                                                 addr0185:
                                                                                 var _temp_19:* = §§pop();
                                                                                 addr0186:
                                                                                 §§push(_temp_19);
                                                                                 if(_temp_19)
                                                                                 {
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       addr0190:
                                                                                       §§pop();
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          §§goto(addr01aa);
                                                                                       }
                                                                                       §§goto(addr01ae);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr01aa:
                                                                              §§goto(addr019c);
                                                                           }
                                                                           §§goto(addr0185);
                                                                        }
                                                                        addr019c:
                                                                        §§goto(addr0199);
                                                                     }
                                                                     addr0199:
                                                                     §§goto(addr0196);
                                                                  }
                                                                  addr0196:
                                                                  if(!param1.config.lightingPath)
                                                                  {
                                                                     §§goto(addr01ae);
                                                                  }
                                                                  §§goto(addr01db);
                                                               }
                                                            }
                                                            §§goto(addr0185);
                                                         }
                                                         §§goto(addr0186);
                                                      }
                                                      §§goto(addr0185);
                                                   }
                                                   §§goto(addr019c);
                                                }
                                                §§goto(addr0199);
                                             }
                                             addr01db:
                                             return null;
                                          }
                                          §§goto(addr0145);
                                       }
                                       §§goto(addr014f);
                                    }
                                    §§goto(addr019c);
                                 }
                                 §§goto(addr00b1);
                              }
                              §§goto(addr00d2);
                           }
                           §§goto(addr0185);
                        }
                        §§goto(addr008c);
                     }
                     §§goto(addr0145);
                  }
                  §§goto(addr0190);
               }
               §§goto(addr0128);
            }
            §§goto(addr00b1);
         }
         §§goto(addr006c);
      }
      
      public function get sheetDictionary() : Dictionary
      {
         return this._sheetDictionary;
      }
   }
}

