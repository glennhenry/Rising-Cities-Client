package net.bigpoint.cityrama.controller.server.messages.playfield.client
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.ApplicationModeProxy;
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.PlayfieldLightVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageSwitchPlayfieldCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageSwitchPlayfieldCommand()
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = _temp_1;
         var _loc3_:ApplicationModeProxy = null;
         var _loc4_:CityProxy = null;
         var _loc5_:ServerCommunicationProxy = null;
         var _loc6_:Object = null;
         var _loc7_:Boolean = false;
         var _loc8_:PlayfieldLightVo = null;
         var _loc9_:MessageVo = null;
         var _loc2_:Number = param1.getBody() as Number;
         if(_loc13_)
         {
            if(_loc2_)
            {
               addr004e:
               _loc3_ = facade.retrieveProxy(ApplicationModeProxy.NAME) as ApplicationModeProxy;
               if(_loc13_ || Boolean(param1))
               {
                  _loc3_.mode = ApplicationModeProxy.MODE_NORMAL;
               }
               _loc4_ = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
               _loc5_ = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
               _loc6_ = new Object();
               if(!(_loc12_ && Boolean(param1)))
               {
                  _loc7_ = false;
               }
               for each(_loc8_ in _loc4_.city.playfields)
               {
                  if(_loc8_.configId == _loc2_)
                  {
                     if(!(_loc12_ && Boolean(_loc3_)))
                     {
                        _loc6_.pfid = _loc8_.id;
                        if(!(_loc13_ || Boolean(_loc3_)))
                        {
                           break;
                        }
                     }
                     _loc7_ = true;
                     break;
                  }
               }
               if(!(_loc12_ && Boolean(param1)))
               {
                  if(_loc7_)
                  {
                     addr0147:
                     _loc9_ = _loc5_.createMessage(_loc6_,ServerMessageConstants.PLAYFIELD_SWITCH);
                     if(!_loc12_)
                     {
                        _loc5_.sendMessage(_loc9_);
                     }
                  }
                  §§goto(addr0167);
               }
               §§goto(addr0147);
            }
            addr0167:
            return;
         }
         §§goto(addr004e);
      }
   }
}

