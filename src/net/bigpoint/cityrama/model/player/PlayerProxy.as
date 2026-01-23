package net.bigpoint.cityrama.model.player
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPaymentPackConst;
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PlayerPaymentPackDTO;
   import net.bigpoint.util.RandomUtilities;
   import org.puremvc.as3.patterns.proxy.Proxy;
   
   public class PlayerProxy extends Proxy
   {
      
      public static const NAME:String = "PlayerProxy";
      
      var _temp_1:* = true;
      var _loc1_:Boolean = false;
      var _loc2_:Boolean = _temp_1;
      if(_loc2_ || PlayerProxy)
      {
         NAME = "PlayerProxy";
      }
      
      private var _player:PlayerDTO;
      
      private var _cityproxy:CityProxy;
      
      public function PlayerProxy(param1:String = null, param2:Object = null)
      {
         var _temp_1:* = true;
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = _temp_1;
         if(!(_loc3_ && Boolean(param2)))
         {
            super(param1,param2);
         }
      }
      
      override public function onRegister() : void
      {
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            this._cityproxy = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
         }
      }
      
      override public function onRemove() : void
      {
      }
      
      public function get player() : PlayerDTO
      {
         return this._player;
      }
      
      public function set player(param1:PlayerDTO) : void
      {
         §§push(false);
         var _loc2_:Boolean = true;
         var _loc3_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            if(!RandomUtilities.isEqual(param1,this._player))
            {
               if(!(_loc3_ && Boolean(this)))
               {
                  addr0053:
                  this._player = param1;
                  if(!(_loc3_ && _loc3_))
                  {
                     addr0065:
                     sendNotification(ApplicationNotificationConstants.PLAYER_DATA_CHANGED);
                  }
                  §§goto(addr0070);
               }
               §§goto(addr0065);
            }
            addr0070:
            return;
         }
         §§goto(addr0053);
      }
      
      public function isPremium() : Boolean
      {
         §§push(false);
         var _loc4_:Boolean = true;
         var _loc5_:* = §§pop();
         var _loc1_:PlayerPaymentPackDTO = null;
         var _loc2_:int = 0;
         var _loc3_:* = this._player.playerPaymentPackInfo.purchasedPaymentPacks;
         while(true)
         {
            for each(_loc1_ in _loc3_)
            {
               if(_loc5_)
               {
                  break;
               }
               if(_loc1_.config.type == ServerPaymentPackConst.PREMIUMPACK_A)
               {
                  if(_loc4_)
                  {
                     break;
                  }
               }
            }
            return false;
         }
         return true;
      }
   }
}

