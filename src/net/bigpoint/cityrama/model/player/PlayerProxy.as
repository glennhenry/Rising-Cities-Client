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
      
      private var _player:PlayerDTO;
      
      private var _cityproxy:CityProxy;
      
      public function PlayerProxy(param1:String = null, param2:Object = null)
      {
         super(param1,param2);
      }
      
      override public function onRegister() : void
      {
         this._cityproxy = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
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
         if(!RandomUtilities.isEqual(param1,this._player))
         {
            this._player = param1;
            sendNotification(ApplicationNotificationConstants.PLAYER_DATA_CHANGED);
         }
      }
      
      public function isPremium() : Boolean
      {
         var _loc1_:PlayerPaymentPackDTO = null;
         for each(_loc1_ in this._player.playerPaymentPackInfo.purchasedPaymentPacks)
         {
            if(_loc1_.config.type == ServerPaymentPackConst.PREMIUMPACK_A)
            {
               return true;
            }
         }
         return false;
      }
   }
}

