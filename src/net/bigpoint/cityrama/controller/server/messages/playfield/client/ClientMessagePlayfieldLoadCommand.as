package net.bigpoint.cityrama.controller.server.messages.playfield.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldLightVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessagePlayfieldLoadCommand extends SimpleCommand
   {
      
      public function ClientMessagePlayfieldLoadCommand()
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
         var _loc11_:Boolean = true;
         var _loc12_:* = §§pop();
         var _loc3_:CityProxy = null;
         var _loc4_:ServerCommunicationProxy = null;
         var _loc5_:Object = null;
         var _loc6_:Boolean = false;
         var _loc7_:PlayfieldLightVo = null;
         var _loc8_:MessageVo = null;
         var _loc2_:Number = param1.getBody() as Number;
         if(!_loc12_)
         {
            if(_loc2_)
            {
               addr0048:
               _loc3_ = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
               _loc4_ = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
               _loc5_ = new Object();
               if(!_loc12_)
               {
                  _loc6_ = false;
               }
               for each(_loc7_ in _loc3_.city.playfields)
               {
                  if(_loc7_.configId == _loc2_)
                  {
                     if(!_loc12_)
                     {
                        _loc5_.pfid = _loc7_.id;
                        if(!_loc11_)
                        {
                           break;
                        }
                     }
                     _loc6_ = true;
                     break;
                  }
               }
               if(!_loc12_)
               {
                  if(_loc6_)
                  {
                     addr00f7:
                     _loc8_ = _loc4_.createMessage(_loc5_,ServerMessageConstants.PLAYFIELD_LOAD);
                     if(!_loc12_)
                     {
                        _loc4_.sendMessage(_loc8_);
                     }
                  }
                  §§goto(addr0117);
               }
               §§goto(addr00f7);
            }
            addr0117:
            return;
         }
         §§goto(addr0048);
      }
   }
}

