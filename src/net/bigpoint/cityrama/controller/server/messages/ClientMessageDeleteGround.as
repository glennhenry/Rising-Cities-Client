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
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:IPlaneObject = IPlaneObject(param1.getBody());
         var _temp_1:* = _loc2_.container;
         _loc2_.container.mouseEnabled = false;
         _temp_1.mouseChildren = false;
         var _loc3_:Number = 0;
         for each(var _loc4_ in (_loc2_.objectVo as IFloaterObjectVo).informationFloaterPhase.listEntryOutputs)
         {
            _loc3_ += 1;
         }
         if(_loc3_ == 1)
         {
            _loc3_ -= 0.5;
         }
         var _loc5_:ConfigPhaseDTO = (_loc2_.objectVo as IFloaterObjectVo).informationFloaterPhase;
         (_loc2_ as IInformationFloat).invalidateInformationFloaterManager(true);
         if(OptionsGlobalVariables.getInstance().showDropIcons)
         {
            if(_loc5_ != null)
            {
               facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                  "tO":_loc2_,
                  "cP":_loc5_
               });
            }
         }
         var _loc6_:Object = new Object();
         _loc6_.gid = _loc2_.objectVo.groundDTO.id;
         TweenMax.delayedCall(_loc3_,this.sendToServer,[_loc6_]);
      }
      
      private function sendToServer(param1:Object) : void
      {
         var _loc2_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc3_:MessageVo = _loc2_.createMessage(param1,ServerMessageConstants.PLAYFIELD_DESTROY_GROUND);
         _loc2_.sendMessage(_loc3_);
      }
   }
}

