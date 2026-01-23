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
      
      §§push(false);
      var _loc1_:Boolean = true;
      var _loc2_:* = §§pop();
      if(_loc1_)
      {
         INSTANT_BUILD_ALL = 1;
         if(!_loc2_)
         {
            INAGURATE_ALL = 2;
            if(!_loc2_)
            {
               DELETE_ALL_BOULDER = 3;
               if(!(_loc2_ && _loc2_))
               {
                  addr004e:
                  REPAIR_ALL = 4;
                  if(_loc1_)
                  {
                     addr005b:
                     UNLOCK_ALL_EXPANSIONS = 5;
                  }
               }
               §§goto(addr0063);
            }
            §§goto(addr004e);
         }
         §§goto(addr005b);
      }
      addr0063:
      
      private var _playfieldObjects:PlayfieldObjectsProxy;
      
      private var _playfieldExpansionsProxy:PlayfieldExpansionsProxy;
      
      private var _expansionSaleProxy:ExpansionSaleEventProxy;
      
      public function DevMacroCommand()
      {
         var _temp_1:* = true;
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = _temp_1;
         if(_loc2_ || Boolean(this))
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
      }
      
      private function unlockEpansionRecursive() : void
      {
         var _temp_1:* = true;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = _temp_1;
         var _loc2_:ExpansionFieldObjectVo = null;
         var _loc1_:int = 0;
         var _loc3_:int = 0;
         for each(_loc2_ in this._playfieldExpansionsProxy.validExpansionsInactive)
         {
            if(_loc6_ || Boolean(_loc3_))
            {
               if(!this._playfieldExpansionsProxy.isBuyableExpansions(_loc2_.configPlayfieldItemVo.id))
               {
                  continue;
               }
               if(_loc6_)
               {
                  _loc1_++;
                  if(!_loc6_)
                  {
                     continue;
                  }
               }
            }
            TweenMax.delayedCall(_loc1_,this.sendBuyExpansion,[_loc2_]);
         }
         if(_loc6_)
         {
            if(_loc1_ != 0)
            {
               if(!(_loc5_ && Boolean(this)))
               {
                  addr00b4:
                  TweenMax.delayedCall(1 + _loc1_,this.unlockEpansionRecursive);
                  if(_loc5_)
                  {
                  }
               }
            }
            else
            {
               sendNotification(ApplicationNotificationConstants.QM_CONSOLE_TRACE,"PlayfieldExpand finished");
            }
            return;
         }
         §§goto(addr00b4);
      }
      
      private function sendBuyExpansion(param1:ExpansionFieldObjectVo) : void
      {
         §§push(false);
         var _loc3_:Boolean = true;
         var _loc4_:* = §§pop();
         var _loc2_:PlayfieldExpansionBuyVo = new PlayfieldExpansionBuyVo();
         if(_loc3_)
         {
            _loc2_.cpe = param1.configPlayfieldItemVo.id;
            if(!(_loc4_ && Boolean(this)))
            {
               _loc2_.pp = true;
               if(_loc3_ || Boolean(this))
               {
                  addr0061:
                  sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_TEST,["rc",this._expansionSaleProxy.getRCExpansionCosts(param1.configOrigin)]);
                  if(_loc3_ || Boolean(this))
                  {
                     sendNotification(ApplicationNotificationConstants.BUY_PLAYFIELD_EXTENSION,_loc2_);
                  }
               }
            }
            return;
         }
         §§goto(addr0061);
      }
   }
}

