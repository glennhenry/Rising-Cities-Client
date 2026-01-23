package net.bigpoint.cityrama.controller.server.messages.move
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.buffSystem.NeedMatrixProxy;
   import net.bigpoint.cityrama.model.common.Cuboid;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.interfaces.IEmergencyInfrastructure;
   import net.bigpoint.cityrama.model.infrastructure.SecurityMatrixProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ShopFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBuildingMoveFailedCommand extends SimpleCommand
   {
      
      public function ServerMessagePlayfieldBuildingMoveFailedCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(!_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = _temp_1;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = PlayfieldObjectsProxy(facade.retrieveProxy(PlayfieldObjectsProxy.NAME));
         var _loc4_:NeedMatrixProxy = NeedMatrixProxy(facade.retrieveProxy(NeedMatrixProxy.NAME));
         var _loc5_:BillboardObject = _loc3_.getBillboardById(_loc2_.json.bid);
         var _loc6_:SecurityMatrixProxy = facade.retrieveProxy(SecurityMatrixProxy.NAME) as SecurityMatrixProxy;
         if(_loc8_ || Boolean(_loc2_))
         {
            if(_loc5_ == null)
            {
               throw new RamaCityError("ServerMessagePlayfieldBuildingMoveFailedCommand: moved Building NULL!");
            }
            if(!(_loc7_ && Boolean(param1)))
            {
               §§push(_loc5_.billboardObjectVo);
               if(!_loc7_)
               {
                  §§pop().matrix3dCoordinates = new Cuboid(_loc2_.json.x,_loc2_.json.y,0,_loc5_.billboardObjectVo.configPlayfieldItemVo.sizeX,_loc5_.billboardObjectVo.configPlayfieldItemVo.sizeY,_loc5_.billboardObjectVo.configPlayfieldItemVo.zLevels.length);
                  if(_loc8_)
                  {
                     sendNotification(ApplicationNotificationConstants.PLAYFIELD_MOVE_ITEM,_loc5_);
                     if(!_loc7_)
                     {
                        _loc3_.reAddGameObjVoToMatrix(_loc5_.billboardObjectVo);
                        if(_loc8_ || Boolean(this))
                        {
                           addr0112:
                           §§push(_loc5_ is ShopFieldObject);
                           if(_loc8_)
                           {
                              if(§§pop())
                              {
                                 if(!_loc7_)
                                 {
                                    _loc4_.addShop(_loc5_ as ShopFieldObject);
                                    if(!(_loc7_ && Boolean(this)))
                                    {
                                       addr0142:
                                       (_loc5_ as ShopFieldObject).shopFieldObjectVo.formerPosition = null;
                                       if(!_loc7_)
                                       {
                                          addr0155:
                                          addr015b:
                                          if(_loc5_ is IEmergencyInfrastructure)
                                          {
                                             if(!(_loc7_ && Boolean(_loc3_)))
                                             {
                                                _loc6_.addObject((_loc5_ as IEmergencyInfrastructure).emergencyFieldObjectVo);
                                                addr016d:
                                                if(!(_loc7_ && Boolean(_loc2_)))
                                                {
                                                   addr019b:
                                                   _loc5_.billboardObjectVo.userInteractionLocked = false;
                                                   addr0197:
                                                   if(_loc7_)
                                                   {
                                                   }
                                                }
                                             }
                                             §§goto(addr01b5);
                                          }
                                          §§goto(addr0197);
                                       }
                                    }
                                    addr01b5:
                                    return;
                                 }
                                 §§goto(addr0142);
                              }
                              §§goto(addr0155);
                           }
                           §§goto(addr015b);
                        }
                        §§goto(addr0155);
                     }
                     §§goto(addr016d);
                  }
                  §§goto(addr0112);
               }
               §§goto(addr019b);
            }
         }
         §§goto(addr0142);
      }
   }
}

