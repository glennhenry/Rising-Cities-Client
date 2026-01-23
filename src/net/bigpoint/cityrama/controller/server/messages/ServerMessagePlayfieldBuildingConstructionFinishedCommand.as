package net.bigpoint.cityrama.controller.server.messages
{
   import mx.resources.ResourceManager;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.field.vo.ResidentialFieldObjectVo;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBuildingConstructionFinishedCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldBuildingConstructionFinishedCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc5_:ResidentialFieldObject = null;
         var _loc6_:ResidentialFieldObjectVo = null;
         var _loc7_:SecurityMatrixProxy = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:BillboardObject = _loc3_.getBillboardById(_loc2_.json.bid);
         if(_loc4_ != null)
         {
            if(_loc8_)
            {
               §§push(_loc4_ is ResidentialFieldObject);
               if(!(_loc9_ && Boolean(_loc2_)))
               {
                  if(§§pop())
                  {
                     if(!(_loc9_ && Boolean(_loc3_)))
                     {
                        _loc5_ = _loc4_ as ResidentialFieldObject;
                        _loc6_ = ConfigFactory.buildResidentialFieldObjectVo(_loc5_.residentialFieldObjectVo);
                        if(_loc8_ || Boolean(this))
                        {
                           _loc5_.residentialFieldObjectVo.residentialNeeds = _loc6_.residentialNeeds;
                        }
                        §§goto(addr00bb);
                     }
                     §§goto(addr01af);
                  }
                  addr00bb:
                  §§push(_loc4_.billboardObjectVo);
                  if(!(_loc9_ && Boolean(param1)))
                  {
                     §§pop().informationFloaterPhase = _loc4_.billboardObjectVo.activePhases[0].config;
                     if(_loc8_ || Boolean(this))
                     {
                        §§push(_loc4_ is ShopFieldObject);
                        if(!(_loc9_ && Boolean(_loc2_)))
                        {
                           addr0101:
                           if(§§pop())
                           {
                              if(!(_loc9_ && Boolean(_loc2_)))
                              {
                                 addr0113:
                                 §§push(_loc4_.billboardObjectVo);
                                 if(_loc8_)
                                 {
                                    §§goto(addr012a);
                                 }
                                 §§goto(addr014e);
                              }
                           }
                           §§goto(addr0189);
                        }
                        §§goto(addr01cf);
                     }
                     §§goto(addr0113);
                  }
                  addr012a:
                  §§pop().informationFloaterPhase = null;
                  if(_loc8_ || Boolean(param1))
                  {
                     §§push(_loc4_.billboardObjectVo);
                     if(!(_loc9_ && Boolean(param1)))
                     {
                        addr014e:
                        §§push(ResourceManager.getInstance());
                        §§push("rcl.misc.infieldfloaterCustomText");
                        if(!_loc9_)
                        {
                           §§push("");
                           if(_loc8_)
                           {
                              addr0167:
                              §§push(§§pop() + §§pop());
                              §§push("rcl.misc.infieldfloaterCustomText.needBuildingOperation");
                              if(!(_loc9_ && Boolean(param1)))
                              {
                                 §§push(§§pop() + "");
                              }
                           }
                           §§pop().informationFloaterCustomText = §§pop().getString(§§pop(),§§pop());
                           if(_loc8_)
                           {
                              addr0189:
                              §§push(_loc4_.billboardObjectVo);
                              if(!(_loc9_ && Boolean(_loc2_)))
                              {
                                 §§goto(addr019b);
                              }
                              §§goto(addr01fd);
                           }
                           §§goto(addr0241);
                        }
                        §§goto(addr0167);
                     }
                     addr019b:
                     §§pop().activePhases = new Vector.<PhaseDTO>();
                     if(!_loc9_)
                     {
                        addr01af:
                        _loc4_.invalidateEstablishedManager();
                        if(!_loc9_)
                        {
                           §§push(_loc4_ is IBuildUpManagerImplementation);
                           if(_loc8_ || Boolean(_loc3_))
                           {
                              addr01cf:
                              if(§§pop())
                              {
                                 if(_loc8_ || Boolean(param1))
                                 {
                                    §§goto(addr01e1);
                                 }
                                 §§goto(addr0223);
                              }
                              §§goto(addr01f9);
                           }
                           §§goto(addr0237);
                        }
                        §§goto(addr020f);
                     }
                     addr01e1:
                     (_loc4_ as IBuildUpManagerImplementation).invalidateBuildUpManager();
                     if(!(_loc9_ && Boolean(_loc2_)))
                     {
                        addr01fd:
                        _loc4_.billboardObjectVo.userInteractionLocked = false;
                        addr01f9:
                        if(_loc8_ || Boolean(_loc3_))
                        {
                           addr020f:
                           _loc4_.invalidateIconStateManager();
                           if(_loc8_ || Boolean(param1))
                           {
                              addr0223:
                              addr0237:
                              if(_loc4_ is IEmergencyInfrastructure)
                              {
                                 if(!_loc9_)
                                 {
                                    addr0241:
                                    _loc7_ = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
                                    _loc7_.addObject((_loc4_ as IEmergencyInfrastructure).emergencyFieldObjectVo);
                                    addr0262:
                                    sendNotification(ApplicationNotificationConstants.BUILDING_CONSTRUCTION_STATE_CHANGED);
                                 }
                                 §§goto(addr026c);
                              }
                              §§goto(addr0262);
                           }
                        }
                        §§goto(addr0241);
                     }
                  }
                  §§goto(addr026c);
               }
               §§goto(addr0101);
            }
            addr026c:
            return;
         }
         §§goto(addr0262);
      }
   }
}

