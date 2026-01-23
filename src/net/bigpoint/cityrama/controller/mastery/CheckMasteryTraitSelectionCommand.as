package net.bigpoint.cityrama.controller.mastery
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.model.field.PlayfieldInteractiveProxy;
   import net.bigpoint.cityrama.model.server.vo.server.MasteryBonusDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CheckMasteryTraitSelectionCommand extends SimpleCommand implements ICommand
   {
      
      public function CheckMasteryTraitSelectionCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:MasteryBonusDTO = null;
         var _loc2_:PlayfieldInteractiveProxy = PlayfieldInteractiveProxy(facade.retrieveProxy(PlayfieldInteractiveProxy.NAME));
         if(_loc2_.clickObject == null || !(_loc2_.clickObject is ResidentialFieldObject))
         {
            return;
         }
         var _loc3_:BillboardObject = BillboardObject(_loc2_.clickObject);
         if(_loc3_.billboardObjectVo.isReadyForMasteryTraitSelection)
         {
            _loc4_ = (_loc3_ as ResidentialFieldObject).residentialFieldObjectVo.buildingDTO.currentMasteryBonus;
            facade.sendNotification(ApplicationNotificationConstants.OPEN_MASTERY_TRAIT_SELECTION_LAYER,_loc4_.configBonusId);
         }
      }
   }
}

