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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(!(_loc2_ && _loc1_))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         var _loc2_:PlayfieldExpansionBuyVo = PlayfieldExpansionBuyVo(param1.getBody());
         if(_loc4_)
         {
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_EXPAND,_loc2_);
         }
      }
   }
}

