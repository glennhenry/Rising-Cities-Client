package net.bigpoint.cityrama.controller.residentSelection
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerResConst;
   import net.bigpoint.cityrama.model.architecturalBook.ArchitecturalBookProxy;
   import net.bigpoint.cityrama.model.player.PlayerResourceProxy;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.ResidentialFieldObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class CheckResidentSelectionCommand extends SimpleCommand implements ICommand
   {
      
      public function CheckResidentSelectionCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc4_:String = null;
         var _loc2_:ResidentialFieldObject = param1.getBody() as ResidentialFieldObject;
         var _loc3_:PlayerResourceProxy = facade.retrieveProxy(PlayerResourceProxy.NAME) as PlayerResourceProxy;
         if(_loc3_.moreThanOnePopulationTypeEnabled)
         {
            sendNotification(ApplicationNotificationConstants.OPEN_RESIDENT_SELECTION,_loc2_);
         }
         else
         {
            _loc4_ = ServerResConst.RESOURCE_WORKERS;
            if(_loc2_.billboardObjectVo.configPlayfieldItemVo.residents.length > 1)
            {
               _loc2_.billboardObjectVo.configPlayfieldItemVo.residents.sort(ArchitecturalBookProxy.sortResidents);
               _loc4_ = _loc2_.billboardObjectVo.configPlayfieldItemVo.residents[0].type;
            }
            sendNotification(ApplicationNotificationConstants.RESIDENT_SELECTED,{
               "type":_loc4_,
               "resident":_loc2_
            });
         }
      }
   }
}

