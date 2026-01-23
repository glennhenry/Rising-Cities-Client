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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_ || _loc2_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         §§push(false);
         var _loc9_:Boolean = true;
         var _loc10_:* = §§pop();
         var _loc2_:GameConfigProxy = GameConfigProxy(facade.retrieveProxy(GameConfigProxy.NAME));
         var _loc3_:PlayerProxy = PlayerProxy(facade.retrieveProxy(PlayerProxy.NAME));
         var _loc4_:PlayerResourceProxy = PlayerResourceProxy(facade.retrieveProxy(PlayerResourceProxy.NAME));
         var _loc5_:CityProxy = CityProxy(facade.retrieveProxy(CityProxy.NAME));
         var _loc6_:UserLevelProxy = UserLevelProxy(facade.retrieveProxy(UserLevelProxy.NAME));
         var _loc7_:InventoryProxy = InventoryProxy(facade.retrieveProxy(InventoryProxy.NAME));
         if(!(_loc10_ && Boolean(_loc2_)))
         {
            _loc5_.city = _loc3_.player.defaultCity;
            if(!(_loc10_ && Boolean(_loc2_)))
            {
               _loc7_.buildInventoryData();
               if(_loc9_ || Boolean(_loc2_))
               {
                  _loc6_.currentLevelId = _loc3_.player.configUserLevelId;
               }
            }
         }
         var _loc8_:ConfigUserLevelDTO = _loc6_.getNextFullLevel(_loc6_.currentLevelId);
         if(!_loc8_)
         {
            if(!(_loc10_ && Boolean(_loc2_)))
            {
               _loc8_ = _loc6_.getConfigByLevelId(_loc6_.currentLevelId);
               §§goto(addr0110);
            }
            §§goto(addr01fa);
         }
         addr0110:
         if(this.validateResources(_loc3_,_loc2_))
         {
            if(!(_loc10_ && Boolean(_loc2_)))
            {
               _loc4_.experience = ResourceDTO(_loc3_.player.resources[_loc2_.resourcesIds[ServerResConst.RESOURCE_EXPERIENCE]]).amount;
               if(!_loc10_)
               {
                  _loc4_.maxExperience = _loc8_.requiredXP;
                  if(_loc9_)
                  {
                     _loc4_.ingameCurrency = ResourceDTO(_loc3_.player.resources[_loc2_.resourcesIds[ServerResConst.RESOURCE_VIRTUALCURRENCY]]).amount;
                     if(!(_loc10_ && Boolean(param1)))
                     {
                        addr01a5:
                        _loc4_.realCurrency = ResourceDTO(_loc3_.player.resources[_loc2_.resourcesIds[ServerResConst.RESOURCE_REALCURRENCY]]).amount;
                        if(!(_loc10_ && Boolean(param1)))
                        {
                           _loc4_.userLevel = _loc2_.getLevelById(_loc3_.player.configUserLevelId).level;
                           if(_loc9_ || Boolean(_loc3_))
                           {
                              addr01fa:
                              _loc4_.productionPoints = ResourceDTO(_loc3_.player.resources[_loc2_.resourcesIds[ServerResConst.RESOURCE_PRODUCTIONPOINTS]]).amount;
                              if(!_loc10_)
                              {
                                 if(_loc3_.player.resources[_loc2_.resourcesIds[ServerResConst.RESOURCE_EDUCATIONPOINTS]])
                                 {
                                    if(!(_loc10_ && Boolean(param1)))
                                    {
                                       _loc4_.educationPoints = ResourceDTO(_loc3_.player.resources[_loc2_.resourcesIds[ServerResConst.RESOURCE_EDUCATIONPOINTS]]).amount;
                                       addr024d:
                                       if(_loc10_ && Boolean(_loc2_))
                                       {
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr029f);
                        }
                     }
                  }
                  §§goto(addr024d);
               }
               §§goto(addr01a5);
            }
         }
         else
         {
            TweenMax.delayedCall(5,sendNotification,[ApplicationNotificationConstants.CONNECTION_LOST]);
         }
         addr029f:
      }
      
      private function validateResources(param1:PlayerProxy, param2:GameConfigProxy) : Boolean
      {
         var _temp_1:* = true;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = _temp_1;
         var _loc5_:String = null;
         var _loc3_:Boolean = true;
         var _loc4_:Vector.<String> = new <String>[ServerResConst.RESOURCE_EXPERIENCE,ServerResConst.RESOURCE_VIRTUALCURRENCY,ServerResConst.RESOURCE_REALCURRENCY,ServerResConst.RESOURCE_PRODUCTIONPOINTS];
         var _loc6_:int = 0;
         var _loc7_:* = _loc4_;
         do
         {
            for each(_loc5_ in _loc7_)
            {
               if(_loc9_ || Boolean(param2))
               {
                  if(param1.player.resources[param2.resourcesIds[_loc5_]] != null)
                  {
                     continue;
                  }
                  if(_loc8_ && _loc3_)
                  {
                     break;
                  }
               }
               _loc3_ = false;
            }
            return _loc3_;
         }
         while(!_loc9_);
         
         §§push(§§findproperty(RamaCityError));
         §§push("Data validation error: Mandatory resource at player is missing :");
         if(_loc9_)
         {
            §§push(§§pop() + _loc5_);
         }
         throw new §§pop().RamaCityError(§§pop());
      }
   }
}

