package net.bigpoint.cityrama.controller.server.messages.treasury
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageSwapCurrencyCommand extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageSwapCurrencyCommand()
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
         var _temp_1:* = true;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:GameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         var _loc4_:Object = new Object();
         var _loc5_:int = param1.getBody().amount as int;
         var _loc6_:int = param1.getBody().type as int;
         §§push(_loc6_);
         if(_loc10_)
         {
            var _loc8_:* = §§pop();
            if(_loc10_)
            {
               §§push(0);
               if(!_loc9_)
               {
                  §§push(_loc8_);
                  if(!_loc9_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc9_ && Boolean(this)))
                        {
                           addr0113:
                           §§push(0);
                           if(!(_loc10_ || Boolean(param1)))
                           {
                              addr016d:
                              addr016f:
                              if(§§pop() === _loc8_)
                              {
                                 addr0173:
                                 §§push(2);
                                 if(_loc9_ && Boolean(param1))
                                 {
                                 }
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                        }
                        else
                        {
                           addr0151:
                           §§push(1);
                           if(_loc9_ && Boolean(_loc2_))
                           {
                           }
                        }
                        addr01a1:
                        switch(§§pop())
                        {
                           case 0:
                              _loc4_.cri = Number(_loc3_.resourcesIds[ServerResConst.RESOURCE_VIRTUALCURRENCY]);
                              if(_loc9_)
                              {
                              }
                              addr01b8:
                              _loc4_.a = _loc5_ as int;
                              break;
                           case 1:
                              _loc4_.cri = Number(_loc3_.resourcesIds[ServerResConst.RESOURCE_PRODUCTIONPOINTS]);
                              if(_loc9_)
                              {
                                 break;
                              }
                              §§goto(addr01b8);
                              break;
                           case 2:
                              _loc4_.cri = Number(_loc3_.resourcesIds[ServerResConst.RESOURCE_EDUCATIONPOINTS]);
                              if(_loc9_ && Boolean(_loc2_))
                              {
                              }
                              §§goto(addr01b8);
                           default:
                              §§goto(addr01b8);
                        }
                        var _loc7_:MessageVo = _loc2_.createMessage(_loc4_,ServerMessageConstants.PAYMENT_SWAP_CURRENCY);
                        if(!_loc9_)
                        {
                           _loc2_.sendMessage(_loc7_);
                        }
                        return;
                        addr019f:
                     }
                     else
                     {
                        §§push(1);
                        if(_loc10_)
                        {
                           §§push(_loc8_);
                           if(!(_loc9_ && Boolean(param1)))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc9_ && Boolean(param1)))
                                 {
                                    §§goto(addr0151);
                                 }
                                 else
                                 {
                                    §§goto(addr0173);
                                 }
                              }
                              else
                              {
                                 §§push(2);
                                 if(!_loc9_)
                                 {
                                    §§goto(addr016d);
                                 }
                              }
                              §§goto(addr019f);
                           }
                           §§goto(addr016f);
                        }
                     }
                     §§goto(addr016d);
                  }
                  §§goto(addr016f);
               }
               §§goto(addr016d);
            }
            §§goto(addr0113);
         }
         §§goto(addr01a1);
      }
   }
}

