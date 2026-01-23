package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerMessageConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.field.vo.BillboardObjectVo;
   import net.bigpoint.cityrama.model.field.vo.InfrastructureBuildingFieldObjectVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.ServerCommunicationProxy;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ClientMessageUpgradeInstant extends SimpleCommand implements ICommand
   {
      
      public function ClientMessageUpgradeInstant()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc5_:ConfigPhaseDTO = null;
         var _loc7_:ConfigPhaseDTO = null;
         var _loc8_:MessageVo = null;
         var _loc9_:BillboardObject = null;
         var _loc10_:ConfigPhaseDTO = null;
         var _loc11_:Vector.<ConfigOutputDTO> = null;
         var _loc12_:ConfigOutputDTO = null;
         var _loc2_:PlayfieldObjectsProxy = facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc3_:ServerCommunicationProxy = ServerCommunicationProxy(facade.retrieveProxy(ServerCommunicationProxy.NAME));
         var _loc4_:Object = new Object();
         var _loc6_:BillboardObjectVo = _loc2_.getBillboardById(Number(param1.getBody())).billboardObjectVo;
         _loc4_.bid = _loc6_.buildingDTO.id;
         for each(_loc7_ in _loc6_.configPlayfieldItemVo.activePhases)
         {
            if(_loc6_ is InfrastructureBuildingFieldObjectVo)
            {
               if(_loc7_.phaseType == ServerPhaseTypes.INSTANT_DEPARTMENT_UPGRADE)
               {
                  _loc4_.cpi = _loc7_.phaseId;
                  _loc5_ = _loc7_;
                  break;
               }
            }
            else if(_loc7_.phaseType == ServerPhaseTypes.INSTANT_UPGRADE)
            {
               _loc4_.cpi = _loc7_.phaseId;
               _loc5_ = _loc7_;
               break;
            }
         }
         _loc8_ = _loc3_.createMessage(_loc4_,ServerMessageConstants.PLAYFIELD_REQUEST_INSTANTFINISH);
         _loc3_.sendMessage(_loc8_);
         _loc9_ = _loc2_.getBillboardById(_loc6_.buildingDTO.id);
         if(_loc9_)
         {
            _loc10_ = new ConfigPhaseDTO(null);
            _loc11_ = new Vector.<ConfigOutputDTO>();
            for each(_loc12_ in _loc5_.listEntryOutputs)
            {
               if(_loc12_.resourceConfig)
               {
                  if(_loc12_.resourceConfig.type != ServerResConst.RESOURCE_REALCURRENCY)
                  {
                     _loc11_.push(_loc12_);
                  }
               }
            }
            _loc10_.listEntryOutputs = _loc11_;
            _loc6_.informationFloaterPhase = _loc10_;
            if(OptionsGlobalVariables.getInstance().showDropIcons)
            {
               if(_loc6_.informationFloaterPhase != null)
               {
                  facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                     "tO":_loc9_,
                     "cP":_loc6_.informationFloaterPhase
                  });
               }
            }
            _loc9_.invalidateInformationFloaterManager();
         }
      }
   }
}

