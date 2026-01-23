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
         §§push(false);
         var _loc1_:Boolean = true;
         var _loc2_:* = §§pop();
         if(_loc1_)
         {
            super();
         }
      }
      
      override public function execute(param1:INotification) : void
      {
         var _temp_1:* = true;
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = _temp_1;
         var _loc2_:CityProxy = facade.retrieveProxy(CityProxy.NAME) as CityProxy;
         var _loc3_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         var _loc4_:GameConfigProxy = facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc5_:PlayfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         if(_loc7_)
         {
            _loc3_.worker = ResourceDTO(_loc2_.city.resources[_loc4_.resourcesIds[ServerResConst.RESOURCE_WORKERS]]).amount;
            if(!(_loc6_ && Boolean(this)))
            {
               if(ResourceDTO(_loc2_.city.resources[_loc4_.resourcesIds[ServerResConst.RESOURCE_RICHMEN]]))
               {
                  if(!_loc6_)
                  {
                     _loc3_.richMen = ResourceDTO(_loc2_.city.resources[_loc4_.resourcesIds[ServerResConst.RESOURCE_RICHMEN]]).amount;
                     if(_loc7_ || Boolean(_loc2_))
                     {
                        §§goto(addr0100);
                     }
                     §§goto(addr0128);
                  }
                  §§goto(addr01bb);
               }
               addr0100:
               if(ResourceDTO(_loc2_.city.resources[_loc4_.resourcesIds[ServerResConst.RESOURCE_ACADEMICS]]))
               {
                  if(!_loc6_)
                  {
                     addr0128:
                     _loc3_.academics = ResourceDTO(_loc2_.city.resources[_loc4_.resourcesIds[ServerResConst.RESOURCE_ACADEMICS]]).amount;
                     if(_loc7_ || Boolean(_loc3_))
                     {
                        §§goto(addr015b);
                     }
                     §§goto(addr0187);
                  }
               }
               §§goto(addr015b);
            }
            addr015b:
            _loc5_.happynessConsumed = ResourceDTO(_loc2_.city.resources[_loc4_.resourcesIds[ServerResConst.RESOURCE_HAPPINESS_NEGATIVE]]).amount;
            if(_loc7_)
            {
               addr0187:
               _loc5_.happynessProduced = ResourceDTO(_loc2_.city.resources[_loc4_.resourcesIds[ServerResConst.RESOURCE_HAPPINESS_POSITIVE]]).amount;
               if(_loc7_ || Boolean(_loc2_))
               {
                  _loc5_.energyConsumed = ResourceDTO(_loc2_.city.resources[_loc4_.resourcesIds[ServerResConst.RESOURCE_ENERGY_NEGATIVE]]).amount;
                  addr01bb:
                  if(!(_loc6_ && Boolean(param1)))
                  {
                     _loc5_.energyProduced = ResourceDTO(_loc2_.city.resources[_loc4_.resourcesIds[ServerResConst.RESOURCE_ENERGY_POSITIVE]]).amount;
                  }
               }
            }
            §§goto(addr0221);
         }
         addr0221:
      }
   }
}

