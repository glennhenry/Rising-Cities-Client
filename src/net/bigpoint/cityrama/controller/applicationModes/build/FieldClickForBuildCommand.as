package net.bigpoint.cityrama.controller.applicationModes.build
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.constants.ServerTagConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.architecturalBook.vo.BlueprintVo;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.featuredEvent.FeaturedEventProxy;
   import net.bigpoint.cityrama.model.field.FieldBuildProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.field.ground.GridProxy;
   import net.bigpoint.cityrama.model.field.ground.RestrictionProxy;
   import net.bigpoint.cityrama.model.field.ground.vo.PlaneObjectVo;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.game.KeyboardInputActionProxy;
   import net.bigpoint.cityrama.model.game.TimerProxy;
   import net.bigpoint.cityrama.model.player.PlayerGoodsStockProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPlayfieldItemDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigTagDTO;
   import net.bigpoint.cityrama.model.sound.SoundProxy;
   import net.bigpoint.cityrama.model.streetBuilding.StreetBuildProxy;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PierObject;
   import net.bigpoint.cityrama.view.field.ground.ui.components.PlaneObject;
   import net.bigpoint.cityrama.view.field.ui.components.factory.ServerTagToClassSelector;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFloaterObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInformationFloat;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class FieldClickForBuildCommand extends SimpleCommand
   {
      
      private var _playfieldObjetcsProxy:PlayfieldObjectsProxy;
      
      private var _playerResourceProxy:PlayerResourceProxy;
      
      private var _goodStockProxy:PlayerGoodsStockProxy;
      
      private var _soundProxy:SoundProxy;
      
      private var _fieldBuildProxy:FieldBuildProxy;
      
      private var _playfieldProxy:PlayfieldProxy;
      
      private var _streetBuildProxy:StreetBuildProxy;
      
      private var _lastBuiltStreet:IPlaneObject;
      
      private var _numberOfStreetsBuilt:int;
      
      public function FieldClickForBuildCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && Boolean(this)))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc16_:Boolean = false;
         var _loc17_:Boolean = _temp_1;
         var _loc7_:Boolean = false;
         var _loc8_:Number = NaN;
         var _loc9_:IGameObjectVo = null;
         var _loc10_:Vector.<IPlaneObject> = null;
         var _loc11_:* = NaN;
         var _loc12_:IPlaneObject = null;
         var _loc13_:KeyboardInputActionProxy = null;
         var _loc2_:GameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         var _loc3_:TimerProxy = TimerProxy(facade.retrieveProxy(TimerProxy.NAME));
         var _loc4_:FilePreloadServiceProxy = FilePreloadServiceProxy(facade.retrieveProxy(FilePreloadServiceProxy.NAME));
         var _loc5_:RestrictionProxy = RestrictionProxy(facade.retrieveProxy(RestrictionProxy.NAME));
         var _loc6_:GridProxy = GridProxy(facade.retrieveProxy(GridProxy.NAME));
         if(_loc17_)
         {
            this._goodStockProxy = PlayerGoodsStockProxy(facade.retrieveProxy(PlayerGoodsStockProxy.NAME));
            if(!_loc16_)
            {
               addr00c1:
               this._playfieldProxy = PlayfieldProxy(facade.retrieveProxy(PlayfieldProxy.NAME));
               if(_loc17_ || Boolean(param1))
               {
                  this._playfieldObjetcsProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
                  if(!_loc16_)
                  {
                     addr00fc:
                     this._fieldBuildProxy = FieldBuildProxy(facade.retrieveProxy(FieldBuildProxy.NAME));
                     if(!_loc16_)
                     {
                        addr0117:
                        this._soundProxy = facade.retrieveProxy(SoundProxy.NAME) as SoundProxy;
                     }
                  }
                  for each(_loc8_ in this._fieldBuildProxy.selectedConfig.tagIds)
                  {
                     if(_loc17_ || Boolean(param1))
                     {
                        if(ConfigTagDTO(_loc2_.config.tags[_loc8_]).tagName != ServerTagConstants.GROUND)
                        {
                           continue;
                        }
                        if(!_loc17_)
                        {
                           continue;
                        }
                     }
                     _loc7_ = true;
                  }
                  if(!_loc16_)
                  {
                     _loc6_.overrideStreets = _loc7_;
                     if(_loc17_)
                     {
                        §§push(_loc7_);
                        if(_loc17_)
                        {
                           if(!§§pop())
                           {
                              if(!_loc16_)
                              {
                                 §§push(_loc6_.selectedRectangleIsFree);
                                 if(!_loc16_)
                                 {
                                    §§push(§§pop());
                                    if(_loc17_)
                                    {
                                       var _temp_4:* = §§pop();
                                       §§push(_temp_4);
                                       §§push(_temp_4);
                                       if(_loc17_ || Boolean(_loc2_))
                                       {
                                          if(§§pop())
                                          {
                                             if(!_loc16_)
                                             {
                                                §§pop();
                                                if(_loc17_ || Boolean(this))
                                                {
                                                   addr01e8:
                                                   §§push(_loc5_.positionPossible(this._fieldBuildProxy.selectedConfig));
                                                   if(_loc17_)
                                                   {
                                                      §§push(§§pop());
                                                      if(!(_loc16_ && Boolean(_loc3_)))
                                                      {
                                                         §§goto(addr020a);
                                                      }
                                                      §§goto(addr02c9);
                                                   }
                                                   §§goto(addr02e6);
                                                }
                                                §§goto(addr0214);
                                             }
                                             §§goto(addr02ed);
                                          }
                                          addr020a:
                                          if(§§pop())
                                          {
                                             if(!_loc16_)
                                             {
                                                addr0214:
                                                _loc9_ = ServerTagToClassSelector.getFieldObjectVoClassByTags(this._fieldBuildProxy.selectedConfig,_loc6_.selectedCuboid.clone() as Cuboid,_loc3_,_loc2_,this._playfieldProxy);
                                                if(_loc9_ is BillboardObjectVo)
                                                {
                                                   if(_loc17_)
                                                   {
                                                      (_loc9_ as BillboardObjectVo).showPlacementPreview = false;
                                                      if(_loc17_)
                                                      {
                                                         PlayfieldObjectsProxy.addIconOffsets(_loc9_ as BillboardObjectVo,_loc4_);
                                                         if(_loc17_ || Boolean(_loc2_))
                                                         {
                                                            addr0276:
                                                            this.buildGameObject(_loc9_);
                                                         }
                                                         §§goto(addr0521);
                                                      }
                                                      §§goto(addr0276);
                                                   }
                                                   §§goto(addr0521);
                                                }
                                                §§goto(addr0276);
                                             }
                                             else
                                             {
                                                addr02a6:
                                                §§push(this._streetBuildProxy);
                                                if(_loc17_ || Boolean(param1))
                                                {
                                                   §§push(§§pop().isStartSet);
                                                   if(_loc17_ || Boolean(_loc2_))
                                                   {
                                                      addr02c9:
                                                      if(!§§pop())
                                                      {
                                                         if(!_loc16_)
                                                         {
                                                            addr02d3:
                                                            §§push(_loc6_.selectedRectangleIsFree);
                                                            if(_loc17_ || Boolean(_loc2_))
                                                            {
                                                               addr02e6:
                                                               §§push(§§pop());
                                                               if(!_loc16_)
                                                               {
                                                                  addr02ed:
                                                                  var _temp_13:* = §§pop();
                                                                  §§push(_temp_13);
                                                                  §§push(_temp_13);
                                                                  if(!_loc16_)
                                                                  {
                                                                     addr02f4:
                                                                     if(§§pop())
                                                                     {
                                                                        if(_loc17_)
                                                                        {
                                                                           §§goto(addr02fe);
                                                                        }
                                                                        else
                                                                        {
                                                                           addr0370:
                                                                           var _temp_25:* = §§pop();
                                                                           addr0371:
                                                                           §§push(_temp_25);
                                                                           if(_temp_25)
                                                                           {
                                                                              if(_loc17_ || Boolean(param1))
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    §§goto(addr038a);
                                                                                 }
                                                                                 §§goto(addr03b0);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr039e);
                                                                     }
                                                                     §§goto(addr032f);
                                                                  }
                                                                  §§goto(addr0371);
                                                               }
                                                               §§goto(addr039d);
                                                            }
                                                            addr02fe:
                                                            §§pop();
                                                            if(!(_loc16_ && Boolean(_loc2_)))
                                                            {
                                                               addr030d:
                                                               §§push(_loc5_.positionPossible(this._fieldBuildProxy.selectedConfig));
                                                               if(_loc17_ || Boolean(param1))
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc17_)
                                                                  {
                                                                     §§goto(addr032f);
                                                                  }
                                                                  §§goto(addr039d);
                                                               }
                                                               addr032f:
                                                               if(§§pop())
                                                               {
                                                                  if(!_loc16_)
                                                                  {
                                                                     this.setStartPoint(_loc6_.selectedCuboid);
                                                                     if(!(_loc17_ || Boolean(this)))
                                                                     {
                                                                        addr038a:
                                                                        addr039e:
                                                                        §§push(_loc5_.positionPossible(this._fieldBuildProxy.selectedConfig));
                                                                        if(_loc17_)
                                                                        {
                                                                           addr039d:
                                                                           §§push(§§pop());
                                                                        }
                                                                        if(§§pop())
                                                                        {
                                                                           if(_loc17_ || Boolean(_loc2_))
                                                                           {
                                                                              addr03b0:
                                                                              §§push(this._streetBuildProxy);
                                                                              if(!_loc16_)
                                                                              {
                                                                                 addr03ba:
                                                                                 §§pop().setTo(_loc6_.selectedCuboid);
                                                                                 addr03c3:
                                                                                 §§push(this._streetBuildProxy);
                                                                              }
                                                                              _loc10_ = §§pop().getStreetsToBuild();
                                                                              if(!_loc16_)
                                                                              {
                                                                                 this._numberOfStreetsBuilt = 0;
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    §§push(this._streetBuildProxy);
                                                                                    if(!_loc16_)
                                                                                    {
                                                                                       §§pop().isAnimating = true;
                                                                                       if(!_loc16_)
                                                                                       {
                                                                                          addr03f7:
                                                                                          §§push(0);
                                                                                          if(!(_loc16_ && Boolean(param1)))
                                                                                          {
                                                                                             _loc11_ = §§pop();
                                                                                             if(!(_loc16_ && Boolean(this)))
                                                                                             {
                                                                                                addr041a:
                                                                                                var _loc14_:int = 0;
                                                                                                addr0418:
                                                                                                if(!_loc16_)
                                                                                                {
                                                                                                   for each(_loc12_ in _loc10_)
                                                                                                   {
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§push(_loc11_);
                                                                                                      if(_loc17_)
                                                                                                      {
                                                                                                         §§push(§§pop() + 1);
                                                                                                         if(!(_loc16_ && Boolean(param1)))
                                                                                                         {
                                                                                                            addr0453:
                                                                                                            §§push(§§pop());
                                                                                                         }
                                                                                                         _loc11_ = §§pop();
                                                                                                         if(!(_loc16_ && Boolean(_loc3_)))
                                                                                                         {
                                                                                                            this._streetBuildProxy.delayedBuildCalls.push(TweenMax.to(this._streetBuildProxy,_loc11_ / 10,{
                                                                                                               "onComplete":this.constructStreet,
                                                                                                               "onCompleteParams":[_loc12_.objectVo,_loc3_,_loc2_]
                                                                                                            }));
                                                                                                         }
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr0453);
                                                                                                   }
                                                                                                }
                                                                                                if(!(_loc16_ && Boolean(param1)))
                                                                                                {
                                                                                                   addr04b0:
                                                                                                   this._streetBuildProxy.delayedFloaterCalls.push(TweenMax.to(this._streetBuildProxy,_loc11_ / 10,{"onComplete":this.spawnFloaterForStreets}));
                                                                                                   addr04ac:
                                                                                                }
                                                                                             }
                                                                                             _loc13_ = facade.retrieveProxy(KeyboardInputActionProxy.NAME) as KeyboardInputActionProxy;
                                                                                             if(_loc13_.shiftIsPressed)
                                                                                             {
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   §§push(TweenMax);
                                                                                                   §§push(_loc11_);
                                                                                                   if(!(_loc16_ && Boolean(param1)))
                                                                                                   {
                                                                                                      §§push(§§pop() / 10);
                                                                                                   }
                                                                                                   §§pop().delayedCall(§§pop(),this.setStartPoint,[_loc6_.selectedCuboid]);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr0521);
                                                                                          }
                                                                                          §§goto(addr041a);
                                                                                       }
                                                                                       §§goto(addr0418);
                                                                                    }
                                                                                    §§goto(addr04b0);
                                                                                 }
                                                                                 §§goto(addr03f7);
                                                                              }
                                                                              §§goto(addr04ac);
                                                                           }
                                                                           §§goto(addr03c3);
                                                                        }
                                                                     }
                                                                     §§goto(addr0521);
                                                                  }
                                                                  §§goto(addr038a);
                                                               }
                                                            }
                                                            §§goto(addr0521);
                                                         }
                                                         §§goto(addr03b0);
                                                      }
                                                      else
                                                      {
                                                         §§push(_loc6_.selectedRectangleIsFree);
                                                         if(_loc17_)
                                                         {
                                                            §§push(§§pop());
                                                            if(_loc17_ || Boolean(this))
                                                            {
                                                               §§goto(addr0370);
                                                            }
                                                            §§goto(addr039e);
                                                         }
                                                      }
                                                      §§goto(addr0370);
                                                   }
                                                   §§goto(addr032f);
                                                }
                                                §§goto(addr03ba);
                                             }
                                          }
                                          addr0521:
                                          return;
                                       }
                                       §§goto(addr02f4);
                                    }
                                    §§goto(addr02c9);
                                 }
                                 §§goto(addr039e);
                              }
                              §§goto(addr03c3);
                           }
                           else
                           {
                              this._streetBuildProxy = facade.retrieveProxy(StreetBuildProxy.NAME) as StreetBuildProxy;
                              if(_loc17_)
                              {
                                 §§goto(addr02a6);
                              }
                           }
                           §§goto(addr030d);
                        }
                        §§goto(addr032f);
                     }
                     §§goto(addr02d3);
                  }
                  §§goto(addr01e8);
               }
               §§goto(addr00fc);
            }
            §§goto(addr0117);
         }
         §§goto(addr00c1);
      }
      
      private function setStartPoint(param1:Cuboid) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:FieldBuildProxy = FieldBuildProxy(facade.retrieveProxy(FieldBuildProxy.NAME));
         §§push((facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy).ingameCurrency);
         if(_loc4_ || Boolean(_loc2_))
         {
            §§push(§§pop());
         }
         var _loc3_:* = §§pop();
         if(_loc4_)
         {
            §§push(_loc2_.selectedConfig);
            if(!_loc5_)
            {
               if(§§pop().constructionPhases.length > 0)
               {
                  if(!_loc5_)
                  {
                     §§push(_loc2_.selectedConfig);
                     if(_loc4_)
                     {
                        addr0075:
                        §§push(ServerPhaseTypes.CREATE_PLACE_NORMAL);
                        if(_loc4_ || _loc3_)
                        {
                           §§push(§§pop().getFirstPhaseByType(§§pop()));
                           if(_loc4_)
                           {
                              §§push(§§pop().listEntryOutputs.length > 0);
                              if(!_loc5_)
                              {
                                 var _temp_3:* = §§pop();
                                 §§push(_temp_3);
                                 if(_temp_3)
                                 {
                                    if(!(_loc5_ && Boolean(this)))
                                    {
                                       §§pop();
                                       if(!(_loc5_ && Boolean(param1)))
                                       {
                                          addr00f0:
                                          addr00e0:
                                          addr00dc:
                                          addr00d6:
                                          addr00d2:
                                          if(Boolean(_loc2_.selectedConfig.getFirstPhaseByType(ServerPhaseTypes.CREATE_PLACE_NORMAL).getListEntryOutputByType(ServerOutputConstants.RESOURCE,ServerResConst.RESOURCE_VIRTUALCURRENCY)))
                                          {
                                             if(_loc4_)
                                             {
                                                if(_loc3_ < Math.abs(_loc2_.selectedConfig.getFirstPhaseByType(ServerPhaseTypes.CREATE_PLACE_NORMAL).getListEntryOutputByType(ServerOutputConstants.RESOURCE,ServerResConst.RESOURCE_VIRTUALCURRENCY).outputAmount))
                                                {
                                                   if(_loc4_ || Boolean(_loc2_))
                                                   {
                                                      sendNotification(MiniLayerConstants.OPEN_MINI_PLACEMENT,true);
                                                      if(!(_loc4_ || _loc3_))
                                                      {
                                                         §§goto(addr0161);
                                                      }
                                                   }
                                                   §§goto(addr015a);
                                                }
                                                addr0161:
                                                this._streetBuildProxy.setStart(param1);
                                                §§goto(addr016b);
                                             }
                                             addr016b:
                                             return;
                                          }
                                       }
                                       §§goto(addr0161);
                                    }
                                 }
                              }
                              §§goto(addr00f0);
                           }
                           §§goto(addr00e0);
                        }
                        §§goto(addr00dc);
                     }
                     §§goto(addr00d6);
                  }
                  addr015a:
                  return;
               }
               §§goto(addr0161);
            }
            §§goto(addr0075);
         }
         §§goto(addr00d2);
      }
      
      private function buildGameObject(param1:IGameObjectVo) : void
      {
         var _temp_1:* = true;
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = _temp_1;
         var _loc3_:BillboardObjectVo = null;
         var _loc4_:* = false;
         var _loc5_:ArchitecturalBookProxy = null;
         var _loc6_:BlueprintVo = null;
         var _loc7_:KeyboardInputActionProxy = null;
         var _loc8_:* = false;
         var _loc9_:FeaturedEventProxy = null;
         var _loc10_:ConfigPlayfieldItemDTO = null;
         var _loc11_:PlaneObjectVo = null;
         var _loc12_:IGameObjectVo = null;
         var _loc13_:* = false;
         var _loc14_:IPlaneObject = null;
         var _loc15_:IPlaneObject = null;
         var _loc2_:ApplicationModeProxy = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
         if(_loc19_ || Boolean(_loc2_))
         {
            this._playerResourceProxy = PlayerResourceProxy(facade.retrieveProxy(PlayerResourceProxy.NAME));
            if(!_loc18_)
            {
               §§push(param1 is BillboardObjectVo);
               if(_loc19_ || Boolean(this))
               {
                  if(§§pop())
                  {
                     if(_loc19_)
                     {
                        _loc3_ = param1 as BillboardObjectVo;
                        if(_loc19_ || Boolean(_loc2_))
                        {
                           §§push(this.hasPermissionsLeft(_loc3_.configPlayfieldItemVo.permissionConfigId));
                           if(!(_loc18_ && Boolean(this)))
                           {
                              §§push(§§pop());
                           }
                           _loc4_ = §§pop();
                        }
                        _loc5_ = facade.retrieveProxy(ArchitecturalBookProxy.NAME) as ArchitecturalBookProxy;
                        _loc6_ = _loc5_.getBluePrint(_loc3_.configPlayfieldItemVo);
                        if(!_loc18_)
                        {
                           §§push(this.canUserPlace(_loc6_));
                           if(_loc19_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc18_)
                                 {
                                    sendNotification(ApplicationNotificationConstants.BUILD_GAMEOBJECT,{
                                       "obj":param1,
                                       "priceRC":_loc6_.priceRC
                                    });
                                    if(_loc19_)
                                    {
                                       _loc7_ = facade.retrieveProxy(KeyboardInputActionProxy.NAME) as KeyboardInputActionProxy;
                                       if(_loc19_ || Boolean(_loc2_))
                                       {
                                          §§push(_loc3_ is DecorationFieldObjectVo);
                                          if(!(_loc18_ && Boolean(this)))
                                          {
                                             var _temp_9:* = §§pop();
                                             §§push(_temp_9);
                                             if(!_temp_9)
                                             {
                                                if(_loc19_ || Boolean(_loc2_))
                                                {
                                                   §§pop();
                                                   if(!(_loc18_ && Boolean(param1)))
                                                   {
                                                      §§goto(addr01ad);
                                                   }
                                                   §§goto(addr01fb);
                                                }
                                             }
                                          }
                                          addr01ad:
                                          §§push(_loc7_.shiftIsPressed);
                                          if(_loc19_ || Boolean(_loc2_))
                                          {
                                             §§push(§§pop());
                                          }
                                          if(§§pop())
                                          {
                                             if(!(_loc18_ && Boolean(_loc3_)))
                                             {
                                                addr01bf:
                                                sendNotification(ApplicationNotificationConstants.BLUEPRINT_SELECTED,{"config":_loc3_.configPlayfieldItemVo});
                                                if(!(_loc19_ || Boolean(_loc3_)))
                                                {
                                                   addr01fb:
                                                   sendNotification(ApplicationNotificationConstants.MAINMENUE_RESETBUTTONS);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             _loc2_.mode = ApplicationModeProxy.MODE_NORMAL;
                                             if(!(_loc18_ && Boolean(param1)))
                                             {
                                                §§goto(addr01fb);
                                             }
                                          }
                                          §§goto(addr064c);
                                       }
                                       §§goto(addr01bf);
                                    }
                                 }
                                 else
                                 {
                                    addr0370:
                                    sendNotification(ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY,this._fieldBuildProxy.billboardObjectToAdd);
                                    if(!(_loc18_ && Boolean(_loc2_)))
                                    {
                                       sendNotification(MiniLayerConstants.OPEN_MINI_NO_PERMISSION,{
                                          "blueprint":_loc6_,
                                          "vo":_loc3_
                                       });
                                       if(_loc19_)
                                       {
                                       }
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(false);
                                 if(_loc19_ || Boolean(_loc3_))
                                 {
                                    _loc8_ = §§pop();
                                    if(_loc19_ || Boolean(this))
                                    {
                                       §§push(FeaturedEventProxy.isMysteryBuilding(_loc6_.configObj));
                                       if(!(_loc18_ && Boolean(this)))
                                       {
                                          if(§§pop())
                                          {
                                             if(!(_loc18_ && Boolean(this)))
                                             {
                                                addr0254:
                                                _loc9_ = facade.retrieveProxy(FeaturedEventProxy.NAME) as FeaturedEventProxy;
                                                _loc10_ = _loc9_.featuredPlayfieldItem;
                                                §§push(_loc10_ == null);
                                                if(_loc19_)
                                                {
                                                   var _temp_23:* = §§pop();
                                                   §§push(_temp_23);
                                                   if(!_temp_23)
                                                   {
                                                      if(_loc19_)
                                                      {
                                                         addr0284:
                                                         §§pop();
                                                         if(_loc19_)
                                                         {
                                                            §§push(_loc10_ == _loc6_.configObj);
                                                            if(!(_loc18_ && Boolean(param1)))
                                                            {
                                                               addr02a1:
                                                               §§push(!§§pop());
                                                               if(!(_loc18_ && Boolean(_loc2_)))
                                                               {
                                                                  addr02b0:
                                                                  if(§§pop())
                                                                  {
                                                                     if(!_loc18_)
                                                                     {
                                                                        addr02bb:
                                                                        _loc8_ = true;
                                                                     }
                                                                  }
                                                                  addr02bd:
                                                                  §§push(_loc4_);
                                                                  if(_loc19_)
                                                                  {
                                                                     §§push(!§§pop());
                                                                     if(!(_loc18_ && Boolean(_loc2_)))
                                                                     {
                                                                        var _temp_27:* = §§pop();
                                                                        §§push(_temp_27);
                                                                        §§push(_temp_27);
                                                                        if(_loc19_ || Boolean(this))
                                                                        {
                                                                           if(§§pop())
                                                                           {
                                                                              if(_loc19_ || Boolean(param1))
                                                                              {
                                                                                 §§pop();
                                                                                 if(_loc19_ || Boolean(param1))
                                                                                 {
                                                                                    addr0312:
                                                                                    §§push(_loc6_.state == BlueprintVo.STATE_NOT_AVAILABLE);
                                                                                    if(_loc19_ || Boolean(_loc3_))
                                                                                    {
                                                                                       addr032c:
                                                                                       §§push(!§§pop());
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          addr0333:
                                                                                          var _temp_32:* = §§pop();
                                                                                          addr0334:
                                                                                          §§push(_temp_32);
                                                                                          if(_temp_32)
                                                                                          {
                                                                                             if(_loc19_ || Boolean(_loc3_))
                                                                                             {
                                                                                                addr0346:
                                                                                                §§pop();
                                                                                                if(!_loc18_)
                                                                                                {
                                                                                                   addr035e:
                                                                                                   §§push(_loc8_);
                                                                                                   if(_loc19_ || Boolean(param1))
                                                                                                   {
                                                                                                      addr035d:
                                                                                                      §§push(!§§pop());
                                                                                                   }
                                                                                                   if(§§pop())
                                                                                                   {
                                                                                                      if(!(_loc18_ && Boolean(this)))
                                                                                                      {
                                                                                                         §§goto(addr0370);
                                                                                                      }
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      sendNotification(MiniLayerConstants.OPEN_MINI_PLACEMENT,_loc4_);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr064c);
                                                                                             }
                                                                                             §§goto(addr035d);
                                                                                          }
                                                                                          §§goto(addr035e);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr035d);
                                                                                 }
                                                                                 §§goto(addr0370);
                                                                              }
                                                                           }
                                                                           §§goto(addr0333);
                                                                        }
                                                                        §§goto(addr0334);
                                                                     }
                                                                  }
                                                                  §§goto(addr035d);
                                                               }
                                                               §§goto(addr02bb);
                                                            }
                                                            §§goto(addr02b0);
                                                         }
                                                         §§goto(addr02bd);
                                                      }
                                                      §§goto(addr02a1);
                                                   }
                                                   §§goto(addr02b0);
                                                }
                                                §§goto(addr0284);
                                             }
                                             §§goto(addr064c);
                                          }
                                          §§goto(addr02bd);
                                       }
                                       §§goto(addr032c);
                                    }
                                    §§goto(addr0254);
                                 }
                                 §§goto(addr0333);
                              }
                              §§goto(addr064c);
                           }
                           §§goto(addr0346);
                        }
                        §§goto(addr0312);
                     }
                     else
                     {
                        addr03c9:
                        _loc11_ = param1 as PlaneObjectVo;
                        if(_loc11_.userCanAffordPlacement(_loc11_.configPlayfieldItemVo,this._playerResourceProxy.ingameCurrency,this._playerResourceProxy.ingameCurrency))
                        {
                           if(!(_loc18_ && Boolean(_loc2_)))
                           {
                              _loc12_ = this._playfieldObjetcsProxy.getGameObjectByCuboid(_loc11_.matrix3dCoordinates);
                              if(_loc19_)
                              {
                                 §§push(false);
                                 if(!_loc18_)
                                 {
                                    _loc13_ = §§pop();
                                    if(!(_loc18_ && Boolean(_loc2_)))
                                    {
                                       if(_loc12_ != null)
                                       {
                                          if(_loc19_ || Boolean(_loc2_))
                                          {
                                             §§push(_loc12_ is PlaneObjectVo);
                                             if(!_loc18_)
                                             {
                                                if(§§pop())
                                                {
                                                   if(!_loc18_)
                                                   {
                                                      if(_loc12_.configPlayfieldItemVo.id == _loc11_.configPlayfieldItemVo.id)
                                                      {
                                                         if(_loc19_)
                                                         {
                                                            §§goto(addr046f);
                                                         }
                                                         §§goto(addr0505);
                                                      }
                                                      else
                                                      {
                                                         §§push(this._playfieldObjetcsProxy);
                                                         if(_loc19_ || Boolean(param1))
                                                         {
                                                            _loc15_ = §§pop().getPlaneObjectByVo(_loc12_);
                                                            if(!(_loc18_ && Boolean(_loc3_)))
                                                            {
                                                               this._playfieldObjetcsProxy.removeGameObjectVofromMatrix(_loc12_);
                                                               if(!_loc18_)
                                                               {
                                                                  addr04cd:
                                                                  sendNotification(ApplicationNotificationConstants.PLAYFIELD_REMOVE_ITEM,_loc15_);
                                                               }
                                                               §§goto(addr04d9);
                                                            }
                                                            §§goto(addr04cd);
                                                         }
                                                      }
                                                      §§goto(addr0520);
                                                   }
                                                   addr046f:
                                                   §§push(true);
                                                   if(!(_loc18_ && Boolean(param1)))
                                                   {
                                                      addr047e:
                                                      _loc13_ = §§pop();
                                                      if(_loc19_ || Boolean(_loc3_))
                                                      {
                                                         addr04d9:
                                                         §§push(_loc13_);
                                                         if(_loc19_)
                                                         {
                                                            §§goto(addr04e1);
                                                         }
                                                         §§goto(addr04f3);
                                                      }
                                                      §§goto(addr0505);
                                                   }
                                                   §§goto(addr04e1);
                                                }
                                                §§goto(addr04d9);
                                             }
                                             addr04e1:
                                             if(!§§pop())
                                             {
                                                if(!_loc18_)
                                                {
                                                   addr04f3:
                                                   addr04eb:
                                                   if(!this._streetBuildProxy.skipAnimation)
                                                   {
                                                      if(_loc19_ || Boolean(_loc3_))
                                                      {
                                                         addr0505:
                                                         this._soundProxy.playStreetBuild();
                                                         if(!(_loc18_ && Boolean(_loc2_)))
                                                         {
                                                            addr0520:
                                                            this._playfieldObjetcsProxy.addGameObjectByData(param1);
                                                            addr051c:
                                                         }
                                                         _loc14_ = IPlaneObject(this._playfieldObjetcsProxy.getObjectByVo(_loc11_));
                                                         _loc14_.presentation.visible = false;
                                                         if(_loc19_ || Boolean(_loc2_))
                                                         {
                                                            _loc14_.container.visible = false;
                                                            if(!_loc18_)
                                                            {
                                                               sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_CREATE_GROUND,{
                                                                  "id":_loc11_.configPlayfieldItemVo.id,
                                                                  "x":_loc11_.matrix3dCoordinates.x,
                                                                  "y":_loc11_.matrix3dCoordinates.y
                                                               });
                                                               if(!_loc18_)
                                                               {
                                                                  TweenMax.to(_loc14_.container,0,{"colorTransform":{
                                                                     "tint":0,
                                                                     "tintAmount":0
                                                                  }});
                                                                  if(!(_loc18_ && Boolean(param1)))
                                                                  {
                                                                     TweenMax.to(_loc14_.presentation,0.1,{"visible":true});
                                                                     if(!(_loc18_ && Boolean(param1)))
                                                                     {
                                                                        TweenMax.to(_loc14_.container,0.1,{"visible":true});
                                                                        if(_loc19_)
                                                                        {
                                                                           §§goto(addr05f2);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr0606);
                                                               }
                                                            }
                                                            addr05f2:
                                                            this._lastBuiltStreet = _loc14_;
                                                            if(!(_loc18_ && Boolean(_loc3_)))
                                                            {
                                                               addr0606:
                                                               var _loc16_:* = this;
                                                               §§push(_loc16_._numberOfStreetsBuilt);
                                                               if(_loc19_ || Boolean(_loc2_))
                                                               {
                                                                  §§push(§§pop() + 1);
                                                               }
                                                               var _loc17_:* = §§pop();
                                                               if(!_loc18_)
                                                               {
                                                                  _loc16_._numberOfStreetsBuilt = _loc17_;
                                                               }
                                                            }
                                                            §§goto(addr064c);
                                                         }
                                                         §§goto(addr0606);
                                                      }
                                                   }
                                                }
                                                §§goto(addr051c);
                                             }
                                             §§goto(addr064c);
                                          }
                                       }
                                       §§goto(addr04d9);
                                    }
                                    §§goto(addr04eb);
                                 }
                                 §§goto(addr047e);
                              }
                              §§goto(addr0505);
                           }
                        }
                        else
                        {
                           sendNotification(MiniLayerConstants.OPEN_MINI_PLACEMENT,1);
                        }
                     }
                  }
                  else
                  {
                     addr03c5:
                     if(param1 is PlaneObjectVo)
                     {
                        §§goto(addr03c9);
                     }
                  }
                  addr064c:
                  return;
               }
               §§goto(addr03c5);
            }
         }
         §§goto(addr03c9);
      }
      
      private function constructStreet(param1:PlaneObjectVo, param2:TimerProxy, param3:GameConfigProxy) : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc4_:IGameObjectVo = null;
         if(!_loc5_)
         {
            §§push(this._streetBuildProxy);
            if(!_loc5_)
            {
               if(§§pop().delayedBuildCalls.length > 0)
               {
                  if(!_loc5_)
                  {
                     addr0041:
                     this._streetBuildProxy.delayedBuildCalls.shift().kill();
                     if(!(_loc5_ && Boolean(param2)))
                     {
                        addr0066:
                        if(this._fieldBuildProxy.selectedConfig)
                        {
                           if(!(_loc5_ && Boolean(param3)))
                           {
                              _loc4_ = ServerTagToClassSelector.getFieldObjectVoClassByTags(this._fieldBuildProxy.selectedConfig,param1.matrix3dCoordinates.clone() as Cuboid,param2,param3,this._playfieldProxy);
                              addr007f:
                              if(!(_loc5_ && Boolean(param2)))
                              {
                                 this.buildGameObject(_loc4_);
                              }
                           }
                        }
                        else
                        {
                           TweenMax.killDelayedCallsTo(this.constructStreet);
                        }
                        §§goto(addr00d4);
                     }
                     §§goto(addr007f);
                  }
                  addr00d4:
                  return;
               }
               §§goto(addr0066);
            }
            §§goto(addr0041);
         }
         §§goto(addr0066);
      }
      
      private function spawnFloaterForStreets() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc1_:ConfigPhaseDTO = null;
         var _loc2_:ConfigOutputDTO = null;
         if(_loc6_)
         {
            §§push(this._streetBuildProxy);
            if(_loc6_ || Boolean(_loc1_))
            {
               if(§§pop().delayedFloaterCalls.length > 0)
               {
                  if(_loc6_)
                  {
                     addr004b:
                     this._streetBuildProxy.delayedFloaterCalls.shift().kill();
                     if(_loc6_ || Boolean(_loc2_))
                     {
                        addr0065:
                        §§push(this._lastBuiltStreet);
                        if(_loc6_)
                        {
                           if(§§pop())
                           {
                              if(_loc6_)
                              {
                                 §§push(this._lastBuiltStreet);
                                 if(!(_loc5_ && Boolean(this)))
                                 {
                                    addr008b:
                                    if(§§pop() is PlaneObject)
                                    {
                                       addr0093:
                                       §§push(this._lastBuiltStreet);
                                       if(!(_loc5_ && Boolean(_loc2_)))
                                       {
                                          addr00a5:
                                          _loc1_ = (§§pop().objectVo as PlaneObjectVo).getSpecificConstructionPhase(ServerPhaseTypes.CREATE_PLACE_NORMAL);
                                          if(!_loc5_)
                                          {
                                             (this._lastBuiltStreet.objectVo as IFloaterObjectVo).informationFloaterPhase = _loc1_;
                                          }
                                       }
                                       else
                                       {
                                          addr00d7:
                                          _loc1_ = (§§pop() as PierObject).pierObjectVo.getSpecificConstructionPhase(ServerPhaseTypes.CREATE_PLACE_NORMAL);
                                          if(_loc6_ || _loc3_)
                                          {
                                             (this._lastBuiltStreet as PierObject).pierObjectVo.informationFloaterPhase = _loc1_;
                                          }
                                       }
                                       var _loc3_:int = 0;
                                       var _loc4_:* = _loc1_.listEntryOutputs;
                                       loop0:
                                       while(true)
                                       {
                                          §§push(§§hasnext(_loc4_,_loc3_));
                                          if(!(_loc6_ || Boolean(this)))
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             _loc2_ = §§nextvalue(_loc3_,_loc4_);
                                             if(_loc6_)
                                             {
                                                §§push(_loc2_);
                                                §§push(_loc2_.outputAmount);
                                                if(_loc6_ || Boolean(_loc3_))
                                                {
                                                   §§push(§§pop() * this._numberOfStreetsBuilt);
                                                }
                                                §§pop().outputAmount = §§pop();
                                             }
                                             continue;
                                          }
                                          if(!_loc5_)
                                          {
                                             if(_loc6_ || Boolean(_loc1_))
                                             {
                                                if(!_loc5_)
                                                {
                                                   (this._lastBuiltStreet as IInformationFloat).invalidateInformationFloaterManager();
                                                   if(_loc6_)
                                                   {
                                                      _loc3_ = 0;
                                                      if(!(_loc5_ && Boolean(_loc2_)))
                                                      {
                                                         addr01a3:
                                                         _loc4_ = _loc1_.listEntryOutputs;
                                                         while(true)
                                                         {
                                                            §§push(§§hasnext(_loc4_,_loc3_));
                                                            break loop0;
                                                         }
                                                         addr01eb:
                                                         addr01e4:
                                                      }
                                                      if(!_loc5_)
                                                      {
                                                         addr01f5:
                                                         this._lastBuiltStreet = null;
                                                      }
                                                      §§goto(addr01fa);
                                                   }
                                                   §§goto(addr01f5);
                                                }
                                                §§goto(addr01fa);
                                             }
                                             §§goto(addr01a3);
                                          }
                                          §§goto(addr01eb);
                                       }
                                       while(§§pop())
                                       {
                                          _loc2_ = §§nextvalue(_loc3_,_loc4_);
                                          if(_loc6_ || Boolean(_loc1_))
                                          {
                                             §§push(_loc2_);
                                             §§push(_loc2_.outputAmount);
                                             if(_loc6_)
                                             {
                                                §§push(§§pop() / this._numberOfStreetsBuilt);
                                             }
                                             §§pop().outputAmount = §§pop();
                                          }
                                          §§goto(addr01e4);
                                       }
                                       §§goto(addr01eb);
                                    }
                                    else
                                    {
                                       §§push(this._lastBuiltStreet);
                                    }
                                    §§goto(addr00d7);
                                 }
                                 §§goto(addr00a5);
                              }
                              §§goto(addr0093);
                           }
                           addr01fa:
                           this._streetBuildProxy.isAnimating = false;
                           return;
                        }
                        §§goto(addr008b);
                     }
                  }
                  §§goto(addr0093);
               }
               §§goto(addr0065);
            }
            §§goto(addr004b);
         }
         §§goto(addr0093);
      }
      
      private function hasPermissionsLeft(param1:Number) : Boolean
      {
         return this._goodStockProxy.getPermissionAmountByConfigId(param1) > 0;
      }
      
      private function canUserPlace(param1:BlueprintVo) : Boolean
      {
         var _temp_1:* = true;
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = _temp_1;
         if(_loc3_)
         {
            §§push(this._fieldBuildProxy.buildAndBuyPermission);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  if(!(_loc2_ && Boolean(this)))
                  {
                     §§push(this._playerResourceProxy);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop().realCurrency);
                        if(!_loc2_)
                        {
                           §§push(param1.priceRC);
                           if(_loc3_ || _loc2_)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc3_)
                                 {
                                    §§push(param1.permission);
                                    if(!(_loc2_ && _loc3_))
                                    {
                                       §§push(§§pop().permissionsBought);
                                       if(!(_loc2_ && _loc2_))
                                       {
                                          §§push(param1.permission.config.buyCap);
                                          if(_loc3_)
                                          {
                                             §§push(§§pop() < §§pop());
                                             if(!(_loc2_ && _loc3_))
                                             {
                                                var _temp_8:* = §§pop();
                                                §§push(_temp_8);
                                                if(!_temp_8)
                                                {
                                                   if(_loc3_ || _loc2_)
                                                   {
                                                      addr00c6:
                                                      §§pop();
                                                      if(!_loc2_)
                                                      {
                                                         §§push(param1.permission);
                                                         if(!_loc2_)
                                                         {
                                                            §§goto(addr00dc);
                                                         }
                                                         else
                                                         {
                                                            addr0107:
                                                            §§push(§§pop().permissionsLeft);
                                                            if(!(_loc2_ && Boolean(this)))
                                                            {
                                                               addr0125:
                                                               if(§§pop() > 0)
                                                               {
                                                                  if(_loc3_)
                                                                  {
                                                                     addr0137:
                                                                     addr013b:
                                                                     addr0134:
                                                                     addr0130:
                                                                     if(this._playerResourceProxy.ingameCurrency >= param1.priceVC)
                                                                     {
                                                                        if(_loc3_ || Boolean(param1))
                                                                        {
                                                                           addr014c:
                                                                           §§push(true);
                                                                           if(_loc3_)
                                                                           {
                                                                              §§goto(addr0152);
                                                                           }
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr0153);
                                                                        }
                                                                        §§goto(addr0154);
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr0153);
                                                            }
                                                            §§goto(addr0137);
                                                         }
                                                      }
                                                      §§goto(addr014c);
                                                   }
                                                   §§goto(addr0152);
                                                }
                                                §§goto(addr00e2);
                                             }
                                             addr0152:
                                             return §§pop();
                                          }
                                          addr00dc:
                                          §§goto(addr00da);
                                       }
                                       addr00da:
                                       §§push(§§pop().config.buyCap == -1);
                                       if(!_loc2_)
                                       {
                                          addr00e2:
                                          if(§§pop())
                                          {
                                             if(_loc3_ || _loc2_)
                                             {
                                                §§push(true);
                                                if(_loc3_)
                                                {
                                                   §§goto(addr00f9);
                                                }
                                             }
                                             else
                                             {
                                                addr0153:
                                                §§push(false);
                                             }
                                             addr0154:
                                             return §§pop();
                                          }
                                          §§goto(addr0153);
                                       }
                                       addr00f9:
                                       return §§pop();
                                    }
                                    §§goto(addr0107);
                                 }
                              }
                              §§goto(addr0153);
                           }
                           §§goto(addr013b);
                        }
                        §§goto(addr0125);
                     }
                     §§goto(addr0134);
                  }
                  §§goto(addr0130);
               }
               else
               {
                  §§push(param1.permission);
               }
               §§goto(addr0107);
            }
            §§goto(addr00c6);
         }
         §§goto(addr0153);
      }
   }
}

