package net.bigpoint.cityrama.controller.server
{
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.field.PlayfieldProxy;
   import net.bigpoint.cityrama.model.player.PlayerProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.model.server.vo.server.ResourceDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessageResourcesCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessageResourcesCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:Object = null;
         var _loc7_:ResourceDTO = null;
         var _loc2_:Object = param1.getBody();
         var _loc3_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         var _loc4_:PlayfieldProxy = facade.retrieveProxy(PlayfieldProxy.NAME) as PlayfieldProxy;
         var _loc5_:PlayerProxy = facade.retrieveProxy(PlayerProxy.NAME) as PlayerProxy;
         for each(_loc6_ in _loc2_.json.res)
         {
            _loc7_ = ConfigFactory.buildResourceDTO(_loc6_);
            _loc5_.player.resources[_loc7_.config.id] = _loc7_;
            switch(_loc7_.config.type)
            {
               case ServerResConst.RESOURCE_ENERGY_NEGATIVE:
                  _loc4_.energyConsumed = _loc7_.amount;
                  break;
               case ServerResConst.RESOURCE_EXPERIENCE:
                  _loc3_.experience = _loc7_.amount;
                  break;
               case ServerResConst.RESOURCE_ENERGY_POSITIVE:
                  _loc4_.energyProduced = _loc7_.amount;
                  break;
               case ServerResConst.RESOURCE_HAPPINESS_NEGATIVE:
                  _loc4_.happynessConsumed = _loc7_.amount;
                  break;
               case ServerResConst.RESOURCE_HAPPINESS_POSITIVE:
                  _loc4_.happynessProduced = _loc7_.amount;
                  break;
               case ServerResConst.RESOURCE_VIRTUALCURRENCY:
                  _loc3_.ingameCurrency = _loc7_.amount;
                  break;
               case ServerResConst.RESOURCE_REALCURRENCY:
                  _loc3_.realCurrency = _loc7_.amount;
                  break;
               case ServerResConst.RESOURCE_PRODUCTIONPOINTS:
                  _loc3_.productionPoints = _loc7_.amount;
                  break;
               case ServerResConst.RESOURCE_EDUCATIONPOINTS:
                  _loc3_.educationPoints = _loc7_.amount;
                  break;
               case ServerResConst.RESOURCE_WORKERS:
                  _loc3_.worker = _loc7_.amount;
                  break;
               case ServerResConst.RESOURCE_ACADEMICS:
                  _loc3_.academics = _loc7_.amount;
                  break;
               case ServerResConst.RESOURCE_RICHMEN:
                  _loc3_.richMen = _loc7_.amount;
            }
         }
      }
   }
}

