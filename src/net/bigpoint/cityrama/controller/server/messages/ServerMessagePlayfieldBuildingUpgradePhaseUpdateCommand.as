package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.preloader.FilePreloadServiceProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.BuildingDTO;
   import net.bigpoint.cityrama.model.server.vo.server.MasteryBonusDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEstablishedManagerImplementation;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBuildingUpgradePhaseUpdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldBuildingUpgradePhaseUpdateCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc2_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc8_:BuildingDTO = null;
         var _loc9_:MasteryBonusDTO = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:BillboardObject = _loc3_.getBillboardById(_loc2_.json.bid);
         var _loc5_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc6_:FilePreloadServiceProxy = FilePreloadServiceProxy(facade.retrieveProxy(FilePreloadServiceProxy.NAME));
         var _loc7_:NeedMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         if(_loc10_ || Boolean(_loc2_))
         {
            if(_loc2_.json.b != null)
            {
               if(_loc10_ || Boolean(this))
               {
                  addr00af:
                  _loc8_ = new BuildingDTO(_loc2_.json.b,_loc5_.getConfigPlayfieldItemById(_loc2_.json.b.c));
                  _loc9_ = _loc4_.billboardObjectVo.buildingDTO.currentMasteryBonus;
                  if(!_loc11_)
                  {
                     §§push(_loc4_.billboardObjectVo);
                     if(_loc10_ || Boolean(_loc2_))
                     {
                        §§pop().buildingDTO = _loc8_;
                        if(!(_loc11_ && Boolean(_loc3_)))
                        {
                           addr0111:
                           _loc4_.billboardObjectVo.configPlayfieldItemVo = _loc5_.getConfigPlayfieldItemById(_loc2_.json.b.c);
                           if(_loc10_ || Boolean(_loc3_))
                           {
                              PlayfieldObjectsProxy.addIconOffsets(_loc4_.billboardObjectVo,_loc6_);
                              if(!_loc11_)
                              {
                                 §§push(Boolean(_loc9_));
                                 if(_loc10_)
                                 {
                                    var _temp_6:* = §§pop();
                                    §§push(_temp_6);
                                    if(_temp_6)
                                    {
                                       if(_loc10_)
                                       {
                                          §§pop();
                                          if(_loc10_ || Boolean(_loc2_))
                                          {
                                             addr0191:
                                             §§push(RandomUtilities.isEqual(_loc9_,_loc8_.currentMasteryBonus));
                                             if(_loc10_ || Boolean(_loc2_))
                                             {
                                                §§push(!§§pop());
                                             }
                                             if(§§pop())
                                             {
                                                if(_loc10_)
                                                {
                                                   addr019b:
                                                   facade.sendNotification(ApplicationNotificationConstants.MASTERY_CHALLENGE_UPDATE);
                                                }
                                             }
                                             addr01a5:
                                             §§push(_loc4_ is IEstablishedManagerImplementation);
                                             if(_loc10_ || Boolean(_loc3_))
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc10_)
                                                   {
                                                      (_loc4_ as IEstablishedManagerImplementation).invalidateEstablishedManager();
                                                      if(!(_loc11_ && Boolean(_loc2_)))
                                                      {
                                                         addr01db:
                                                         §§push(_loc4_ is IBuildUpManagerImplementation);
                                                         if(_loc10_)
                                                         {
                                                            addr01e7:
                                                            if(§§pop())
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  (_loc4_ as IBuildUpManagerImplementation).invalidateBuildUpManager();
                                                                  if(!_loc11_)
                                                                  {
                                                                     addr0201:
                                                                     addr0207:
                                                                     if(_loc4_ is ShopFieldObject)
                                                                     {
                                                                        if(_loc10_ || Boolean(this))
                                                                        {
                                                                           _loc7_.removeShop(_loc4_ as ShopFieldObject);
                                                                           if(_loc10_ || Boolean(_loc3_))
                                                                           {
                                                                              _loc7_.addShop(_loc4_ as ShopFieldObject);
                                                                              if(!(_loc11_ && Boolean(_loc3_)))
                                                                              {
                                                                                 addr025b:
                                                                                 _loc4_.billboardObjectVo.invalidate();
                                                                                 if(_loc10_ || Boolean(_loc2_))
                                                                                 {
                                                                                    §§goto(addr0271);
                                                                                 }
                                                                                 §§goto(addr027e);
                                                                              }
                                                                              addr0271:
                                                                              _loc4_.invalidateIconStateManager(false);
                                                                              if(_loc10_)
                                                                              {
                                                                                 addr027e:
                                                                                 sendNotification(ApplicationNotificationConstants.BUILDING_CONSTRUCTION_STATE_CHANGED);
                                                                              }
                                                                              §§goto(addr0288);
                                                                           }
                                                                        }
                                                                        §§goto(addr027e);
                                                                     }
                                                                     §§goto(addr025b);
                                                                  }
                                                               }
                                                               §§goto(addr027e);
                                                            }
                                                            §§goto(addr0201);
                                                         }
                                                         §§goto(addr0207);
                                                      }
                                                      addr0288:
                                                      return;
                                                   }
                                                   §§goto(addr0271);
                                                }
                                                §§goto(addr01db);
                                             }
                                             §§goto(addr01e7);
                                          }
                                          §§goto(addr019b);
                                       }
                                    }
                                 }
                                 §§goto(addr0191);
                              }
                           }
                        }
                        §§goto(addr01a5);
                     }
                     §§goto(addr0111);
                  }
                  §§goto(addr01a5);
               }
               §§goto(addr0271);
            }
            §§goto(addr01a5);
         }
         §§goto(addr00af);
      }
   }
}

