package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.MysteryBuildingPhaseDTO;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.AcademyFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.MysteryBuildingFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldItemBoostPhaseUpdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldItemBoostPhaseUpdateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc6_:Object = null;
         var _loc7_:PhaseDTO = null;
         var _loc8_:PhaseDTO = null;
         var _loc9_:Vector.<PhaseDTO> = null;
         var _loc10_:int = 0;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:BillboardObject = BillboardObject(_loc3_.getBillboardById(_loc2_.json.bid));
         var _loc5_:Vector.<PhaseDTO> = new Vector.<PhaseDTO>();
         for each(_loc6_ in _loc2_.json.ph)
         {
            _loc5_.push(ConfigFactory.buildPhaseDTOForConfigPlayfieldItem(_loc6_,_loc4_.billboardObjectVo.configPlayfieldItemVo));
         }
         for each(_loc7_ in _loc4_.billboardObjectVo.activePhases)
         {
            for each(_loc8_ in _loc5_)
            {
               if(_loc7_.phaseId == _loc8_.phaseId)
               {
                  if(_loc8_ is MysteryBuildingPhaseDTO)
                  {
                     MysteryBuildingPhaseDTO(_loc8_).mysteryResultFieldItemSize = MysteryBuildingPhaseDTO(_loc7_).mysteryResultFieldItemSize;
                     MysteryBuildingPhaseDTO(_loc8_).mysteryResultFieldItemConfigId = MysteryBuildingPhaseDTO(_loc7_).mysteryResultFieldItemConfigId;
                  }
                  _loc9_ = new Vector.<PhaseDTO>();
                  _loc10_ = 0;
                  while(_loc10_ < _loc4_.billboardObjectVo.activePhases.length)
                  {
                     if(_loc4_.billboardObjectVo.activePhases[_loc10_].phaseId != _loc7_.phaseId)
                     {
                        _loc9_.push(_loc4_.billboardObjectVo.activePhases[_loc10_]);
                     }
                     _loc10_++;
                  }
                  _loc4_.billboardObjectVo.activePhases = _loc9_;
                  _loc4_.billboardObjectVo.activePhases.push(_loc8_);
               }
            }
            _loc4_.billboardObjectVo.invalidate();
            _loc4_.invalidateIconStateManager(false);
            if(_loc4_ is ProductionFieldObject)
            {
               if((_loc4_ as ProductionFieldObject).productionFieldObjectVo.currentProductionPhase)
               {
                  if((_loc4_ as ProductionFieldObject).productionFieldObjectVo.currentProductionPhase == null)
                  {
                     (_loc4_ as ProductionFieldObject).productionFieldObjectVo.startProductionTime();
                  }
                  else
                  {
                     (_loc4_ as ProductionFieldObject).productionFieldObjectVo.updateProductionTime();
                  }
               }
               sendNotification(ApplicationNotificationConstants.PRODUCTION_BUILDING_STATE_CHANGED);
            }
            else if(_loc4_ is ResidentialFieldObject)
            {
               sendNotification(ApplicationNotificationConstants.RESIDENTIAL_BUILDING_STATE_CHANGED);
            }
            else if(_loc4_ is MysteryBuildingFieldObject)
            {
               sendNotification(ApplicationNotificationConstants.MYSTERY_BUILDING_STATE_CHANGED);
            }
            else if(_loc4_ is AcademyFieldObject)
            {
               sendNotification(ApplicationNotificationConstants.ACADEMY_STATE_CHANGED);
            }
         }
      }
   }
}

