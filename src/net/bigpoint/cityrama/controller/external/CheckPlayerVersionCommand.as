package net.bigpoint.cityrama.controller.external
{
   import com.greensock.TweenMax;
   import flash.system.Capabilities;
   import net.bigpoint.cityrama.constants.MiniLayerConstants;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CheckPlayerVersionCommand extends SimpleCommand
   {
      
      public function CheckPlayerVersionCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:String = Capabilities.version;
         var _loc3_:Array = _loc2_.split(",");
         var _loc4_:Array = _loc3_[0].split(" ");
         var _loc5_:Number = parseInt(_loc4_[1]);
         var _loc6_:Number = parseInt(_loc3_[1]);
         if(_loc5_ == 11)
         {
            if(_loc6_ >= 7)
            {
               return;
            }
            TweenMax.delayedCall(5,sendNotification,[MiniLayerConstants.OPEN_MINI_FLASH_PLAYER_UPDATE_PROMOTION]);
         }
      }
   }
}

