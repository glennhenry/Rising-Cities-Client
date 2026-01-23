package net.bigpoint.cityrama.controller.server.messages.move
{
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBuildingMoveSuccessCommand extends SimpleCommand
   {
      
      public function ServerMessagePlayfieldBuildingMoveSuccessCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc10_:Boolean = true;
         var _loc11_:* = §§pop();
         var _loc8_:IEmergencyInfrastructure = null;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:NeedMatrixProxy = facade.retrieveProxy(NeedMatrixProxy.NAME) as NeedMatrixProxy;
         var _loc4_:MessageVo = MessageVo(param1.getBody());
         var _loc5_:BillboardObject = _loc2_.getBillboardById(_loc4_.json.bid);
         var _loc6_:Cuboid = _loc5_.billboardObjectVo.matrix3dCoordinates.clone() as Cuboid;
         if(!(_loc11_ && Boolean(_loc3_)))
         {
            §§push(_loc5_.billboardObjectVo);
            if(!(_loc11_ && Boolean(param1)))
            {
               §§pop().matrix3dCoordinates = _loc5_.billboardObjectVo.lastPositonHistoryPoint;
               if(_loc10_ || Boolean(param1))
               {
                  _loc2_.removeGameObjectVofromMatrix(_loc5_.billboardObjectVo);
                  if(!(_loc11_ && Boolean(this)))
                  {
                     §§push(_loc5_ is ResidentialFieldObject);
                     if(_loc10_ || Boolean(_loc2_))
                     {
                        if(§§pop())
                        {
                           if(_loc10_ || Boolean(_loc3_))
                           {
                              addr00e2:
                              _loc3_.removeResidential((_loc5_ as ResidentialFieldObject).residentialFieldObjectVo);
                              if(!(_loc11_ && Boolean(_loc2_)))
                              {
                                 addr0131:
                                 §§push(_loc5_.billboardObjectVo);
                                 if(!_loc11_)
                                 {
                                    §§pop().matrix3dCoordinates = _loc6_;
                                    if(_loc10_)
                                    {
                                       addr0146:
                                       §§push(_loc5_.billboardObjectVo);
                                       if(!_loc11_)
                                       {
                                          addr015c:
                                          §§push(§§pop().buildingDTO);
                                          if(_loc10_ || Boolean(_loc2_))
                                          {
                                             §§push(_loc5_.billboardObjectVo);
                                             if(_loc10_)
                                             {
                                                §§pop().posX = §§pop().matrix3dCoordinates.x = _loc5_.billboardObjectVo.matrixCoordinates.x = _loc6_.x;
                                                if(_loc10_)
                                                {
                                                   addr01ab:
                                                   _loc5_.billboardObjectVo.buildingDTO.posY = _loc5_.billboardObjectVo.matrix3dCoordinates.y = _loc5_.billboardObjectVo.matrixCoordinates.y = _loc6_.y;
                                                   addr01a7:
                                                   addr01a4:
                                                   addr01a0:
                                                   if(!(_loc11_ && Boolean(param1)))
                                                   {
                                                      _loc2_.reAddGameObjVoToMatrix(_loc5_.billboardObjectVo);
                                                      if(_loc10_)
                                                      {
                                                         addr01eb:
                                                         §§push(_loc5_ is ResidentialFieldObject);
                                                         if(_loc10_)
                                                         {
                                                            addr01f7:
                                                            if(§§pop())
                                                            {
                                                               if(_loc10_)
                                                               {
                                                                  addr0201:
                                                                  _loc3_.addResidential((_loc5_ as ResidentialFieldObject).residentialFieldObjectVo);
                                                                  if(_loc11_)
                                                                  {
                                                                     addr025f:
                                                                     _loc3_.updateShop((_loc5_ as ShopFieldObject).shopFieldObjectVo);
                                                                     if(_loc10_)
                                                                     {
                                                                        addr0273:
                                                                        (_loc5_ as ShopFieldObject).shopFieldObjectVo.formerPosition = null;
                                                                     }
                                                                  }
                                                                  var _loc7_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
                                                                  addr0280:
                                                                  if(!(_loc11_ && Boolean(param1)))
                                                                  {
                                                                     if(_loc5_ is IEmergencyInfrastructure)
                                                                     {
                                                                        addr02b9:
                                                                        _loc8_ = _loc5_ as IEmergencyInfrastructure;
                                                                        if(!_loc11_)
                                                                        {
                                                                           _loc7_.addObject(_loc8_.emergencyFieldObjectVo);
                                                                        }
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr02b9);
                                                               }
                                                               else
                                                               {
                                                                  addr0229:
                                                                  _loc3_.addShop(_loc5_ as ShopFieldObject);
                                                                  if(_loc10_ || Boolean(this))
                                                                  {
                                                                     _loc3_.updateShopsOldResidentials((_loc5_ as ShopFieldObject).shopFieldObjectVo);
                                                                     if(_loc10_ || Boolean(_loc2_))
                                                                     {
                                                                        §§goto(addr025f);
                                                                     }
                                                                     §§goto(addr0280);
                                                                  }
                                                               }
                                                               §§goto(addr025f);
                                                            }
                                                            else
                                                            {
                                                               addr021f:
                                                               if(_loc5_ is ShopFieldObject)
                                                               {
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§goto(addr0229);
                                                                  }
                                                                  §§goto(addr0273);
                                                               }
                                                            }
                                                            §§goto(addr0280);
                                                         }
                                                         §§goto(addr021f);
                                                      }
                                                      §§goto(addr0280);
                                                   }
                                                }
                                                §§goto(addr0229);
                                             }
                                             §§goto(addr01ab);
                                          }
                                          §§goto(addr01a7);
                                       }
                                       §§goto(addr01a4);
                                    }
                                    §§goto(addr01a0);
                                 }
                                 §§goto(addr01a4);
                              }
                              §§goto(addr0201);
                           }
                           §§goto(addr0280);
                        }
                        else
                        {
                           §§push(_loc5_ is ShopFieldObject);
                           if(_loc10_)
                           {
                              if(§§pop())
                              {
                                 if(_loc10_)
                                 {
                                    _loc3_.removeShop(_loc5_ as ShopFieldObject);
                                    if(_loc10_ || Boolean(this))
                                    {
                                       §§goto(addr0131);
                                    }
                                 }
                                 §§goto(addr0146);
                              }
                              §§goto(addr0131);
                           }
                        }
                        §§goto(addr01f7);
                     }
                     §§goto(addr021f);
                  }
                  §§goto(addr01a0);
               }
               §§goto(addr01eb);
            }
            §§goto(addr015c);
         }
         §§goto(addr00e2);
      }
   }
}

