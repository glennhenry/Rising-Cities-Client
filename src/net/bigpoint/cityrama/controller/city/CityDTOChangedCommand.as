package net.bigpoint.cityrama.controller.city
{
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.CityProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ResourceDTO;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CityDTOChangedCommand extends SimpleCommand implements ICommand
   {
      
      public function CityDTOChangedCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:CityProxy = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
         var _loc3_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         var _loc4_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc5_:PlayfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         _loc3_.worker = ResourceDTO(_loc2_.city.resources[_loc4_.resourcesIds[ServerResConst.RESOURCE_WORKERS]]).amount;
         if(ResourceDTO(_loc2_.city.resources[_loc4_.resourcesIds[ServerResConst.RESOURCE_RICHMEN]]))
         {
            _loc3_.richMen = ResourceDTO(_loc2_.city.resources[_loc4_.resourcesIds[ServerResConst.RESOURCE_RICHMEN]]).amount;
         }
         if(ResourceDTO(_loc2_.city.resources[_loc4_.resourcesIds[ServerResConst.RESOURCE_ACADEMICS]]))
         {
            _loc3_.academics = ResourceDTO(_loc2_.city.resources[_loc4_.resourcesIds[ServerResConst.RESOURCE_ACADEMICS]]).amount;
         }
         _loc5_.happynessConsumed = ResourceDTO(_loc2_.city.resources[_loc4_.resourcesIds[ServerResConst.RESOURCE_HAPPINESS_NEGATIVE]]).amount;
         _loc5_.happynessProduced = ResourceDTO(_loc2_.city.resources[_loc4_.resourcesIds[ServerResConst.RESOURCE_HAPPINESS_POSITIVE]]).amount;
         _loc5_.energyConsumed = ResourceDTO(_loc2_.city.resources[_loc4_.resourcesIds[ServerResConst.RESOURCE_ENERGY_NEGATIVE]]).amount;
         _loc5_.energyProduced = ResourceDTO(_loc2_.city.resources[_loc4_.resourcesIds[ServerResConst.RESOURCE_ENERGY_POSITIVE]]).amount;
      }
   }
}

