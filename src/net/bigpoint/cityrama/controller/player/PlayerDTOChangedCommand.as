package net.bigpoint.cityrama.controller.player
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.errorHandling.errors.RamaCityError;
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.UserLevelProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.inventory.InventoryProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigUserLevelDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ResourceDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class PlayerDTOChangedCommand extends SimpleCommand implements ICommand
   {
      
      public function PlayerDTOChangedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:GameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         var _loc3_:PlayerProxy = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
         var _loc4_:PlayerResourceProxy = PlayerResourceProxy(facade.retrieveProxy(PlayerResourceProxy.NAME));
         var _loc5_:CityProxy = CityProxy(facade.retrieveProxy(CityProxy.NAME));
         var _loc6_:UserLevelProxy = UserLevelProxy(facade.retrieveProxy(UserLevelProxy.NAME));
         var _loc7_:InventoryProxy = InventoryProxy(facade.retrieveProxy(InventoryProxy.NAME));
         _loc5_.city = _loc3_.player.defaultCity;
         _loc7_.buildInventoryData();
         _loc6_.currentLevelId = _loc3_.player.configUserLevelId;
         var _loc8_:ConfigUserLevelDTO = _loc6_.getNextFullLevel(_loc6_.currentLevelId);
         if(!_loc8_)
         {
            _loc8_ = _loc6_.getConfigByLevelId(_loc6_.currentLevelId);
         }
         if(this.validateResources(_loc3_,_loc2_))
         {
            _loc4_.experience = ResourceDTO(_loc3_.player.resources[_loc2_.resourcesIds[ServerResConst.RESOURCE_EXPERIENCE]]).amount;
            _loc4_.maxExperience = _loc8_.requiredXP;
            _loc4_.ingameCurrency = ResourceDTO(_loc3_.player.resources[_loc2_.resourcesIds[ServerResConst.RESOURCE_VIRTUALCURRENCY]]).amount;
            _loc4_.realCurrency = ResourceDTO(_loc3_.player.resources[_loc2_.resourcesIds[ServerResConst.RESOURCE_REALCURRENCY]]).amount;
            _loc4_.userLevel = _loc2_.getLevelById(_loc3_.player.configUserLevelId).level;
            _loc4_.productionPoints = ResourceDTO(_loc3_.player.resources[_loc2_.resourcesIds[ServerResConst.RESOURCE_PRODUCTIONPOINTS]]).amount;
            if(_loc3_.player.resources[_loc2_.resourcesIds[ServerResConst.RESOURCE_EDUCATIONPOINTS]])
            {
               _loc4_.educationPoints = ResourceDTO(_loc3_.player.resources[_loc2_.resourcesIds[ServerResConst.RESOURCE_EDUCATIONPOINTS]]).amount;
            }
         }
         else
         {
            TweenMax.delayedCall(5,sendNotification,[ApplicationNotificationConstants.CONNECTION_LOST]);
         }
      }
      
      private function validateResources(param1:PlayerProxy, param2:GameConfigProxy) : Boolean
      {
         var _loc5_:String = null;
         var _loc3_:Boolean = true;
         var _loc4_:Vector.<String> = new <String>[ServerResConst.RESOURCE_EXPERIENCE,ServerResConst.RESOURCE_VIRTUALCURRENCY,ServerResConst.RESOURCE_REALCURRENCY,ServerResConst.RESOURCE_PRODUCTIONPOINTS];
         for each(_loc5_ in _loc4_)
         {
            if(param1.player.resources[param2.resourcesIds[_loc5_]] == null)
            {
               _loc3_ = false;
               throw new RamaCityError("Data validation error: Mandatory resource at player is missing :" + _loc5_);
            }
         }
         return _loc3_;
      }
   }
}

