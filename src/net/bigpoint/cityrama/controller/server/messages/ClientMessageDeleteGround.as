package net.bigpoint.cityrama.controller.server.messages
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IFloaterObjectVo;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IInformationFloat;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IPlaneObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageDeleteGround extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageDeleteGround()
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
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc4_:ConfigOutputDTO = null;
         var _loc2_:IPlaneObject = IPlaneObject(param1.getBody());
         if(_loc9_)
         {
            _loc2_.container.mouseChildren = _loc2_.container.mouseEnabled = false;
         }
         var _loc3_:* = 0;
         for each(_loc4_ in (_loc2_.objectVo as IFloaterObjectVo).informationFloaterPhase.listEntryOutputs)
         {
            if(_loc10_)
            {
               continue;
            }
            §§push(_loc3_);
            if(!(_loc10_ && Boolean(param1)))
            {
               §§push(§§pop() + 1);
               if(!(_loc10_ && Boolean(_loc3_)))
               {
                  addr0091:
                  §§push(§§pop());
               }
               _loc3_ = §§pop();
               continue;
            }
            §§goto(addr0091);
         }
         if(_loc9_)
         {
            §§push(_loc3_);
            if(_loc9_)
            {
               if(§§pop() == 1)
               {
                  if(!(_loc10_ && Boolean(this)))
                  {
                     addr00ec:
                     §§push(_loc3_);
                     if(!(_loc10_ && Boolean(this)))
                     {
                        §§push(§§pop() - 0.5);
                        if(!(_loc10_ && Boolean(param1)))
                        {
                           §§push(§§pop());
                        }
                     }
                     _loc3_ = §§pop();
                  }
               }
               addr00ed:
               var _loc5_:ConfigPhaseDTO = (_loc2_.objectVo as IFloaterObjectVo).informationFloaterPhase;
               if(!_loc10_)
               {
                  (_loc2_ as IInformationFloat).invalidateInformationFloaterManager(true);
                  if(!_loc10_)
                  {
                     if(OptionsGlobalVariables.getInstance().showDropIcons)
                     {
                        if(!(_loc10_ && Boolean(this)))
                        {
                           if(_loc5_ != null)
                           {
                              if(_loc9_)
                              {
                                 facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                                    "tO":_loc2_,
                                    "cP":_loc5_
                                 });
                                 addr013c:
                              }
                           }
                        }
                     }
                  }
                  var _loc6_:Object = new Object();
                  _loc6_.gid = _loc2_.objectVo.groundDTO.id;
                  if(!_loc10_)
                  {
                     TweenMax.delayedCall(_loc3_,this.sendToServer,[_loc6_]);
                  }
                  return;
               }
               §§goto(addr013c);
            }
            §§goto(addr00ec);
         }
         §§goto(addr00ed);
      }
      
      private function sendToServer(param1:Object) : void
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:MessageVo = _loc2_.createMessage(param1,ServerMessageConstants.PLAYFIELD_DESTROY_GROUND);
         if(_loc4_)
         {
            _loc2_.sendMessage(_loc3_);
         }
      }
   }
}

