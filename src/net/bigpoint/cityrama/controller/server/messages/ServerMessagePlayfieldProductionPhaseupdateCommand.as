package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.PhaseDTO;
   import net.bigpoint.cityrama.model.vo.ConfigFactory;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ProductionFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldProductionPhaseupdateCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldProductionPhaseupdateCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc7_:Object = null;
         var _loc8_:PhaseDTO = null;
         var _loc9_:PhaseDTO = null;
         var _loc10_:Vector.<PhaseDTO> = null;
         var _loc11_:int = 0;
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc4_:ProductionFieldObject = ProductionFieldObject(_loc3_.getBillboardById(_loc2_.json.bid));
         var _loc5_:Vector.<PhaseDTO> = new Vector.<PhaseDTO>();
         var _loc6_:Boolean = true;
         if(_loc4_.productionFieldObjectVo.currentProductionPhase != null)
         {
            _loc6_ = false;
         }
         for each(_loc7_ in _loc2_.json.ph)
         {
            _loc5_.push(ConfigFactory.buildPhaseDTOForConfigPlayfieldItem(_loc7_,_loc4_.billboardObjectVo.configPlayfieldItemVo));
         }
         for each(_loc8_ in _loc4_.billboardObjectVo.activePhases)
         {
            for each(_loc9_ in _loc5_)
            {
               if(_loc8_.phaseId == _loc9_.phaseId)
               {
                  _loc10_ = new Vector.<PhaseDTO>();
                  _loc11_ = 0;
                  while(_loc11_ < _loc4_.billboardObjectVo.activePhases.length)
                  {
                     if(_loc4_.billboardObjectVo.activePhases[_loc11_].phaseId != _loc8_.phaseId)
                     {
                        _loc10_.push(_loc4_.billboardObjectVo.activePhases[_loc11_]);
                     }
                     _loc11_++;
                  }
                  _loc4_.billboardObjectVo.activePhases = _loc10_;
               }
               _loc4_.billboardObjectVo.buildingDTO.activePhases.push(_loc9_);
            }
         }
         if(_loc4_.billboardObjectVo.activePhases.length == 0)
         {
            _loc4_.billboardObjectVo.activePhases = _loc5_;
         }
         if(_loc6_)
         {
            _loc4_.productionFieldObjectVo.startProductionTime();
         }
         _loc4_.billboardObjectVo.invalidate();
         _loc4_.invalidateIconStateManager(false);
         sendNotification(ApplicationNotificationConstants.PRODUCTION_BUILDING_STATE_CHANGED);
      }
   }
}

