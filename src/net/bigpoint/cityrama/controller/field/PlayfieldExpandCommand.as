package net.bigpoint.cityrama.controller.field
{
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.field.vo.PlayfieldExpansionBuyVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayfieldExpandCommand extends SimpleCommand
   {
      
      public function PlayfieldExpandCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:PlayfieldExpansionBuyVo = PlayfieldExpansionBuyVo(param1.getBody());
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_EXPAND,_loc2_);
      }
   }
}

