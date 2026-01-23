package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldProductionHarvestSuccessCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldProductionHarvestSuccessCommand()
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
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = _temp_1;
         var _loc6_:PhaseDTO = null;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:ProductionFieldObject = ProductionFieldObject(_loc3_.getBillboardById(_loc2_.json.bid));
         var _loc5_:Vector.<PhaseDTO> = new Vector.<PhaseDTO>();
         for each(_loc6_ in _loc4_.billboardObjectVo.activePhases)
         {
            if(_loc6_.config.phaseType != ServerPhaseTypes.PRODUCTION)
            {
               if(_loc10_)
               {
                  _loc5_.push(_loc6_);
               }
            }
         }
         if(!(_loc9_ && Boolean(param1)))
         {
            _loc4_.billboardObjectVo.buildingDTO.activePhases = _loc5_;
            if(!_loc9_)
            {
               _loc4_.billboardObjectVo.userInteractionLocked = false;
               if(!_loc9_)
               {
                  _loc4_.productionFieldObjectVo.stopProductionTime();
                  if(_loc10_ || Boolean(_loc3_))
                  {
                     _loc4_.invalidateProductionSlotManager();
                     if(!_loc9_)
                     {
                        _loc4_.billboardObjectVo.invalidate();
                        if(!_loc9_)
                        {
                           addr0120:
                           _loc4_.invalidateIconStateManager();
                           if(_loc10_)
                           {
                              addr012c:
                              _loc4_.billboardObjectVo.buildingDTO.upgradeCount += 1;
                           }
                        }
                        §§goto(addr0143);
                     }
                     §§goto(addr0120);
                  }
                  §§goto(addr012c);
               }
               addr0143:
               return;
            }
         }
         §§goto(addr012c);
      }
   }
}

