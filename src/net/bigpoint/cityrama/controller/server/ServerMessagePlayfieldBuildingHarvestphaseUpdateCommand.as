package net.bigpoint.cityrama.controller.server
{
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.RandomHarvestPhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IBuildUpManagerImplementation;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBuildingHarvestphaseUpdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldBuildingHarvestphaseUpdateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:ConfigPhaseDTO = null;
         var _loc7_:Object = null;
         var _loc8_:PhaseDTO = null;
         var _loc9_:PhaseDTO = null;
         var _loc10_:Vector.<PhaseDTO> = null;
         var _loc11_:int = 0;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:BillboardObject = _loc3_.getBillboardById(_loc2_.json.bid);
         var _loc5_:Vector.<PhaseDTO> = new Vector.<PhaseDTO>();
         if(_loc4_)
         {
            if(_loc2_.json.upc)
            {
               _loc4_.billboardObjectVo.buildingDTO.upgradeCount = _loc2_.json.upc;
            }
            for each(_loc7_ in _loc2_.json.ph)
            {
               for each(_loc6_ in _loc4_.billboardObjectVo.configPlayfieldItemVo.activePhases)
               {
                  if(_loc6_.phaseId == _loc7_.pid)
                  {
                     if(_loc6_.phaseType == ServerPhaseTypes.RANDOM_REWARD_HARVEST)
                     {
                        _loc5_.push(new RandomHarvestPhaseDTO(_loc7_,_loc6_));
                     }
                     else
                     {
                        _loc5_.push(new PhaseDTO(_loc7_,_loc6_));
                     }
                  }
               }
               for each(_loc6_ in _loc4_.billboardObjectVo.configPlayfieldItemVo.constructionPhases)
               {
                  if(_loc6_.phaseId == _loc7_.pid)
                  {
                     _loc5_.push(new PhaseDTO(_loc7_,_loc6_));
                  }
               }
               for each(_loc6_ in _loc4_.billboardObjectVo.configPlayfieldItemVo.destructionPhases)
               {
                  if(_loc6_.phaseId == _loc7_.pid)
                  {
                     _loc5_.push(new PhaseDTO(_loc7_,_loc6_));
                  }
               }
            }
            for each(_loc8_ in _loc5_)
            {
               for each(_loc9_ in _loc4_.billboardObjectVo.activePhases)
               {
                  if(_loc9_.phaseId == _loc8_.phaseId)
                  {
                     _loc10_ = new Vector.<PhaseDTO>();
                     _loc11_ = 0;
                     while(_loc11_ < _loc4_.billboardObjectVo.activePhases.length)
                     {
                        if(_loc4_.billboardObjectVo.activePhases[_loc11_].phaseId != _loc9_.phaseId)
                        {
                           _loc10_.push(_loc4_.billboardObjectVo.activePhases[_loc11_]);
                        }
                        _loc11_++;
                     }
                     _loc4_.billboardObjectVo.activePhases = _loc10_;
                  }
               }
               _loc4_.billboardObjectVo.buildingDTO.activePhases.push(_loc8_);
            }
            if(_loc4_ is IBuildUpManagerImplementation)
            {
               (_loc4_ as IBuildUpManagerImplementation).invalidateBuildUpManager();
            }
            _loc4_.billboardObjectVo.userInteractionLocked = false;
            _loc4_.billboardObjectVo.invalidate();
            _loc4_.invalidateIconStateManager(false);
         }
      }
   }
}

