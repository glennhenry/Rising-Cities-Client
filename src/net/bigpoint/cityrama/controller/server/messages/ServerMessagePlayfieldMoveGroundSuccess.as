package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.ground.PlaneProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInteraction;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldMoveGroundSuccess extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldMoveGroundSuccess()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!_loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:PlaneProxy = facade.retrieveProxy(PlaneProxy.NAME) as PlaneProxy;
         var _loc4_:MessageVo = MessageVo(param1.getBody());
         var _loc5_:IPlaneObject = _loc2_.getPlaneObjectById(_loc4_.json.g.id);
         if(!_loc5_)
         {
            if(!(_loc6_ && Boolean(_loc2_)))
            {
               return;
            }
            addr00db:
            _loc5_.objectVo.groundDTO.posY = _loc5_.objectVo.matrix3dCoordinates.y;
            §§goto(addr00ce);
         }
         else
         {
            _loc3_.removeIPlaneObjectByData(_loc5_.objectVo);
            if(!_loc6_)
            {
               §§push(_loc5_.objectVo);
               if(!(_loc6_ && Boolean(param1)))
               {
                  §§push(§§pop().groundDTO);
                  if(_loc7_)
                  {
                     §§push(_loc5_.objectVo);
                     if(!(_loc6_ && Boolean(_loc3_)))
                     {
                        §§pop().posX = §§pop().matrix3dCoordinates.x;
                        if(_loc7_)
                        {
                           addr00ce:
                           addr00d6:
                           addr00d3:
                           if(_loc7_ || Boolean(param1))
                           {
                              _loc3_.addIPlaneObjectByData(_loc5_.objectVo);
                              if(_loc7_ || Boolean(_loc3_))
                              {
                                 addr0116:
                                 _loc2_.reAddGameObjVoToMatrix(_loc5_.objectVo,_loc5_ as IInteraction);
                              }
                           }
                           §§goto(addr0126);
                        }
                        addr0126:
                        return;
                     }
                     §§goto(addr00db);
                  }
                  §§goto(addr00d6);
               }
               §§goto(addr00d3);
            }
         }
         §§goto(addr0116);
      }
   }
}

