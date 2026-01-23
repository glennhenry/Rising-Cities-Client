package net.bigpoint.cityrama.view.field.ui.components.factory
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.errors.IllegalOperationError;
   import flash.utils.Dictionary;
   import net.bigpoint.cityrama.controller.EventAssetPackageLoaderFactory;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.PierObjectVo;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.ground.vo.SquareObjectVo;
   import net.bigpoint.cityrama.model.field.ground.vo.StreetObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IBillboardObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BoulderObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BridgeFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ClientFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.PlayfieldSwitchFieldObjectVo;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PierObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PlaneObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.SquareObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.StreetObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ActivatorFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.BoulderFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CinemaFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.CitySquareFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.DecorationFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ExpansionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.InfrastructureBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.MysteryBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.PowerplantFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ScheduledDropFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.TownHallFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardAssetsReferenceHolder;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BridgeFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.ClientFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PlayfieldSwitchFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableDisplayObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.PreloadableImage;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.services.filePreloadService.FilePreloadService;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeImageLoader;
   import net.bigpoint.services.fileRuntimeLoadService.FileRuntimeLoadService;
   
   public class GameObjectFactory
   {
      
      private var _filePreloadService:FilePreloadService;
      
      private var _fileRuntimeLoadService:FileRuntimeLoadService;
      
      private var _configTagDict:Dictionary;
      
      public function GameObjectFactory(param1:FilePreloadService, param2:FileRuntimeLoadService, param3:Dictionary)
      {
         var _temp_1:* = true;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = _temp_1;
         if(!(_loc4_ && Boolean(param3)))
         {
            super();
            if(_loc5_ || Boolean(param2))
            {
               this._filePreloadService = param1;
               if(_loc5_)
               {
                  §§goto(addr004b);
               }
               §§goto(addr0056);
            }
         }
         addr004b:
         this._fileRuntimeLoadService = param2;
         if(_loc5_)
         {
            addr0056:
            this._configTagDict = param3;
         }
      }
      
      private static function getBaseLayerLoaderName(param1:Class) : String
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!_loc3_)
         {
            if(param1 == ResidentialFieldObject)
            {
               if(_loc2_)
               {
                  §§push("ResidentialBase");
                  if(_loc2_ || _loc3_)
                  {
                     return §§pop();
                  }
                  §§goto(addr00b4);
               }
            }
            else
            {
               if(param1 != ShopFieldObject)
               {
                  if(param1 == ProductionFieldObject)
                  {
                     if(!_loc3_)
                     {
                        §§push("ProductionBase");
                        if(_loc2_ || _loc3_)
                        {
                           return §§pop();
                        }
                     }
                     else
                     {
                        addr01ff:
                        §§push(param1 == ActivatorFieldObject);
                        if(_loc2_)
                        {
                           addr0209:
                           var _temp_4:* = §§pop();
                           §§push(_temp_4);
                           §§push(_temp_4);
                           if(_loc2_)
                           {
                              addr020f:
                              if(!§§pop())
                              {
                                 if(!(_loc3_ && Boolean(param1)))
                                 {
                                    addr0220:
                                    §§pop();
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       §§push(param1 == CinemaFieldObject);
                                       if(_loc2_ || GameObjectFactory)
                                       {
                                          addr0240:
                                          var _temp_8:* = §§pop();
                                          §§push(_temp_8);
                                          §§push(_temp_8);
                                          if(!(_loc3_ && GameObjectFactory))
                                          {
                                             addr024e:
                                             if(!§§pop())
                                             {
                                                if(!_loc3_)
                                                {
                                                   addr0257:
                                                   §§pop();
                                                   if(!_loc3_)
                                                   {
                                                      addr025d:
                                                      §§push(param1 == ScheduledDropFieldObject);
                                                      if(!_loc3_)
                                                      {
                                                         addr0267:
                                                         if(§§pop())
                                                         {
                                                            if(!_loc3_)
                                                            {
                                                               §§goto(addr0270);
                                                            }
                                                            else
                                                            {
                                                               addr0293:
                                                               §§push(param1 == ExpansionFieldObject);
                                                               if(_loc2_)
                                                               {
                                                                  addr029d:
                                                                  var _temp_10:* = §§pop();
                                                                  addr029e:
                                                                  §§push(_temp_10);
                                                                  if(!_temp_10)
                                                                  {
                                                                     if(!_loc3_)
                                                                     {
                                                                        §§goto(addr02a7);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr02b2);
                                                            }
                                                         }
                                                         §§goto(addr0293);
                                                      }
                                                      §§goto(addr02a7);
                                                   }
                                                   §§goto(addr02ad);
                                                }
                                                §§goto(addr02a7);
                                             }
                                             §§goto(addr0267);
                                          }
                                          §§goto(addr029e);
                                       }
                                       §§goto(addr029d);
                                    }
                                    §§goto(addr0270);
                                 }
                                 §§goto(addr0257);
                              }
                              §§goto(addr0240);
                           }
                           §§goto(addr024e);
                        }
                        §§goto(addr029d);
                     }
                     §§goto(addr0281);
                  }
                  else
                  {
                     if(param1 == PowerplantFieldObject)
                     {
                        if(!(_loc3_ && Boolean(param1)))
                        {
                           §§push("PowerplantBase");
                           if(_loc2_ || _loc2_)
                           {
                              addr00b4:
                              return §§pop();
                           }
                        }
                        else
                        {
                           §§goto(addr00ba);
                        }
                        §§goto(addr0281);
                     }
                     addr00ba:
                     §§push(param1 == InfrastructureBuildingFieldObject);
                     if(!_loc3_)
                     {
                        var _temp_13:* = §§pop();
                        §§push(_temp_13);
                        §§push(_temp_13);
                        if(!(_loc3_ && _loc2_))
                        {
                           if(!§§pop())
                           {
                              if(!_loc3_)
                              {
                                 §§pop();
                                 if(_loc2_ || Boolean(param1))
                                 {
                                    §§push(param1 == InfrastructureDecorationFieldObject);
                                    if(!_loc3_)
                                    {
                                       addr00f3:
                                       if(§§pop())
                                       {
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push("SpecialBase");
                                             if(!(_loc3_ && _loc2_))
                                             {
                                                return §§pop();
                                             }
                                             §§goto(addr0139);
                                          }
                                          else
                                          {
                                             §§goto(addr025d);
                                          }
                                       }
                                       else
                                       {
                                          if(param1 == DecorationFieldObject)
                                          {
                                             if(!_loc3_)
                                             {
                                                addr0130:
                                                §§push("DecorationBase");
                                                if(!_loc3_)
                                                {
                                                   addr0139:
                                                   return §§pop();
                                                }
                                             }
                                             else
                                             {
                                                §§goto(addr0270);
                                             }
                                             addr0281:
                                             return §§pop();
                                          }
                                          §§push(param1 == AcademyFieldObject);
                                          if(_loc2_ || _loc3_)
                                          {
                                             var _temp_19:* = §§pop();
                                             §§push(_temp_19);
                                             §§push(_temp_19);
                                             if(_loc2_)
                                             {
                                                if(!§§pop())
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      §§pop();
                                                      if(_loc2_)
                                                      {
                                                         addr0172:
                                                         §§push(param1 == TownHallFieldObject);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr0184:
                                                            var _temp_21:* = §§pop();
                                                            §§push(_temp_21);
                                                            §§push(_temp_21);
                                                            if(_loc2_)
                                                            {
                                                               if(!§§pop())
                                                               {
                                                                  if(!_loc3_)
                                                                  {
                                                                     §§pop();
                                                                     if(!(_loc3_ && Boolean(param1)))
                                                                     {
                                                                        §§push(param1 == CitySquareFieldObject);
                                                                        if(_loc2_ || _loc3_)
                                                                        {
                                                                           addr01b3:
                                                                           var _temp_24:* = §§pop();
                                                                           §§push(_temp_24);
                                                                           §§push(_temp_24);
                                                                           if(_loc2_ || _loc3_)
                                                                           {
                                                                              if(!§§pop())
                                                                              {
                                                                                 if(_loc2_)
                                                                                 {
                                                                                    §§pop();
                                                                                    if(_loc2_)
                                                                                    {
                                                                                       §§push(param1 == MysteryBuildingFieldObject);
                                                                                       if(!(_loc3_ && Boolean(param1)))
                                                                                       {
                                                                                          addr01e2:
                                                                                          var _temp_27:* = §§pop();
                                                                                          §§push(_temp_27);
                                                                                          §§push(_temp_27);
                                                                                          if(!(_loc3_ && Boolean(param1)))
                                                                                          {
                                                                                             addr01f0:
                                                                                             if(!§§pop())
                                                                                             {
                                                                                                if(_loc2_)
                                                                                                {
                                                                                                   addr01f9:
                                                                                                   §§pop();
                                                                                                   if(!_loc3_)
                                                                                                   {
                                                                                                      §§goto(addr01ff);
                                                                                                   }
                                                                                                   §§goto(addr025d);
                                                                                                }
                                                                                                §§goto(addr0220);
                                                                                             }
                                                                                             §§goto(addr0209);
                                                                                          }
                                                                                          §§goto(addr024e);
                                                                                       }
                                                                                       §§goto(addr029d);
                                                                                    }
                                                                                    §§goto(addr025d);
                                                                                 }
                                                                                 §§goto(addr01f9);
                                                                              }
                                                                              §§goto(addr01e2);
                                                                           }
                                                                           §§goto(addr020f);
                                                                        }
                                                                        §§goto(addr029d);
                                                                     }
                                                                     §§goto(addr01ff);
                                                                  }
                                                               }
                                                               §§goto(addr01b3);
                                                            }
                                                            §§goto(addr020f);
                                                         }
                                                         §§goto(addr0209);
                                                      }
                                                      §§goto(addr02ad);
                                                   }
                                                   §§goto(addr0267);
                                                }
                                                §§goto(addr0184);
                                             }
                                             §§goto(addr020f);
                                          }
                                          §§goto(addr029d);
                                          §§goto(addr02bd);
                                       }
                                       §§goto(addr029d);
                                    }
                                    §§goto(addr0220);
                                 }
                                 §§goto(addr0172);
                              }
                              §§goto(addr029d);
                           }
                           §§goto(addr00f3);
                        }
                        §§goto(addr01f0);
                     }
                     §§goto(addr02a7);
                  }
                  if(_loc2_)
                  {
                     addr02b2:
                     addr02ad:
                     if(param1 == BoulderFieldObject)
                     {
                        if(_loc2_)
                        {
                           addr02bd:
                           return "";
                           addr02bb:
                        }
                     }
                  }
                  throw new IllegalOperationError("Not known class");
               }
               if(_loc2_)
               {
                  §§push("ShopBase");
                  if(!_loc3_)
                  {
                     return §§pop();
                  }
                  §§goto(addr00b4);
               }
               else
               {
                  addr0270:
                  §§push("SpecialBase");
                  if(_loc2_ || Boolean(param1))
                  {
                     §§goto(addr0281);
                  }
               }
               §§goto(addr02bd);
            }
            §§goto(addr02bb);
         }
         §§goto(addr0130);
      }
      
      public function getBillboardObject(param1:IBillboardObjectVo, param2:EventProxy = null) : BillboardObject
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc7_:BoulderObjectVo = null;
         var _loc3_:BillboardAssetsReferenceHolder = new BillboardAssetsReferenceHolder();
         if(!_loc9_)
         {
            §§push(param1 is BoulderObjectVo);
            if(_loc8_)
            {
               if(§§pop())
               {
                  if(_loc8_ || Boolean(param1))
                  {
                     _loc7_ = param1 as BoulderObjectVo;
                     if(_loc7_.isEventBoulder)
                     {
                        if(!_loc9_)
                        {
                           if(param2)
                           {
                              if(_loc8_)
                              {
                                 _loc3_.mainAsset = new PreloadableDisplayObject(new Sprite(),this._fileRuntimeLoadService.getLoaderForObjectInstance(EventAssetPackageLoaderFactory.SWF_LOADER_EVENT_PREFIX + param2.currentRunningEventQuestGfxId,param2.currentRunningEventQuestGfxId + "_EventBoulder",true,true));
                                 if(_loc8_)
                                 {
                                 }
                              }
                           }
                        }
                     }
                     else
                     {
                        _loc3_.mainAsset = this.generatePreloadContainer("PlayfieldBoulders");
                     }
                  }
               }
               else
               {
                  addr00c8:
                  if(param1 is ExpansionFieldObjectVo)
                  {
                     if(_loc8_)
                     {
                        _loc3_.mainAsset = this.generatePreloadContainer("PlayfieldExpansions");
                        if(!(_loc8_ || Boolean(param2)))
                        {
                           addr010f:
                           _loc3_.buildUpAssets = this.generatePreloadContainer("ConstructionSite");
                        }
                        §§goto(addr011c);
                     }
                     §§goto(addr010f);
                  }
                  else
                  {
                     _loc3_.mainAsset = this.generatePreloadContainer(param1.configPlayfieldItemVo.animatedSwfName);
                     if(!(_loc9_ && Boolean(this)))
                     {
                        §§goto(addr010f);
                     }
                  }
               }
               addr011c:
               var _loc4_:Class = ServerTagToClassSelector.getFieldObjectClassByTags(param1.configPlayfieldItemVo,this._configTagDict);
               §§push(getBaseLayerLoaderName(_loc4_));
               if(_loc8_ || Boolean(param1))
               {
                  §§push(§§pop());
               }
               var _loc5_:* = §§pop();
               if(_loc5_ != "")
               {
                  if(!(_loc9_ && Boolean(param1)))
                  {
                     _loc3_.basementAsset = this.generatePreloadContainer(_loc5_);
                  }
               }
               var _loc6_:BillboardObject = new _loc4_(_loc3_,param1);
               _loc6_.container.mouseEnabled = false;
               return _loc6_;
            }
            §§goto(addr00c8);
         }
         §§goto(addr010f);
      }
      
      public function getClientFieldObject(param1:ClientFieldObjectVo) : ClientFieldObject
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:PreloadableDisplayObject = null;
         if(_loc4_)
         {
            §§push(param1 is BridgeFieldObjectVo);
            if(!(_loc5_ && Boolean(this)))
            {
               if(§§pop())
               {
                  if(!_loc5_)
                  {
                     addr003b:
                     §§push(this.generatePreloadContainer("Bridge_assets"));
                     if(!(_loc5_ && _loc3_))
                     {
                        _loc2_ = §§pop();
                        if(!(_loc5_ && _loc3_))
                        {
                           return new BridgeFieldObject(_loc2_,param1);
                        }
                        §§goto(addr0087);
                     }
                     §§goto(addr0099);
                  }
                  §§goto(addr0090);
               }
               addr0087:
               §§goto(addr008c);
            }
            addr008c:
            if(param1 is PlayfieldSwitchFieldObjectVo)
            {
               addr0099:
               _loc2_ = this.generatePreloadContainer("playfieldSwitchFieldObjects");
               addr0090:
               if(_loc4_)
               {
                  return new PlayfieldSwitchFieldObject(_loc2_,param1);
               }
            }
            return new ClientFieldObject(_loc2_,param1);
         }
         §§goto(addr003b);
      }
      
      private function generatePreloadContainer(param1:String) : PreloadableDisplayObject
      {
         return new PreloadableDisplayObject(new Sprite(),this._fileRuntimeLoadService.getLoaderForObjectInstance(param1,param1,true,true));
      }
      
      public function getPlane(param1:IPlaneObjectVo) : IPlaneObject
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:DisplayObject = null;
         var _loc3_:IPlaneObject = null;
         var _loc4_:FileRuntimeImageLoader = null;
         if(!_loc5_)
         {
            if(param1 is PierObjectVo)
            {
               if(!(_loc5_ && Boolean(this)))
               {
                  return this.getPier(param1 as PierObjectVo);
               }
            }
            else
            {
               if(param1.configPlayfieldItemVo.animatedSwfPath.indexOf(".png") != -1)
               {
                  if(param1.configPlayfieldItemVo.preload == 1)
                  {
                     §§goto(addr00cb);
                  }
                  else
                  {
                     _loc4_ = this._fileRuntimeLoadService.getLoaderForImage(param1.configPlayfieldItemVo.animatedSwfName);
                     _loc2_ = new PreloadableImage(new Sprite(),_loc4_);
                  }
                  addr0107:
                  §§push(param1 is StreetObjectVo);
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     if(§§pop())
                     {
                        if(!(_loc5_ && Boolean(_loc2_)))
                        {
                           _loc3_ = new StreetObject(_loc2_,param1 as StreetObjectVo);
                        }
                        else
                        {
                           addr0156:
                           _loc3_ = new SquareObject(_loc2_,param1 as SquareObjectVo);
                        }
                        §§goto(addr017c);
                     }
                     else
                     {
                        §§goto(addr0152);
                     }
                  }
                  addr0152:
                  if(param1 is SquareObjectVo)
                  {
                     §§goto(addr0156);
                  }
                  else
                  {
                     _loc3_ = new PlaneObject(_loc2_,param1 as PlaneObjectVo);
                  }
                  addr017c:
                  return _loc3_;
               }
               if(_loc6_ || Boolean(_loc2_))
               {
                  addr0075:
                  §§push(this._filePreloadService);
                  if(!(_loc5_ && Boolean(_loc3_)))
                  {
                     _loc2_ = §§pop().getObjectInstance(param1.configPlayfieldItemVo.animatedSwfName,param1.configPlayfieldItemVo.animatedSwfName) as DisplayObject;
                     if(!(_loc5_ && Boolean(this)))
                     {
                        §§goto(addr0107);
                     }
                     §§goto(addr0156);
                  }
                  else
                  {
                     addr00cf:
                     _loc2_ = §§pop().getImage(param1.configPlayfieldItemVo.animatedSwfName);
                  }
                  §§goto(addr0107);
               }
               else
               {
                  addr00cb:
                  §§push(this._filePreloadService);
               }
               §§goto(addr00cf);
            }
            §§goto(addr00cb);
         }
         §§goto(addr0075);
      }
      
      public function getPier(param1:PierObjectVo) : IPlaneObject
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:BillboardAssetsReferenceHolder = new BillboardAssetsReferenceHolder();
         if(_loc4_)
         {
            _loc2_.mainAsset = this.generatePreloadContainer(param1.configPlayfieldItemVo.animatedSwfName);
         }
         return new PierObject(_loc2_,param1);
      }
   }
}

