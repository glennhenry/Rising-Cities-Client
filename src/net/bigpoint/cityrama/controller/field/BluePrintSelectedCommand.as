package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.FieldBuildProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IPlaneObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.preloader.FileRuntimeLoadServiceProxy;
   import net.bigpoint.cityrama.model.quest.VirtualTaskNotificationInterest;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigGroundRestrictionDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.streetBuilding.StreetBuildProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.factory.GameObjectFactory;
   import net.bigpoint.cityrama.view.field.ui.components.factory.ServerTagToClassSelector;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEstablishedManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import net.bigpoint.util.VectorUtilities;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class BluePrintSelectedCommand extends SimpleCommand
   {
      
      public function BluePrintSelectedCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc30_:Boolean = true;
         var _loc31_:* = §§pop();
         var _loc6_:Number = NaN;
         var _loc7_:ApplicationModeProxy = null;
         var _loc8_:GridProxy = null;
         var _loc9_:GameConfigProxy = null;
         var _loc10_:FilePreloadServiceProxy = null;
         var _loc11_:FileRuntimeLoadServiceProxy = null;
         var _loc12_:TimerProxy = null;
         var _loc13_:PlayfieldProxy = null;
         var _loc14_:RestrictionProxy = null;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Cuboid = null;
         var _loc22_:IGameObjectVo = null;
         var _loc23_:GameObjectFactory = null;
         var _loc24_:BillboardObject = null;
         var _loc25_:IPlaneObject = null;
         var _loc26_:Vector.<ConfigGroundRestrictionDTO> = null;
         var _loc27_:StreetBuildProxy = null;
         var _loc2_:FieldBuildProxy = facade.retrieveProxy(FieldBuildProxy.NAME) as FieldBuildProxy;
         if(_loc30_)
         {
            if(!_loc2_)
            {
               addr009e:
               _loc2_ = new FieldBuildProxy();
               if(!(_loc31_ && _loc3_))
               {
                  facade.registerProxy(_loc2_);
               }
            }
            var _loc3_:Object = param1.getBody();
            var _loc4_:ConfigPlayfieldItemDTO = _loc3_.config as ConfigPlayfieldItemDTO;
            var _loc5_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
            for each(_loc6_ in _loc4_.tagIds)
            {
               if(!_loc30_)
               {
                  break;
               }
               §§push(ConfigTagDTO(_loc5_.config.tags[_loc6_]).tagName);
               if(!_loc31_)
               {
                  §§push(ServerTagConstants.RESIDENTIAL);
                  if(!(_loc31_ && Boolean(_loc2_)))
                  {
                     if(§§pop() == §§pop())
                     {
                        if(_loc31_)
                        {
                           break;
                        }
                        sendNotification(VirtualTaskNotificationInterest.RESIDENTIAL_CATEGORY_PLACE_SELECTED);
                        if(_loc30_ || Boolean(_loc2_))
                        {
                           break;
                        }
                     }
                     else
                     {
                        §§push(ConfigTagDTO(_loc5_.config.tags[_loc6_]).tagName);
                        if(_loc30_ || Boolean(this))
                        {
                           addr017c:
                           §§push(ServerTagConstants.PRODUCTION);
                           if(_loc30_)
                           {
                              if(§§pop() == §§pop())
                              {
                                 if(!_loc30_)
                                 {
                                    break;
                                 }
                                 sendNotification(VirtualTaskNotificationInterest.PRODUCTION_CATEGORY_PLACE_SELECTED);
                                 if(_loc30_)
                                 {
                                    break;
                                 }
                              }
                              else
                              {
                                 addr01c1:
                                 addr01bc:
                                 if(ConfigTagDTO(_loc5_.config.tags[_loc6_]).tagName != ServerTagConstants.GROUND)
                                 {
                                    continue;
                                 }
                                 if(_loc31_)
                                 {
                                    break;
                                 }
                              }
                              addr01cb:
                              sendNotification(VirtualTaskNotificationInterest.GROUND_CATEGORY_PLACE_SELECTED);
                              break;
                           }
                           §§goto(addr01c1);
                        }
                        §§goto(addr01bc);
                     }
                     §§goto(addr01cb);
                  }
                  §§goto(addr01c1);
               }
               §§goto(addr017c);
            }
            if(_loc30_ || Boolean(_loc2_))
            {
               sendNotification(VirtualTaskNotificationInterest.ARCHITECTUAL_BOOK_PLACE_CLICKED);
            }
            _loc7_ = ApplicationModeProxy(facade.retrieveProxy(ApplicationModeProxy.NAME));
            _loc8_ = GridProxy(facade.retrieveProxy(GridProxy.NAME));
            _loc9_ = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
            _loc10_ = facade.retrieveProxy(FilePreloadServiceProxy.NAME) as FilePreloadServiceProxy;
            _loc11_ = facade.retrieveProxy(FileRuntimeLoadServiceProxy.NAME) as FileRuntimeLoadServiceProxy;
            _loc12_ = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
            _loc13_ = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
            _loc14_ = facade.retrieveProxy(RestrictionProxy.NAME) as RestrictionProxy;
            if(_loc30_ || Boolean(this))
            {
               _loc7_.mode = ApplicationModeProxy.MODE_BUILD;
               if(!(_loc31_ && Boolean(this)))
               {
                  _loc2_.selectedConfig = _loc4_;
                  if(!(_loc31_ && Boolean(param1)))
                  {
                     _loc2_.buildAndBuyPermission = _loc3_.buyPermission as Boolean;
                     if(_loc30_)
                     {
                        addr02ee:
                        §§push(Math.round(_loc13_.mouseMatrixPoint.x - _loc2_.selectedConfig.sizeX / 2));
                        if(_loc30_ || Boolean(this))
                        {
                           _loc15_ = §§pop();
                           if(!(_loc31_ && Boolean(_loc3_)))
                           {
                              addr0325:
                              §§push(Math.round(_loc13_.mouseMatrixPoint.y - _loc2_.selectedConfig.sizeY / 2));
                              if(_loc30_ || Boolean(_loc3_))
                              {
                                 _loc16_ = §§pop();
                                 if(_loc30_ || Boolean(this))
                                 {
                                    addr035c:
                                    §§push(VectorUtilities.getMinValue(_loc2_.selectedConfig.zLevels));
                                    if(!_loc31_)
                                    {
                                       §§push(§§pop());
                                       if(_loc30_)
                                       {
                                          addr0377:
                                          _loc17_ = §§pop();
                                          if(_loc30_ || Boolean(_loc2_))
                                          {
                                             addr0387:
                                             §§push(_loc2_.selectedConfig);
                                             if(!(_loc31_ && Boolean(this)))
                                             {
                                                §§push(§§pop().sizeX);
                                                if(_loc30_ || Boolean(_loc3_))
                                                {
                                                   §§push(§§pop());
                                                   if(_loc30_)
                                                   {
                                                      addr03bd:
                                                      _loc18_ = §§pop();
                                                      if(!_loc31_)
                                                      {
                                                         addr03c5:
                                                         §§push(_loc2_.selectedConfig);
                                                         if(!(_loc31_ && Boolean(this)))
                                                         {
                                                            §§push(§§pop().sizeY);
                                                            if(_loc30_ || Boolean(param1))
                                                            {
                                                               §§push(§§pop());
                                                               if(!_loc31_)
                                                               {
                                                                  addr03ef:
                                                                  _loc19_ = §§pop();
                                                                  if(_loc30_)
                                                                  {
                                                                     addr0401:
                                                                     _loc20_ = _loc2_.selectedConfig.zLevels.length;
                                                                     addr03fb:
                                                                     addr03f7:
                                                                  }
                                                                  addr0403:
                                                                  _loc21_ = new Cuboid(_loc15_,_loc16_,_loc17_,_loc18_,_loc19_,_loc20_);
                                                                  _loc22_ = ServerTagToClassSelector.getFieldObjectVoClassByTags(_loc2_.selectedConfig,_loc21_,_loc12_,_loc9_,_loc13_);
                                                                  _loc23_ = new GameObjectFactory(_loc10_.service,_loc11_.service,_loc9_.config.tags);
                                                                  if(!(_loc31_ && Boolean(_loc3_)))
                                                                  {
                                                                     §§push(_loc22_ is IPlaneObjectVo);
                                                                     if(_loc30_)
                                                                     {
                                                                        if(!§§pop())
                                                                        {
                                                                           if(!(_loc31_ && Boolean(_loc3_)))
                                                                           {
                                                                              addr047c:
                                                                              _loc24_ = _loc23_.getBillboardObject(_loc22_ as BillboardObjectVo);
                                                                              _loc24_.expandHitzone();
                                                                              if(_loc30_ || Boolean(param1))
                                                                              {
                                                                                 PlayfieldObjectsProxy.addIconOffsets(_loc22_ as BillboardObjectVo,_loc10_);
                                                                              }
                                                                              _loc26_ = _loc14_.getAllRestrictionsForItem(_loc24_.billboardObjectVo.configPlayfieldItemVo);
                                                                              if(_loc26_.length > 0)
                                                                              {
                                                                                 if(_loc30_)
                                                                                 {
                                                                                    _loc14_.restrictionGridSource = _loc26_;
                                                                                    if(_loc30_)
                                                                                    {
                                                                                       _loc14_.restrictionGridVisibility = true;
                                                                                       if(_loc30_)
                                                                                       {
                                                                                          addr04e7:
                                                                                          §§push(_loc24_ is IBuildUpManagerImplementation);
                                                                                          if(_loc30_ || Boolean(_loc2_))
                                                                                          {
                                                                                             if(§§pop())
                                                                                             {
                                                                                                if(!(_loc31_ && Boolean(_loc2_)))
                                                                                                {
                                                                                                   _loc24_.presentation.visible = false;
                                                                                                   if(_loc30_ || Boolean(this))
                                                                                                   {
                                                                                                      (_loc24_ as IBuildUpManagerImplementation).invalidateBuildUpManager();
                                                                                                      if(!_loc31_)
                                                                                                      {
                                                                                                         addr0545:
                                                                                                         (_loc24_ as IEstablishedManagerImplementation).invalidateEstablishedManager();
                                                                                                         if(_loc30_)
                                                                                                         {
                                                                                                            _loc8_.setItemSize(_loc24_.billboardObjectVo.configPlayfieldItemVo.sizeX,_loc24_.billboardObjectVo.configPlayfieldItemVo.sizeY,_loc24_.billboardObjectVo.configPlayfieldItemVo.zLevels.length,VectorUtilities.getMinValue(_loc24_.billboardObjectVo.configPlayfieldItemVo.zLevels));
                                                                                                            if(_loc30_ || Boolean(param1))
                                                                                                            {
                                                                                                               _loc24_.updateIndex(_loc15_,_loc16_);
                                                                                                               if(!(_loc31_ && Boolean(_loc3_)))
                                                                                                               {
                                                                                                                  addr05b2:
                                                                                                                  §§push(_loc24_);
                                                                                                                  §§push(_loc15_);
                                                                                                                  if(!_loc31_)
                                                                                                                  {
                                                                                                                     §§push(_loc13_.tileSize);
                                                                                                                     if(_loc30_ || Boolean(_loc3_))
                                                                                                                     {
                                                                                                                        addr05d0:
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        §§push(_loc16_);
                                                                                                                        if(_loc30_ || Boolean(_loc3_))
                                                                                                                        {
                                                                                                                           §§push(§§pop() * _loc13_.tileSize);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§pop().moveTo(§§pop(),§§pop(),1);
                                                                                                                     if(_loc30_)
                                                                                                                     {
                                                                                                                        addr05f2:
                                                                                                                        _loc2_.billboardObjectToAdd = _loc24_;
                                                                                                                        if(_loc30_)
                                                                                                                        {
                                                                                                                           addr05fe:
                                                                                                                           sendNotification(ApplicationNotificationConstants.FIELD_ADD_TEMPORARY,_loc24_);
                                                                                                                           if(_loc30_)
                                                                                                                           {
                                                                                                                              addr0610:
                                                                                                                              addr0616:
                                                                                                                              if(_loc24_ is IEmergencyInfrastructure)
                                                                                                                              {
                                                                                                                                 if(!(_loc31_ && Boolean(_loc2_)))
                                                                                                                                 {
                                                                                                                                    addr0628:
                                                                                                                                    sendNotification(ApplicationNotificationConstants.SHOW_DEPARTMENT_HEATMAP,(_loc24_ as IEmergencyInfrastructure).emergencyFieldObjectVo.department[0]);
                                                                                                                                    if(_loc30_ || Boolean(_loc2_))
                                                                                                                                    {
                                                                                                                                       addr0651:
                                                                                                                                       this.addNeedIcons(_loc24_);
                                                                                                                                    }
                                                                                                                                    §§goto(addr078b);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr0651);
                                                                                                                           }
                                                                                                                           §§goto(addr078b);
                                                                                                                        }
                                                                                                                        §§goto(addr0651);
                                                                                                                     }
                                                                                                                     §§goto(addr0628);
                                                                                                                  }
                                                                                                                  §§goto(addr05d0);
                                                                                                               }
                                                                                                               §§goto(addr0651);
                                                                                                            }
                                                                                                            §§goto(addr0610);
                                                                                                         }
                                                                                                         §§goto(addr05f2);
                                                                                                      }
                                                                                                      §§goto(addr078b);
                                                                                                   }
                                                                                                   §§goto(addr05fe);
                                                                                                }
                                                                                                §§goto(addr0651);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                _loc24_.presentation.visible = true;
                                                                                                if(!_loc31_)
                                                                                                {
                                                                                                   §§goto(addr0545);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr05b2);
                                                                                          }
                                                                                          §§goto(addr0616);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr0545);
                                                                                 }
                                                                                 §§goto(addr05b2);
                                                                              }
                                                                              §§goto(addr04e7);
                                                                           }
                                                                           else
                                                                           {
                                                                              addr0667:
                                                                              _loc25_ = _loc23_.getPlane(_loc22_ as IPlaneObjectVo);
                                                                              if(!_loc31_)
                                                                              {
                                                                                 _loc2_.planeObjectToAdd = _loc25_;
                                                                              }
                                                                              _loc26_ = _loc14_.getAllRestrictionsForItem(_loc25_.objectVo.configPlayfieldItemVo);
                                                                              if(_loc26_.length > 0)
                                                                              {
                                                                                 if(!_loc31_)
                                                                                 {
                                                                                    _loc14_.setRestrictionGridSource(_loc26_,true);
                                                                                    if(_loc30_)
                                                                                    {
                                                                                       _loc14_.restrictionGridVisibility = true;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              _loc27_ = facade.retrieveProxy(StreetBuildProxy.NAME) as StreetBuildProxy;
                                                                              if(_loc27_ == null)
                                                                              {
                                                                                 if(_loc30_)
                                                                                 {
                                                                                    _loc27_ = new StreetBuildProxy();
                                                                                    if(!(_loc31_ && Boolean(this)))
                                                                                    {
                                                                                       facade.registerProxy(_loc27_);
                                                                                    }
                                                                                    addr06fd:
                                                                                    _loc27_.updateTerrain(_loc26_);
                                                                                    if(!_loc31_)
                                                                                    {
                                                                                       _loc25_.presentation.visible = false;
                                                                                       if(!(_loc31_ && Boolean(param1)))
                                                                                       {
                                                                                          _loc8_.setItemSize(_loc25_.objectVo.configPlayfieldItemVo.sizeX,_loc25_.objectVo.configPlayfieldItemVo.sizeY,_loc25_.objectVo.configPlayfieldItemVo.zLevels.length,VectorUtilities.getMinValue(_loc25_.objectVo.configPlayfieldItemVo.zLevels));
                                                                                          §§goto(addr0722);
                                                                                       }
                                                                                       §§goto(addr076f);
                                                                                    }
                                                                                    addr0722:
                                                                                    if(!_loc31_)
                                                                                    {
                                                                                       addr076f:
                                                                                       _loc25_.updateIndex(_loc15_,_loc16_);
                                                                                       if(!_loc31_)
                                                                                       {
                                                                                          sendNotification(ApplicationNotificationConstants.FIELD_ADD_TEMPORARY,_loc25_);
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr078b);
                                                                              }
                                                                              §§goto(addr06fd);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           addr0663:
                                                                           if(_loc22_ is IPlaneObjectVo)
                                                                           {
                                                                              §§goto(addr0667);
                                                                           }
                                                                        }
                                                                        addr078b:
                                                                        return;
                                                                     }
                                                                     §§goto(addr0663);
                                                                  }
                                                                  §§goto(addr047c);
                                                               }
                                                            }
                                                            §§goto(addr0401);
                                                         }
                                                         §§goto(addr03fb);
                                                      }
                                                      §§goto(addr0403);
                                                   }
                                                }
                                                §§goto(addr03ef);
                                             }
                                             §§goto(addr03fb);
                                          }
                                          §§goto(addr03f7);
                                       }
                                       §§goto(addr03ef);
                                    }
                                    §§goto(addr03bd);
                                 }
                                 §§goto(addr03f7);
                              }
                              §§goto(addr03ef);
                           }
                           §§goto(addr0387);
                        }
                        §§goto(addr0377);
                     }
                     §§goto(addr0325);
                  }
                  §§goto(addr03c5);
               }
               §§goto(addr02ee);
            }
            §§goto(addr035c);
         }
         §§goto(addr009e);
      }
      
      private function addNeedIcons(param1:BillboardObject) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:Object = null;
         if(!_loc4_)
         {
            §§push(param1 is ShopFieldObject);
            if(!(_loc4_ && Boolean(_loc2_)))
            {
               var _temp_2:* = §§pop();
               §§push(_temp_2);
               if(!_temp_2)
               {
                  if(!_loc4_)
                  {
                     §§pop();
                     if(!(_loc4_ && _loc3_))
                     {
                        §§goto(addr005c);
                     }
                     §§goto(addr0060);
                  }
               }
            }
            addr005c:
            if(param1 is ResidentialFieldObject)
            {
               addr0060:
               _loc2_ = new Object();
               if(_loc3_)
               {
                  _loc2_.vo = param1.billboardObjectVo;
                  if(!(_loc4_ && _loc3_))
                  {
                     _loc2_.rollOver = false;
                     if(_loc3_ || Boolean(this))
                     {
                        addr00a1:
                        facade.sendNotification(ApplicationNotificationConstants.SHOW_NEED_ICONS,_loc2_);
                     }
                     §§goto(addr00ac);
                  }
               }
               §§goto(addr00a1);
            }
            addr00ac:
            return;
         }
         §§goto(addr0060);
      }
   }
}

