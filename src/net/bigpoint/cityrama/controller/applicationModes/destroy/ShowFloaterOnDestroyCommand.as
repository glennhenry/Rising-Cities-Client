package net.bigpoint.cityrama.controller.applicationModes.destroy
{
   import com.greensock.TweenMax;
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerNotificationConstants;
   import net.bigpoint.cityrama.model.field.vo.DecorationFieldObjectVo;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.buildings.DecorationFieldObject;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ShowFloaterOnDestroyCommand extends SimpleCommand implements ICommand
   {
      
      private var _billboardObject:BillboardObject;
      
      public function ShowFloaterOnDestroyCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc3_:ConfigOutputDTO = null;
         this._billboardObject = param1.getBody() as BillboardObject;
         var _loc2_:Number = 0;
         for each(_loc3_ in this._billboardObject.billboardObjectVo.informationFloaterPhase.listEntryOutputs)
         {
            if(this._billboardObject.billboardObjectVo.isUnderConstruction())
            {
               _loc2_ += 1;
               break;
            }
            _loc2_ += 1;
         }
         if(_loc2_ == 1)
         {
            _loc2_ -= 0.5;
         }
         var _loc4_:ConfigPhaseDTO = this._billboardObject.billboardObjectVo.informationFloaterPhase;
         this._billboardObject.invalidateInformationFloaterManager(true);
         if(OptionsGlobalVariables.getInstance().showDropIcons)
         {
            if(_loc4_ != null)
            {
               facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
                  "tO":this._billboardObject,
                  "cP":_loc4_
               });
            }
         }
         TweenMax.delayedCall(_loc2_,this.sendToServer);
      }
      
      private function sendToServer() : void
      {
         if(this._billboardObject is DecorationFieldObject)
         {
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_DECORATION_DELETE,DecorationFieldObjectVo(this._billboardObject.billboardObjectVo).decorationVo.id);
         }
         else
         {
            sendNotification(ServerNotificationConstants.CLIENT_MESSAGE_PLAYFIELD_BUILDING_DELETE,this._billboardObject.billboardObjectVo.buildingDTO.id);
         }
      }
   }
}

