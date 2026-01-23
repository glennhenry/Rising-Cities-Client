package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.vo.PlayfieldItemCreateVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageBuildingCreateCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageBuildingCreateCommand()
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
         §§push(false);
         var _loc8_:Boolean = true;
         var _loc9_:* = §§pop();
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:PlayfieldItemCreateVo = param1.getBody() as PlayfieldItemCreateVo;
         if(!(_loc9_ && Boolean(param1)))
         {
            if(_loc3_ == null)
            {
               if(!_loc9_)
               {
                  return;
               }
            }
         }
         var _loc4_:BillboardObjectVo = _loc3_.billboardObjectVo;
         var _loc5_:Object = new Object();
         _loc5_.cbi = _loc4_.configPlayfieldItemVo.id;
         if(_loc8_ || Boolean(param1))
         {
            _loc5_.x = _loc4_.matrix3dCoordinates.x;
            if(!_loc9_)
            {
               addr009b:
               _loc5_.y = _loc4_.matrix3dCoordinates.y;
            }
            §§push(ServerMessageConstants.PLAYFIELD_BUILDING_CREATE);
            if(!_loc9_)
            {
               §§push(§§pop());
            }
            var _loc6_:* = §§pop();
            if(_loc8_ || Boolean(param1))
            {
               if(_loc3_.buyPermission)
               {
                  if(!(_loc9_ && Boolean(param1)))
                  {
                     addr00db:
                     _loc6_ += "_PERMISSION";
                  }
               }
               var _loc7_:MessageVo = _loc2_.createMessage(_loc5_,_loc6_);
               if(!(_loc9_ && Boolean(_loc3_)))
               {
                  _loc2_.sendMessage(_loc7_);
                  if(!(_loc9_ && Boolean(_loc3_)))
                  {
                     addr011e:
                     _loc4_.informationFloaterPhase = _loc4_.configPlayfieldItemVo.constructionPhases[0];
                  }
                  return;
               }
               §§goto(addr011e);
            }
            §§goto(addr00db);
         }
         §§goto(addr009b);
      }
   }
}

