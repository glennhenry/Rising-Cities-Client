package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.vo.PlayfieldItemCreateVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessagePlayfieldItemCreateCommand extends SimpleCommand
   {
      
      private static const PERMISSION:String = "_PERMISSION";
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         PERMISSION = "_PERMISSION";
      }
      
      public function ClientMessagePlayfieldItemCreateCommand()
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
         var _loc6_:* = null;
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:PlayfieldItemCreateVo = param1.getBody() as PlayfieldItemCreateVo;
         if(_loc8_)
         {
            if(_loc3_ == null)
            {
               if(!(_loc9_ && Boolean(_loc2_)))
               {
                  §§goto(addr0055);
               }
            }
            var _loc4_:BillboardObjectVo = _loc3_.billboardObjectVo;
            var _loc5_:Object = new Object();
            if(_loc8_)
            {
               §§push(_loc3_.billboardObjectVo is DecorationFieldObjectVo);
               if(_loc8_)
               {
                  if(§§pop())
                  {
                     if(_loc8_)
                     {
                        _loc5_.cdi = _loc4_.configPlayfieldItemVo.id;
                        if(_loc8_)
                        {
                           §§push(ServerMessageConstants.PLAYFIELD_DECORATION_CREATE);
                           if(_loc8_)
                           {
                              §§push(§§pop());
                              if(_loc8_ || Boolean(this))
                              {
                                 _loc6_ = §§pop();
                                 if(!_loc8_)
                                 {
                                    addr00dc:
                                    §§push(ServerMessageConstants.PLAYFIELD_BUILDING_CREATE);
                                    if(!(_loc9_ && Boolean(this)))
                                    {
                                       addr00f0:
                                       §§push(§§pop());
                                       if(!(_loc9_ && Boolean(param1)))
                                       {
                                          _loc6_ = §§pop();
                                          if(!(_loc9_ && Boolean(_loc3_)))
                                          {
                                             addr010f:
                                             _loc5_.x = _loc4_.matrix3dCoordinates.x;
                                             if(!_loc9_)
                                             {
                                                addr0122:
                                                _loc5_.y = _loc4_.matrix3dCoordinates.y;
                                                if(!(_loc9_ && Boolean(_loc3_)))
                                                {
                                                   addr013d:
                                                   addr0141:
                                                   if(_loc3_.buyPermission)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         addr014b:
                                                         addr0158:
                                                         §§push(_loc6_);
                                                         if(_loc8_)
                                                         {
                                                            §§push(§§pop() + PERMISSION);
                                                         }
                                                         _loc6_ = §§pop();
                                                      }
                                                   }
                                                   var _loc7_:MessageVo = _loc2_.createMessage(_loc5_,_loc6_);
                                                   addr015a:
                                                   if(_loc8_ || Boolean(_loc3_))
                                                   {
                                                      _loc2_.sendMessage(_loc7_);
                                                      if(_loc8_)
                                                      {
                                                         addr018f:
                                                         _loc4_.informationFloaterPhase = _loc4_.configPlayfieldItemVo.constructionPhases[0];
                                                      }
                                                      return;
                                                   }
                                                   §§goto(addr018f);
                                                }
                                                §§goto(addr014b);
                                             }
                                             §§goto(addr013d);
                                          }
                                          §§goto(addr0122);
                                       }
                                    }
                                    §§goto(addr0158);
                                 }
                                 §§goto(addr010f);
                              }
                              §§goto(addr00f0);
                           }
                           §§goto(addr0158);
                        }
                        §§goto(addr014b);
                     }
                     §§goto(addr015a);
                  }
                  else
                  {
                     _loc5_.cbi = _loc4_.configPlayfieldItemVo.id;
                     if(_loc8_)
                     {
                        §§goto(addr00dc);
                     }
                  }
                  §§goto(addr010f);
               }
               §§goto(addr0141);
            }
            §§goto(addr013d);
         }
         addr0055:
      }
   }
}

