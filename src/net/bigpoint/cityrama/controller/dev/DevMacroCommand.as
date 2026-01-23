package net.bigpoint.cityrama.controller.dev
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.events.ExpansionSaleEventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldExpansionsProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.vo.ExpansionFieldObjectVo;
   import net.bigpoint.cityrama.model.field.vo.PlayfieldExpansionBuyVo;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class DevMacroCommand extends SimpleCommand
   {
      
      public static const INSTANT_BUILD_ALL:uint = 1;
      
      public static const INAGURATE_ALL:uint = 2;
      
      public static const DELETE_ALL_BOULDER:uint = 3;
      
      public static const REPAIR_ALL:uint = 4;
      
      public static const UNLOCK_ALL_EXPANSIONS:uint = 5;
      
      private var _playfieldObjects:PlayfieldObjectsProxy;
      
      private var _playfieldExpansionsProxy:PlayfieldExpansionsProxy;
      
      private var _expansionSaleProxy:ExpansionSaleEventProxy;
      
      public function DevMacroCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
      }
      
      private function unlockEpansionRecursive() : void
      {
         var _loc2_:ExpansionFieldObjectVo = null;
         var _loc1_:int = 0;
         for each(_loc2_ in this._playfieldExpansionsProxy.validExpansionsInactive)
         {
            if(this._playfieldExpansionsProxy.isBuyableExpansions(_loc2_.configPlayfieldItemVo.id))
            {
               _loc1_++;
               TweenMax.delayedCall(_loc1_,this.sendBuyExpansion,[_loc2_]);
            }
         }
         if(_loc1_ != 0)
         {
            TweenMax.delayedCall(1 + _loc1_,this.unlockEpansionRecursive);
         }
         else
         {
            sendNotification(ApplicationNotificationConstants.QM_CONSOLE_TRACE,"PlayfieldExpand finished");
         }
      }
      
      private function sendBuyExpansion(param1:ExpansionFieldObjectVo) : void
      {
         var _loc2_:PlayfieldExpansionBuyVo = new PlayfieldExpansionBuyVo();
         _loc2_.cpe = param1.configPlayfieldItemVo.id;
         _loc2_.pp = true;
         sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["rc",this._expansionSaleProxy.getRCExpansionCosts(param1.configOrigin)]);
         sendNotification(ApplicationNotificationConstants.BUY_PLAYFIELD_EXTENSION,_loc2_);
      }
   }
}

