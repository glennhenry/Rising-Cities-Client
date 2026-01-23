package net.bigpoint.cityrama.controller.applicationModes.build
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerOutputConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.baseView.BasementViewProxy;
   import net.bigpoint.cityrama.model.field.FieldBuildProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IGameObjectVo;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.vo.PlayfieldItemCreateVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class BuildGameObjectCommand extends SimpleCommand
   {
      
      public function BuildGameObjectCommand()
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
         var _loc12_:Boolean = true;
         var _loc13_:* = §§pop();
         var _loc7_:BillboardObjectVo = null;
         var _loc8_:BillboardObject = null;
         var _loc9_:ConfigPhaseDTO = null;
         var _loc10_:* = NaN;
         var _loc2_:IGameObjectVo = param1.getBody().obj as IGameObjectVo;
         var _loc3_:Number = Number(param1.getBody().priceRC);
         var _loc4_:FieldBuildProxy = facade.retrieveProxy(FieldBuildProxy.NAME) as FieldBuildProxy;
         var _loc5_:BasementViewProxy = facade.retrieveProxy(BasementViewProxy.NAME) as BasementViewProxy;
         var _loc6_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         if(!(_loc13_ && Boolean(_loc3_)))
         {
            if(_loc2_ is BillboardObjectVo)
            {
               addr008f:
               _loc7_ = _loc2_ as BillboardObjectVo;
               if(!_loc13_)
               {
                  sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_ITEM_CREATE,new PlayfieldItemCreateVo(_loc7_,_loc4_.buildAndBuyPermission));
                  if(!(_loc13_ && Boolean(_loc3_)))
                  {
                     addr00c6:
                     _loc6_.addGameObjectByData(_loc7_);
                  }
                  _loc8_ = BillboardObject(_loc6_.getObjectByVo(_loc7_));
                  if(_loc12_)
                  {
                     TweenMax.to(_loc4_.billboardObjectToAdd.presentation,0,{"colorTransform":{
                        "tint":0,
                        "tintAmount":0
                     }});
                     if(!_loc13_)
                     {
                        _loc8_.shrinkHitzone();
                        if(_loc12_)
                        {
                           §§push(_loc8_ is ShopFieldObject);
                           if(_loc12_)
                           {
                              if(§§pop())
                              {
                                 if(_loc12_ || Boolean(_loc3_))
                                 {
                                    sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,true);
                                    if(!(_loc12_ || Boolean(_loc3_)))
                                    {
                                       addr0177:
                                       sendNotification(ApplicationNotificationConstants.HIDE_NEED_ICONS,false);
                                       if(!_loc13_)
                                       {
                                          addr0188:
                                          §§push(_loc8_ is IBuildUpManagerImplementation);
                                          if(!_loc13_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc13_)
                                                {
                                                   addr019e:
                                                   IBuildUpManagerImplementation(_loc8_).invalidateBuildUpManager();
                                                   if(_loc12_)
                                                   {
                                                      addr01b1:
                                                      addr01b6:
                                                      if(_loc5_.isBaseViewEnabled)
                                                      {
                                                         if(!(_loc13_ && Boolean(_loc2_)))
                                                         {
                                                            addr01c8:
                                                            _loc5_.changeBaseViewForSingleBillboard(_loc8_);
                                                         }
                                                      }
                                                      addr01d0:
                                                      _loc9_ = _loc8_.billboardObjectVo.informationFloaterPhase;
                                                      if(_loc12_)
                                                      {
                                                         §§push(_loc4_.buildAndBuyPermission);
                                                         if(!(_loc13_ && Boolean(this)))
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc13_ && Boolean(_loc3_)))
                                                               {
                                                                  §§push(_loc3_);
                                                                  if(!_loc13_)
                                                                  {
                                                                     §§push(§§pop());
                                                                  }
                                                                  _loc10_ = §§pop();
                                                                  if(!(_loc13_ && Boolean(this)))
                                                                  {
                                                                     _loc8_.billboardObjectVo.informationFloaterPhase = _loc9_ = this.removeCCAndAddRCCostsToPhase(_loc9_,_loc10_);
                                                                     §§goto(addr023c);
                                                                  }
                                                                  §§goto(addr0284);
                                                               }
                                                               §§goto(addr0250);
                                                            }
                                                            addr023c:
                                                            _loc8_.invalidateInformationFloaterManager();
                                                            if(_loc12_ || Boolean(param1))
                                                            {
                                                               addr0250:
                                                               addr0259:
                                                               if(OptionsGlobalVariables.getInstance().showDropIcons)
                                                               {
                                                                  if(!_loc13_)
                                                                  {
                                                                     if(_loc9_ != null)
                                                                     {
                                                                        if(!(_loc13_ && Boolean(_loc3_)))
                                                                        {
                                                                           addr0284:
                                                                           facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                                                                              "tO":_loc8_,
                                                                              "cP":_loc9_
                                                                           });
                                                                           if(!_loc13_)
                                                                           {
                                                                              addr02a0:
                                                                              sendNotification(ApplicationNotificationConstants.FIELD_REMOVE_TEMPORARY,_loc4_.billboardObjectToAdd);
                                                                           }
                                                                           §§goto(addr02af);
                                                                        }
                                                                     }
                                                                     §§goto(addr02a0);
                                                                  }
                                                                  §§goto(addr02af);
                                                               }
                                                               §§goto(addr02a0);
                                                            }
                                                            §§goto(addr02af);
                                                         }
                                                         §§goto(addr0259);
                                                      }
                                                      §§goto(addr02a0);
                                                   }
                                                   §§goto(addr01c8);
                                                }
                                                §§goto(addr01d0);
                                             }
                                             §§goto(addr01b1);
                                          }
                                          §§goto(addr01b6);
                                       }
                                       §§goto(addr019e);
                                    }
                                    §§goto(addr0188);
                                 }
                                 §§goto(addr01b1);
                              }
                              else
                              {
                                 §§push(_loc8_ is ResidentialFieldObject);
                                 if(_loc12_)
                                 {
                                    addr016d:
                                    if(§§pop())
                                    {
                                       if(_loc12_)
                                       {
                                          §§goto(addr0177);
                                       }
                                       §§goto(addr01c8);
                                    }
                                    §§goto(addr0188);
                                 }
                              }
                              §§goto(addr01b6);
                           }
                           §§goto(addr016d);
                        }
                        §§goto(addr0188);
                     }
                  }
                  §§goto(addr01d0);
               }
               §§goto(addr00c6);
            }
            addr02af:
            return;
         }
         §§goto(addr008f);
      }
      
      private function removeCCAndAddRCCostsToPhase(param1:ConfigPhaseDTO, param2:Number) : ConfigPhaseDTO
      {
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc4_:ConfigOutputDTO = null;
         var _loc5_:GameConfigProxy = null;
         var _loc6_:Object = null;
         var _loc3_:ConfigPhaseDTO = param1.clone();
         for each(_loc4_ in _loc3_.listEntryOutputs)
         {
            §§push(_loc4_.resourceConfig);
            if(!(_loc9_ && Boolean(this)))
            {
               §§push(§§pop() == null);
               if(_loc10_)
               {
                  §§push(!§§pop());
                  if(!(_loc9_ && Boolean(this)))
                  {
                     var _temp_5:* = §§pop();
                     §§push(_temp_5);
                     if(_temp_5)
                     {
                        if(!_loc9_)
                        {
                           §§pop();
                           if(_loc9_ && Boolean(this))
                           {
                              continue;
                           }
                           addr009a:
                           §§push(_loc4_.resourceConfig.type == ServerResConst.RESOURCE_VIRTUALCURRENCY);
                        }
                     }
                  }
               }
               if(§§pop())
               {
                  if(_loc10_ || Boolean(param1))
                  {
                     _loc3_.listEntryOutputs.splice(_loc3_.listEntryOutputs.indexOf(_loc4_),1);
                  }
               }
               continue;
            }
            §§goto(addr009a);
         }
         _loc5_ = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         _loc6_ = new Object();
         _loc6_.t = ServerOutputConstants.RESOURCE;
         if(!_loc9_)
         {
            _loc6_.cid = _loc5_.config.resourceIds[ServerResConst.RESOURCE_REALCURRENCY];
            if(_loc10_)
            {
               addr0119:
               _loc6_.o = -param2;
            }
            _loc4_ = new ConfigOutputDTO(_loc6_);
            _loc4_.resourceConfig = _loc5_.config.resources[_loc6_.cid];
            if(!(_loc9_ && Boolean(param1)))
            {
               _loc3_.listEntryOutputs.push(_loc4_);
            }
            return _loc3_;
         }
         §§goto(addr0119);
      }
   }
}

