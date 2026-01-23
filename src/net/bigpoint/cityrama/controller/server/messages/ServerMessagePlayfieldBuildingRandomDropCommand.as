package net.bigpoint.cityrama.controller.server.messages
{
   import net.bigpoint.cityrama.constants.ApplicationNotificationConstants;
   import net.bigpoint.cityrama.constants.ServerPhaseTypes;
   import net.bigpoint.cityrama.model.events.EventProxy;
   import net.bigpoint.cityrama.model.field.PlayfieldObjectsProxy;
   import net.bigpoint.cityrama.model.game.GameConfigProxy;
   import net.bigpoint.cityrama.model.optionsMenu.OptionsGlobalVariables;
   import net.bigpoint.cityrama.model.server.vo.MessageVo;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigOutputDTO;
   import net.bigpoint.cityrama.model.server.vo.server.ConfigPhaseDTO;
   import net.bigpoint.cityrama.view.field.ui.components.fieldObjects.BillboardObject;
   import net.bigpoint.cityrama.view.field.ui.components.interfaces.IEventDrop;
   import org.puremvc.as3.interfaces.ICommand;
   import org.puremvc.as3.interfaces.INotification;
   import org.puremvc.as3.patterns.command.SimpleCommand;
   
   public class ServerMessagePlayfieldBuildingRandomDropCommand extends SimpleCommand implements ICommand
   {
      
      public function ServerMessagePlayfieldBuildingRandomDropCommand()
      {
         super();
      }
      
      override public function execute(param1:INotification) : void
      {
         var _loc2_:MessageVo = MessageVo(param1.getBody());
         var _loc3_:ConfigOutputDTO = new ConfigOutputDTO(_loc2_.json.co);
         var _loc4_:GameConfigProxy = super.facade.retrieveProxy(GameConfigProxy.NAME) as GameConfigProxy;
         var _loc5_:PlayfieldObjectsProxy = super.facade.retrieveProxy(PlayfieldObjectsProxy.NAME) as PlayfieldObjectsProxy;
         var _loc6_:BillboardObject = _loc5_.getBillboardById(_loc2_.json.bid);
         var _loc7_:ConfigPhaseDTO = new ConfigPhaseDTO({"t":ServerPhaseTypes.CLIENTSIDE_VIRTUAL});
         _loc3_.goodConfig = _loc4_.goods[_loc3_.configId];
         _loc7_.listEntryOutputs = new <ConfigOutputDTO>[_loc3_];
         _loc6_.billboardObjectVo.informationFloaterPhase = _loc7_;
         if(_loc6_.billboardObjectVo is IEventDrop)
         {
            var _loc8_:EventProxy = facade.retrieveProxy(EventProxy.NAME) as EventProxy;
            (_loc6_.billboardObjectVo as IEventDrop).currentEventLocaleId = null.currentRunningEventQuestLocaleId;
         }
         _loc6_.invalidateInformationFloaterManager();
         if(OptionsGlobalVariables.getInstance().showDropIcons)
         {
            facade.sendNotification(ApplicationNotificationConstants.EVALUATE_DROPS,{
               "tO":_loc6_,
               "cP":_loc7_
            });
         }
      }
   }
}

